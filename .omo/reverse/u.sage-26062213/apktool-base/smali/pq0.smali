.class public final Lpq0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:Landroid/view/ViewGroup;

.field public final b:Ljava/util/ArrayList;

.field public final c:Ljava/util/ArrayList;

.field public d:Z

.field public e:Z


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lpq0;->b:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lpq0;->c:Ljava/util/ArrayList;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lpq0;->d:Z

    .line 20
    .line 21
    iput-boolean v0, p0, Lpq0;->e:Z

    .line 22
    .line 23
    iput-object p1, p0, Lpq0;->a:Landroid/view/ViewGroup;

    .line 24
    .line 25
    return-void
.end method

.method public static a(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 4

    .line 1
    instance-of v0, p0, Landroid/view/ViewGroup;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    check-cast v0, Landroid/view/ViewGroup;

    .line 7
    .line 8
    sget v1, Lqb4;->a:I

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/ViewGroup;->isTransitionGroup()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-nez p0, :cond_3

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    const/4 v1, 0x0

    .line 31
    :goto_0
    if-ge v1, p0, :cond_3

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-nez v3, :cond_1

    .line 42
    .line 43
    invoke-static {v2, p1}, Lpq0;->a(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_3

    .line 54
    .line 55
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    :cond_3
    return-void
.end method

.method public static e(Ldi;Landroid/view/View;)V
    .locals 4

    .line 1
    sget-object v0, Llb4;->a:Ljava/lang/reflect/Field;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, v0, p1}, Lwm3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    check-cast p1, Landroid/view/ViewGroup;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x0

    .line 23
    :goto_0
    if-ge v1, v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-nez v3, :cond_1

    .line 34
    .line 35
    invoke-static {p0, v2}, Lpq0;->e(Ldi;Landroid/view/View;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    return-void
.end method

.method public static h(Landroid/view/ViewGroup;Lb21;)Lpq0;
    .locals 3

    .line 1
    const v0, 0x7f0900ad

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    instance-of v2, v1, Lpq0;

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    check-cast v1, Lpq0;

    .line 13
    .line 14
    return-object v1

    .line 15
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    new-instance p1, Lpq0;

    .line 19
    .line 20
    invoke-direct {p1, p0}, Lpq0;-><init>(Landroid/view/ViewGroup;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-object p1
.end method

.method public static i(Landroid/view/ViewGroup;Lhd1;)Lpq0;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lhd1;->E()Lb21;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p0, p1}, Lpq0;->h(Landroid/view/ViewGroup;Lb21;)Lpq0;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static k(Ldi;Ljava/util/Collection;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ldi;->entrySet()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lyh;

    .line 6
    .line 7
    invoke-virtual {p0}, Lyh;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    :cond_0
    :goto_0
    move-object v0, p0

    .line 12
    check-cast v0, Lbi;

    .line 13
    .line 14
    invoke-virtual {v0}, Lbi;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0}, Lbi;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-object v1, v0

    .line 24
    check-cast v1, Ljava/util/Map$Entry;

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Landroid/view/View;

    .line 31
    .line 32
    sget-object v2, Llb4;->a:Ljava/lang/reflect/Field;

    .line 33
    .line 34
    invoke-virtual {v1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-nez v1, :cond_0

    .line 43
    .line 44
    invoke-virtual {v0}, Lbi;->remove()V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    return-void
.end method


# virtual methods
.method public final b(IILpd1;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lpq0;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ls20;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iget-object v2, p3, Lpd1;->c:Llc1;

    .line 10
    .line 11
    invoke-virtual {p0, v2}, Lpq0;->f(Llc1;)Lpq3;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    invoke-virtual {v2, p1, p2}, Lpq3;->c(II)V

    .line 18
    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v2, Lpq3;

    .line 25
    .line 26
    invoke-direct {v2, p1, p2, p3, v1}, Lpq3;-><init>(IILpd1;Ls20;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lpq0;->b:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    new-instance p1, Loq3;

    .line 35
    .line 36
    const/4 p2, 0x0

    .line 37
    invoke-direct {p1, p0, v2, p2}, Loq3;-><init>(Lpq0;Lpq3;I)V

    .line 38
    .line 39
    .line 40
    iget-object p2, v2, Lpq3;->d:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    new-instance p1, Loq3;

    .line 46
    .line 47
    const/4 p2, 0x1

    .line 48
    invoke-direct {p1, p0, v2, p2}, Loq3;-><init>(Lpq0;Lpq3;I)V

    .line 49
    .line 50
    .line 51
    iget-object p0, v2, Lpq3;->d:Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    monitor-exit v0

    .line 57
    return-void

    .line 58
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    throw p0
.end method

.method public final c(Ljava/util/ArrayList;Z)V
    .locals 36

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const/4 v6, 0x0

    .line 12
    const/4 v7, 0x0

    .line 13
    const/4 v8, 0x0

    .line 14
    :cond_0
    :goto_0
    const/4 v9, 0x3

    .line 15
    const/4 v10, 0x2

    .line 16
    const/4 v11, 0x1

    .line 17
    if-ge v8, v3, :cond_3

    .line 18
    .line 19
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v12

    .line 23
    add-int/lit8 v8, v8, 0x1

    .line 24
    .line 25
    check-cast v12, Lpq3;

    .line 26
    .line 27
    iget-object v13, v12, Lpq3;->c:Llc1;

    .line 28
    .line 29
    iget-object v13, v13, Llc1;->mView:Landroid/view/View;

    .line 30
    .line 31
    invoke-static {v13}, Lxw1;->f(Landroid/view/View;)I

    .line 32
    .line 33
    .line 34
    move-result v13

    .line 35
    iget v14, v12, Lpq3;->a:I

    .line 36
    .line 37
    invoke-static {v14}, Ldi0;->F(I)I

    .line 38
    .line 39
    .line 40
    move-result v14

    .line 41
    if-eqz v14, :cond_2

    .line 42
    .line 43
    if-eq v14, v11, :cond_1

    .line 44
    .line 45
    if-eq v14, v10, :cond_2

    .line 46
    .line 47
    if-eq v14, v9, :cond_2

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    if-eq v13, v10, :cond_0

    .line 51
    .line 52
    move-object v7, v12

    .line 53
    goto :goto_0

    .line 54
    :cond_2
    if-ne v13, v10, :cond_0

    .line 55
    .line 56
    if-nez v6, :cond_0

    .line 57
    .line 58
    move-object v6, v12

    .line 59
    goto :goto_0

    .line 60
    :cond_3
    invoke-static {v10}, Lhd1;->G(I)Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    const-string v8, " to "

    .line 65
    .line 66
    const-string v12, "FragmentManager"

    .line 67
    .line 68
    if-eqz v3, :cond_4

    .line 69
    .line 70
    new-instance v3, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string v13, "Executing operations from "

    .line 73
    .line 74
    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-static {v12, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .line 97
    .line 98
    new-instance v13, Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .line 102
    .line 103
    new-instance v14, Ljava/util/ArrayList;

    .line 104
    .line 105
    invoke-direct {v14, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 109
    .line 110
    .line 111
    move-result v15

    .line 112
    sub-int/2addr v15, v11

    .line 113
    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v15

    .line 117
    check-cast v15, Lpq3;

    .line 118
    .line 119
    iget-object v15, v15, Lpq3;->c:Llc1;

    .line 120
    .line 121
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 122
    .line 123
    .line 124
    move-result v5

    .line 125
    move/from16 v17, v10

    .line 126
    .line 127
    const/4 v10, 0x0

    .line 128
    :goto_1
    if-ge v10, v5, :cond_5

    .line 129
    .line 130
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v18

    .line 134
    add-int/lit8 v10, v10, 0x1

    .line 135
    .line 136
    move-object/from16 v9, v18

    .line 137
    .line 138
    check-cast v9, Lpq3;

    .line 139
    .line 140
    iget-object v9, v9, Lpq3;->c:Llc1;

    .line 141
    .line 142
    iget-object v9, v9, Llc1;->mAnimationInfo:Lic1;

    .line 143
    .line 144
    iget-object v11, v15, Llc1;->mAnimationInfo:Lic1;

    .line 145
    .line 146
    iget v4, v11, Lic1;->b:I

    .line 147
    .line 148
    iput v4, v9, Lic1;->b:I

    .line 149
    .line 150
    iget v4, v11, Lic1;->c:I

    .line 151
    .line 152
    iput v4, v9, Lic1;->c:I

    .line 153
    .line 154
    iget v4, v11, Lic1;->d:I

    .line 155
    .line 156
    iput v4, v9, Lic1;->d:I

    .line 157
    .line 158
    iget v4, v11, Lic1;->e:I

    .line 159
    .line 160
    iput v4, v9, Lic1;->e:I

    .line 161
    .line 162
    const/4 v9, 0x3

    .line 163
    const/4 v11, 0x1

    .line 164
    goto :goto_1

    .line 165
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 166
    .line 167
    .line 168
    move-result v4

    .line 169
    const/4 v5, 0x0

    .line 170
    :goto_2
    if-ge v5, v4, :cond_8

    .line 171
    .line 172
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v9

    .line 176
    add-int/lit8 v5, v5, 0x1

    .line 177
    .line 178
    check-cast v9, Lpq3;

    .line 179
    .line 180
    new-instance v10, Ls20;

    .line 181
    .line 182
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v9}, Lpq3;->d()V

    .line 186
    .line 187
    .line 188
    iget-object v11, v9, Lpq3;->e:Ljava/util/HashSet;

    .line 189
    .line 190
    invoke-virtual {v11, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    new-instance v15, Lmq0;

    .line 194
    .line 195
    invoke-direct {v15, v9, v10}, Lnq0;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    const/4 v10, 0x0

    .line 199
    iput-boolean v10, v15, Lmq0;->d:Z

    .line 200
    .line 201
    iput-boolean v2, v15, Lmq0;->c:Z

    .line 202
    .line 203
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    new-instance v10, Ls20;

    .line 207
    .line 208
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v9}, Lpq3;->d()V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v11, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    new-instance v11, Loq0;

    .line 218
    .line 219
    if-eqz v2, :cond_7

    .line 220
    .line 221
    if-ne v9, v6, :cond_6

    .line 222
    .line 223
    :goto_3
    const/4 v15, 0x1

    .line 224
    goto :goto_4

    .line 225
    :cond_6
    const/4 v15, 0x0

    .line 226
    goto :goto_4

    .line 227
    :cond_7
    if-ne v9, v7, :cond_6

    .line 228
    .line 229
    goto :goto_3

    .line 230
    :goto_4
    invoke-direct {v11, v9, v10, v2, v15}, Loq0;-><init>(Lpq3;Ls20;ZZ)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    new-instance v10, Lrf1;

    .line 237
    .line 238
    const/4 v11, 0x1

    .line 239
    invoke-direct {v10, v0, v14, v9, v11}, Lrf1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 240
    .line 241
    .line 242
    iget-object v9, v9, Lpq3;->d:Ljava/util/ArrayList;

    .line 243
    .line 244
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    goto :goto_2

    .line 248
    :cond_8
    new-instance v1, Ljava/util/HashMap;

    .line 249
    .line 250
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 254
    .line 255
    .line 256
    move-result v4

    .line 257
    const/4 v5, 0x0

    .line 258
    const/4 v9, 0x0

    .line 259
    :goto_5
    if-ge v9, v4, :cond_10

    .line 260
    .line 261
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v10

    .line 265
    add-int/lit8 v9, v9, 0x1

    .line 266
    .line 267
    check-cast v10, Loq0;

    .line 268
    .line 269
    invoke-virtual {v10}, Lnq0;->f()Z

    .line 270
    .line 271
    .line 272
    move-result v11

    .line 273
    iget-object v15, v10, Lnq0;->a:Ljava/lang/Object;

    .line 274
    .line 275
    check-cast v15, Lpq3;

    .line 276
    .line 277
    iget-object v15, v15, Lpq3;->c:Llc1;

    .line 278
    .line 279
    move/from16 p1, v4

    .line 280
    .line 281
    iget-object v4, v10, Loq0;->c:Ljava/lang/Object;

    .line 282
    .line 283
    if-eqz v11, :cond_9

    .line 284
    .line 285
    move/from16 v4, p1

    .line 286
    .line 287
    goto :goto_5

    .line 288
    :cond_9
    invoke-virtual {v10, v4}, Loq0;->l(Ljava/lang/Object;)Lae1;

    .line 289
    .line 290
    .line 291
    move-result-object v11

    .line 292
    move/from16 v19, v9

    .line 293
    .line 294
    iget-object v9, v10, Loq0;->e:Ljava/lang/Object;

    .line 295
    .line 296
    invoke-virtual {v10, v9}, Loq0;->l(Ljava/lang/Object;)Lae1;

    .line 297
    .line 298
    .line 299
    move-result-object v10

    .line 300
    move-object/from16 v25, v8

    .line 301
    .line 302
    const-string v8, " returned Transition "

    .line 303
    .line 304
    move-object/from16 v26, v3

    .line 305
    .line 306
    const-string v3, "Mixing framework transitions and AndroidX transitions is not allowed. Fragment "

    .line 307
    .line 308
    if-eqz v11, :cond_b

    .line 309
    .line 310
    if-eqz v10, :cond_b

    .line 311
    .line 312
    if-ne v11, v10, :cond_a

    .line 313
    .line 314
    goto :goto_6

    .line 315
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 316
    .line 317
    new-instance v1, Ljava/lang/StringBuilder;

    .line 318
    .line 319
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    const-string v2, " which uses a different Transition  type than its shared element transition "

    .line 332
    .line 333
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v1

    .line 343
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    throw v0

    .line 347
    :cond_b
    :goto_6
    if-eqz v11, :cond_c

    .line 348
    .line 349
    goto :goto_7

    .line 350
    :cond_c
    move-object v11, v10

    .line 351
    :goto_7
    if-nez v5, :cond_d

    .line 352
    .line 353
    move-object v5, v11

    .line 354
    goto :goto_8

    .line 355
    :cond_d
    if-eqz v11, :cond_f

    .line 356
    .line 357
    if-ne v5, v11, :cond_e

    .line 358
    .line 359
    goto :goto_8

    .line 360
    :cond_e
    const-string v0, " which uses a different Transition  type than other Fragments."

    .line 361
    .line 362
    invoke-static {v3, v15, v8, v4, v0}, Lp61;->o(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 363
    .line 364
    .line 365
    return-void

    .line 366
    :cond_f
    :goto_8
    move/from16 v4, p1

    .line 367
    .line 368
    move/from16 v9, v19

    .line 369
    .line 370
    move-object/from16 v8, v25

    .line 371
    .line 372
    move-object/from16 v3, v26

    .line 373
    .line 374
    goto :goto_5

    .line 375
    :cond_10
    move-object/from16 v26, v3

    .line 376
    .line 377
    move-object/from16 v25, v8

    .line 378
    .line 379
    iget-object v0, v0, Lpq0;->a:Landroid/view/ViewGroup;

    .line 380
    .line 381
    if-nez v5, :cond_12

    .line 382
    .line 383
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 384
    .line 385
    .line 386
    move-result v2

    .line 387
    const/4 v3, 0x0

    .line 388
    :goto_9
    if-ge v3, v2, :cond_11

    .line 389
    .line 390
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 391
    .line 392
    .line 393
    move-result-object v4

    .line 394
    add-int/lit8 v3, v3, 0x1

    .line 395
    .line 396
    check-cast v4, Loq0;

    .line 397
    .line 398
    iget-object v5, v4, Lnq0;->a:Ljava/lang/Object;

    .line 399
    .line 400
    check-cast v5, Lpq3;

    .line 401
    .line 402
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 403
    .line 404
    invoke-virtual {v1, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    .line 406
    .line 407
    invoke-virtual {v4}, Lnq0;->a()V

    .line 408
    .line 409
    .line 410
    goto :goto_9

    .line 411
    :cond_11
    move-object v5, v1

    .line 412
    move-object v13, v7

    .line 413
    move-object/from16 v33, v14

    .line 414
    .line 415
    const/4 v4, 0x0

    .line 416
    move-object v14, v12

    .line 417
    goto/16 :goto_37

    .line 418
    .line 419
    :cond_12
    new-instance v3, Landroid/view/View;

    .line 420
    .line 421
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 422
    .line 423
    .line 424
    move-result-object v4

    .line 425
    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 426
    .line 427
    .line 428
    new-instance v4, Landroid/graphics/Rect;

    .line 429
    .line 430
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 431
    .line 432
    .line 433
    new-instance v8, Ljava/util/ArrayList;

    .line 434
    .line 435
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 436
    .line 437
    .line 438
    new-instance v9, Ljava/util/ArrayList;

    .line 439
    .line 440
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 441
    .line 442
    .line 443
    new-instance v10, Ldi;

    .line 444
    .line 445
    const/4 v11, 0x0

    .line 446
    invoke-direct {v10, v11}, Lwm3;-><init>(I)V

    .line 447
    .line 448
    .line 449
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 450
    .line 451
    .line 452
    move-result v11

    .line 453
    move-object/from16 v33, v14

    .line 454
    .line 455
    const/16 p0, 0x0

    .line 456
    .line 457
    const/16 p1, 0x0

    .line 458
    .line 459
    const/4 v15, 0x0

    .line 460
    const/16 v27, 0x0

    .line 461
    .line 462
    :goto_a
    if-ge v15, v11, :cond_2d

    .line 463
    .line 464
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 465
    .line 466
    .line 467
    move-result-object v19

    .line 468
    add-int/lit8 v15, v15, 0x1

    .line 469
    .line 470
    move-object/from16 v14, v19

    .line 471
    .line 472
    check-cast v14, Loq0;

    .line 473
    .line 474
    iget-object v14, v14, Loq0;->e:Ljava/lang/Object;

    .line 475
    .line 476
    if-eqz v14, :cond_2c

    .line 477
    .line 478
    if-eqz v6, :cond_2c

    .line 479
    .line 480
    move/from16 v29, v11

    .line 481
    .line 482
    iget-object v11, v6, Lpq3;->c:Llc1;

    .line 483
    .line 484
    if-eqz v7, :cond_2b

    .line 485
    .line 486
    move-object/from16 v19, v14

    .line 487
    .line 488
    iget-object v14, v7, Lpq3;->c:Llc1;

    .line 489
    .line 490
    check-cast v19, Landroid/transition/Transition;

    .line 491
    .line 492
    move/from16 v30, v15

    .line 493
    .line 494
    invoke-virtual/range {v19 .. v19}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    .line 495
    .line 496
    .line 497
    move-result-object v15

    .line 498
    if-nez v15, :cond_13

    .line 499
    .line 500
    move-object/from16 v31, v13

    .line 501
    .line 502
    const/4 v13, 0x0

    .line 503
    goto :goto_b

    .line 504
    :cond_13
    move-object/from16 v31, v13

    .line 505
    .line 506
    new-instance v13, Landroid/transition/TransitionSet;

    .line 507
    .line 508
    invoke-direct {v13}, Landroid/transition/TransitionSet;-><init>()V

    .line 509
    .line 510
    .line 511
    invoke-virtual {v13, v15}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 512
    .line 513
    .line 514
    :goto_b
    invoke-virtual {v14}, Llc1;->getSharedElementSourceNames()Ljava/util/ArrayList;

    .line 515
    .line 516
    .line 517
    move-result-object v15

    .line 518
    move-object/from16 v34, v1

    .line 519
    .line 520
    invoke-virtual {v11}, Llc1;->getSharedElementSourceNames()Ljava/util/ArrayList;

    .line 521
    .line 522
    .line 523
    move-result-object v1

    .line 524
    move-object/from16 v32, v3

    .line 525
    .line 526
    invoke-virtual {v11}, Llc1;->getSharedElementTargetNames()Ljava/util/ArrayList;

    .line 527
    .line 528
    .line 529
    move-result-object v3

    .line 530
    move-object/from16 v35, v4

    .line 531
    .line 532
    move-object/from16 v20, v5

    .line 533
    .line 534
    const/4 v4, 0x0

    .line 535
    :goto_c
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 536
    .line 537
    .line 538
    move-result v5

    .line 539
    if-ge v4, v5, :cond_15

    .line 540
    .line 541
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 542
    .line 543
    .line 544
    move-result-object v5

    .line 545
    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 546
    .line 547
    .line 548
    move-result v5

    .line 549
    move-object/from16 v19, v3

    .line 550
    .line 551
    const/4 v3, -0x1

    .line 552
    if-eq v5, v3, :cond_14

    .line 553
    .line 554
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 555
    .line 556
    .line 557
    move-result-object v3

    .line 558
    check-cast v3, Ljava/lang/String;

    .line 559
    .line 560
    invoke-virtual {v15, v5, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 561
    .line 562
    .line 563
    :cond_14
    add-int/lit8 v4, v4, 0x1

    .line 564
    .line 565
    move-object/from16 v3, v19

    .line 566
    .line 567
    goto :goto_c

    .line 568
    :cond_15
    invoke-virtual {v14}, Llc1;->getSharedElementTargetNames()Ljava/util/ArrayList;

    .line 569
    .line 570
    .line 571
    move-result-object v1

    .line 572
    if-nez v2, :cond_16

    .line 573
    .line 574
    invoke-virtual {v11}, Llc1;->getExitTransitionCallback()Lsl3;

    .line 575
    .line 576
    .line 577
    invoke-virtual {v14}, Llc1;->getEnterTransitionCallback()Lsl3;

    .line 578
    .line 579
    .line 580
    goto :goto_d

    .line 581
    :cond_16
    invoke-virtual {v11}, Llc1;->getEnterTransitionCallback()Lsl3;

    .line 582
    .line 583
    .line 584
    invoke-virtual {v14}, Llc1;->getExitTransitionCallback()Lsl3;

    .line 585
    .line 586
    .line 587
    :goto_d
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 588
    .line 589
    .line 590
    move-result v3

    .line 591
    const/4 v4, 0x0

    .line 592
    :goto_e
    if-ge v4, v3, :cond_17

    .line 593
    .line 594
    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 595
    .line 596
    .line 597
    move-result-object v5

    .line 598
    check-cast v5, Ljava/lang/String;

    .line 599
    .line 600
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 601
    .line 602
    .line 603
    move-result-object v19

    .line 604
    move/from16 v21, v3

    .line 605
    .line 606
    move-object/from16 v3, v19

    .line 607
    .line 608
    check-cast v3, Ljava/lang/String;

    .line 609
    .line 610
    invoke-virtual {v10, v5, v3}, Lwm3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    .line 612
    .line 613
    add-int/lit8 v4, v4, 0x1

    .line 614
    .line 615
    move/from16 v3, v21

    .line 616
    .line 617
    goto :goto_e

    .line 618
    :cond_17
    invoke-static/range {v17 .. v17}, Lhd1;->G(I)Z

    .line 619
    .line 620
    .line 621
    move-result v3

    .line 622
    if-eqz v3, :cond_19

    .line 623
    .line 624
    const-string v3, ">>> entering view names <<<"

    .line 625
    .line 626
    invoke-static {v12, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    .line 628
    .line 629
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 630
    .line 631
    .line 632
    move-result v3

    .line 633
    const/4 v4, 0x0

    .line 634
    :goto_f
    const-string v5, "Name: "

    .line 635
    .line 636
    if-ge v4, v3, :cond_18

    .line 637
    .line 638
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 639
    .line 640
    .line 641
    move-result-object v19

    .line 642
    add-int/lit8 v4, v4, 0x1

    .line 643
    .line 644
    move/from16 v21, v3

    .line 645
    .line 646
    move-object/from16 v3, v19

    .line 647
    .line 648
    check-cast v3, Ljava/lang/String;

    .line 649
    .line 650
    move/from16 v19, v4

    .line 651
    .line 652
    new-instance v4, Ljava/lang/StringBuilder;

    .line 653
    .line 654
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 655
    .line 656
    .line 657
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    .line 659
    .line 660
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 661
    .line 662
    .line 663
    move-result-object v3

    .line 664
    invoke-static {v12, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    .line 666
    .line 667
    move/from16 v4, v19

    .line 668
    .line 669
    move/from16 v3, v21

    .line 670
    .line 671
    goto :goto_f

    .line 672
    :cond_18
    const-string v3, ">>> exiting view names <<<"

    .line 673
    .line 674
    invoke-static {v12, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    .line 676
    .line 677
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 678
    .line 679
    .line 680
    move-result v3

    .line 681
    const/4 v4, 0x0

    .line 682
    :goto_10
    if-ge v4, v3, :cond_19

    .line 683
    .line 684
    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 685
    .line 686
    .line 687
    move-result-object v19

    .line 688
    add-int/lit8 v4, v4, 0x1

    .line 689
    .line 690
    move/from16 v21, v3

    .line 691
    .line 692
    move-object/from16 v3, v19

    .line 693
    .line 694
    check-cast v3, Ljava/lang/String;

    .line 695
    .line 696
    move/from16 v19, v4

    .line 697
    .line 698
    new-instance v4, Ljava/lang/StringBuilder;

    .line 699
    .line 700
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 701
    .line 702
    .line 703
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    .line 705
    .line 706
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 707
    .line 708
    .line 709
    move-result-object v3

    .line 710
    invoke-static {v12, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    .line 712
    .line 713
    move/from16 v4, v19

    .line 714
    .line 715
    move/from16 v3, v21

    .line 716
    .line 717
    goto :goto_10

    .line 718
    :cond_19
    new-instance v3, Ldi;

    .line 719
    .line 720
    const/4 v4, 0x0

    .line 721
    invoke-direct {v3, v4}, Lwm3;-><init>(I)V

    .line 722
    .line 723
    .line 724
    iget-object v5, v11, Llc1;->mView:Landroid/view/View;

    .line 725
    .line 726
    invoke-static {v3, v5}, Lpq0;->e(Ldi;Landroid/view/View;)V

    .line 727
    .line 728
    .line 729
    invoke-virtual {v3, v15}, Ldi;->l(Ljava/util/Collection;)Z

    .line 730
    .line 731
    .line 732
    invoke-virtual {v3}, Ldi;->keySet()Ljava/util/Set;

    .line 733
    .line 734
    .line 735
    move-result-object v5

    .line 736
    invoke-virtual {v10, v5}, Ldi;->l(Ljava/util/Collection;)Z

    .line 737
    .line 738
    .line 739
    new-instance v5, Ldi;

    .line 740
    .line 741
    invoke-direct {v5, v4}, Lwm3;-><init>(I)V

    .line 742
    .line 743
    .line 744
    iget-object v4, v14, Llc1;->mView:Landroid/view/View;

    .line 745
    .line 746
    invoke-static {v5, v4}, Lpq0;->e(Ldi;Landroid/view/View;)V

    .line 747
    .line 748
    .line 749
    invoke-virtual {v5, v1}, Ldi;->l(Ljava/util/Collection;)Z

    .line 750
    .line 751
    .line 752
    invoke-virtual {v10}, Ldi;->values()Ljava/util/Collection;

    .line 753
    .line 754
    .line 755
    move-result-object v4

    .line 756
    invoke-virtual {v5, v4}, Ldi;->l(Ljava/util/Collection;)Z

    .line 757
    .line 758
    .line 759
    sget-object v4, Lvd1;->a:Lae1;

    .line 760
    .line 761
    iget v4, v10, Lwm3;->p:I

    .line 762
    .line 763
    const/16 v18, 0x1

    .line 764
    .line 765
    add-int/lit8 v4, v4, -0x1

    .line 766
    .line 767
    :goto_11
    if-ltz v4, :cond_1b

    .line 768
    .line 769
    invoke-virtual {v10, v4}, Lwm3;->i(I)Ljava/lang/Object;

    .line 770
    .line 771
    .line 772
    move-result-object v19

    .line 773
    move-object/from16 v21, v11

    .line 774
    .line 775
    move-object/from16 v11, v19

    .line 776
    .line 777
    check-cast v11, Ljava/lang/String;

    .line 778
    .line 779
    invoke-virtual {v5, v11}, Lwm3;->containsKey(Ljava/lang/Object;)Z

    .line 780
    .line 781
    .line 782
    move-result v11

    .line 783
    if-nez v11, :cond_1a

    .line 784
    .line 785
    invoke-virtual {v10, v4}, Lwm3;->g(I)Ljava/lang/Object;

    .line 786
    .line 787
    .line 788
    :cond_1a
    add-int/lit8 v4, v4, -0x1

    .line 789
    .line 790
    move-object/from16 v11, v21

    .line 791
    .line 792
    goto :goto_11

    .line 793
    :cond_1b
    move-object/from16 v21, v11

    .line 794
    .line 795
    invoke-virtual {v10}, Ldi;->keySet()Ljava/util/Set;

    .line 796
    .line 797
    .line 798
    move-result-object v4

    .line 799
    invoke-static {v3, v4}, Lpq0;->k(Ldi;Ljava/util/Collection;)V

    .line 800
    .line 801
    .line 802
    invoke-virtual {v10}, Ldi;->values()Ljava/util/Collection;

    .line 803
    .line 804
    .line 805
    move-result-object v4

    .line 806
    invoke-static {v5, v4}, Lpq0;->k(Ldi;Ljava/util/Collection;)V

    .line 807
    .line 808
    .line 809
    invoke-virtual {v10}, Lwm3;->isEmpty()Z

    .line 810
    .line 811
    .line 812
    move-result v4

    .line 813
    if-eqz v4, :cond_1c

    .line 814
    .line 815
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 816
    .line 817
    .line 818
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 819
    .line 820
    .line 821
    move/from16 v3, p0

    .line 822
    .line 823
    move-object/from16 v15, p1

    .line 824
    .line 825
    move-object v2, v9

    .line 826
    move-object/from16 v1, v32

    .line 827
    .line 828
    move-object/from16 v5, v34

    .line 829
    .line 830
    move-object/from16 v4, v35

    .line 831
    .line 832
    const/16 v27, 0x0

    .line 833
    .line 834
    goto/16 :goto_20

    .line 835
    .line 836
    :cond_1c
    if-eqz v2, :cond_1d

    .line 837
    .line 838
    invoke-virtual/range {v21 .. v21}, Llc1;->getEnterTransitionCallback()Lsl3;

    .line 839
    .line 840
    .line 841
    goto :goto_12

    .line 842
    :cond_1d
    invoke-virtual {v14}, Llc1;->getEnterTransitionCallback()Lsl3;

    .line 843
    .line 844
    .line 845
    :goto_12
    new-instance v4, Llq0;

    .line 846
    .line 847
    invoke-direct {v4, v7, v6, v2, v5}, Llq0;-><init>(Lpq3;Lpq3;ZLdi;)V

    .line 848
    .line 849
    .line 850
    invoke-static {v0, v4}, Lmp2;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 851
    .line 852
    .line 853
    invoke-virtual {v3}, Ldi;->values()Ljava/util/Collection;

    .line 854
    .line 855
    .line 856
    move-result-object v4

    .line 857
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 858
    .line 859
    .line 860
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    .line 861
    .line 862
    .line 863
    move-result v4

    .line 864
    if-nez v4, :cond_1e

    .line 865
    .line 866
    const/4 v4, 0x0

    .line 867
    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 868
    .line 869
    .line 870
    move-result-object v11

    .line 871
    check-cast v11, Ljava/lang/String;

    .line 872
    .line 873
    invoke-virtual {v3, v11}, Lwm3;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 874
    .line 875
    .line 876
    move-result-object v3

    .line 877
    move-object v15, v3

    .line 878
    check-cast v15, Landroid/view/View;

    .line 879
    .line 880
    if-eqz v15, :cond_1f

    .line 881
    .line 882
    new-instance v3, Landroid/graphics/Rect;

    .line 883
    .line 884
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 885
    .line 886
    .line 887
    invoke-static {v15, v3}, Lae1;->b(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 888
    .line 889
    .line 890
    new-instance v11, Lwd1;

    .line 891
    .line 892
    invoke-direct {v11, v4, v3}, Lwd1;-><init>(ILandroid/graphics/Rect;)V

    .line 893
    .line 894
    .line 895
    invoke-virtual {v13, v11}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    .line 896
    .line 897
    .line 898
    goto :goto_13

    .line 899
    :cond_1e
    const/4 v4, 0x0

    .line 900
    move-object/from16 v15, p1

    .line 901
    .line 902
    :cond_1f
    :goto_13
    invoke-virtual {v5}, Ldi;->values()Ljava/util/Collection;

    .line 903
    .line 904
    .line 905
    move-result-object v3

    .line 906
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 907
    .line 908
    .line 909
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 910
    .line 911
    .line 912
    move-result v3

    .line 913
    if-nez v3, :cond_20

    .line 914
    .line 915
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 916
    .line 917
    .line 918
    move-result-object v1

    .line 919
    check-cast v1, Ljava/lang/String;

    .line 920
    .line 921
    invoke-virtual {v5, v1}, Lwm3;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 922
    .line 923
    .line 924
    move-result-object v1

    .line 925
    check-cast v1, Landroid/view/View;

    .line 926
    .line 927
    if-eqz v1, :cond_20

    .line 928
    .line 929
    new-instance v3, Lrf1;

    .line 930
    .line 931
    move-object/from16 v5, v20

    .line 932
    .line 933
    move-object/from16 v4, v35

    .line 934
    .line 935
    const/4 v11, 0x4

    .line 936
    invoke-direct {v3, v5, v1, v4, v11}, Lrf1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 937
    .line 938
    .line 939
    invoke-static {v0, v3}, Lmp2;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 940
    .line 941
    .line 942
    const/4 v1, 0x1

    .line 943
    goto :goto_14

    .line 944
    :cond_20
    move-object/from16 v5, v20

    .line 945
    .line 946
    move-object/from16 v4, v35

    .line 947
    .line 948
    move/from16 v1, p0

    .line 949
    .line 950
    :goto_14
    invoke-virtual {v13}, Landroid/transition/Transition;->getTargets()Ljava/util/List;

    .line 951
    .line 952
    .line 953
    move-result-object v3

    .line 954
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 955
    .line 956
    .line 957
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 958
    .line 959
    .line 960
    move-result v11

    .line 961
    const/4 v14, 0x0

    .line 962
    :goto_15
    if-ge v14, v11, :cond_2a

    .line 963
    .line 964
    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 965
    .line 966
    .line 967
    move-result-object v19

    .line 968
    move/from16 p0, v1

    .line 969
    .line 970
    move-object/from16 v1, v19

    .line 971
    .line 972
    check-cast v1, Landroid/view/View;

    .line 973
    .line 974
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 975
    .line 976
    .line 977
    move-result v2

    .line 978
    move-object/from16 v20, v5

    .line 979
    .line 980
    const/4 v5, 0x0

    .line 981
    :goto_16
    if-ge v5, v2, :cond_22

    .line 982
    .line 983
    move-object/from16 v24, v9

    .line 984
    .line 985
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 986
    .line 987
    .line 988
    move-result-object v9

    .line 989
    if-ne v9, v1, :cond_21

    .line 990
    .line 991
    goto/16 :goto_1d

    .line 992
    .line 993
    :cond_21
    add-int/lit8 v5, v5, 0x1

    .line 994
    .line 995
    move-object/from16 v9, v24

    .line 996
    .line 997
    goto :goto_16

    .line 998
    :cond_22
    move-object/from16 v24, v9

    .line 999
    .line 1000
    sget-object v5, Llb4;->a:Ljava/lang/reflect/Field;

    .line 1001
    .line 1002
    invoke-virtual {v1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    .line 1003
    .line 1004
    .line 1005
    move-result-object v5

    .line 1006
    if-eqz v5, :cond_23

    .line 1007
    .line 1008
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1009
    .line 1010
    .line 1011
    :cond_23
    move v1, v2

    .line 1012
    :goto_17
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 1013
    .line 1014
    .line 1015
    move-result v5

    .line 1016
    if-ge v1, v5, :cond_29

    .line 1017
    .line 1018
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v5

    .line 1022
    check-cast v5, Landroid/view/View;

    .line 1023
    .line 1024
    instance-of v9, v5, Landroid/view/ViewGroup;

    .line 1025
    .line 1026
    if-eqz v9, :cond_28

    .line 1027
    .line 1028
    check-cast v5, Landroid/view/ViewGroup;

    .line 1029
    .line 1030
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    .line 1031
    .line 1032
    .line 1033
    move-result v9

    .line 1034
    move/from16 v19, v1

    .line 1035
    .line 1036
    const/4 v1, 0x0

    .line 1037
    :goto_18
    if-ge v1, v9, :cond_27

    .line 1038
    .line 1039
    move/from16 p1, v9

    .line 1040
    .line 1041
    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 1042
    .line 1043
    .line 1044
    move-result-object v9

    .line 1045
    move/from16 v21, v1

    .line 1046
    .line 1047
    const/4 v1, 0x0

    .line 1048
    :goto_19
    if-ge v1, v2, :cond_25

    .line 1049
    .line 1050
    move/from16 v22, v2

    .line 1051
    .line 1052
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1053
    .line 1054
    .line 1055
    move-result-object v2

    .line 1056
    if-ne v2, v9, :cond_24

    .line 1057
    .line 1058
    goto :goto_1a

    .line 1059
    :cond_24
    add-int/lit8 v1, v1, 0x1

    .line 1060
    .line 1061
    move/from16 v2, v22

    .line 1062
    .line 1063
    goto :goto_19

    .line 1064
    :cond_25
    move/from16 v22, v2

    .line 1065
    .line 1066
    invoke-virtual {v9}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    .line 1067
    .line 1068
    .line 1069
    move-result-object v1

    .line 1070
    if-eqz v1, :cond_26

    .line 1071
    .line 1072
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1073
    .line 1074
    .line 1075
    :cond_26
    :goto_1a
    add-int/lit8 v1, v21, 0x1

    .line 1076
    .line 1077
    move/from16 v9, p1

    .line 1078
    .line 1079
    move/from16 v2, v22

    .line 1080
    .line 1081
    goto :goto_18

    .line 1082
    :cond_27
    :goto_1b
    move/from16 v22, v2

    .line 1083
    .line 1084
    goto :goto_1c

    .line 1085
    :cond_28
    move/from16 v19, v1

    .line 1086
    .line 1087
    goto :goto_1b

    .line 1088
    :goto_1c
    add-int/lit8 v1, v19, 0x1

    .line 1089
    .line 1090
    move/from16 v2, v22

    .line 1091
    .line 1092
    goto :goto_17

    .line 1093
    :cond_29
    :goto_1d
    add-int/lit8 v14, v14, 0x1

    .line 1094
    .line 1095
    move/from16 v1, p0

    .line 1096
    .line 1097
    move/from16 v2, p2

    .line 1098
    .line 1099
    move-object/from16 v5, v20

    .line 1100
    .line 1101
    move-object/from16 v9, v24

    .line 1102
    .line 1103
    goto/16 :goto_15

    .line 1104
    .line 1105
    :cond_2a
    move/from16 p0, v1

    .line 1106
    .line 1107
    move-object/from16 v20, v5

    .line 1108
    .line 1109
    move-object/from16 v24, v9

    .line 1110
    .line 1111
    move-object/from16 v1, v32

    .line 1112
    .line 1113
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1114
    .line 1115
    .line 1116
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1117
    .line 1118
    .line 1119
    invoke-static {v13, v8}, Lae1;->a(Landroid/transition/Transition;Ljava/util/ArrayList;)V

    .line 1120
    .line 1121
    .line 1122
    new-instance v19, Lyd1;

    .line 1123
    .line 1124
    const/16 v21, 0x0

    .line 1125
    .line 1126
    const/16 v22, 0x0

    .line 1127
    .line 1128
    move-object/from16 v23, v13

    .line 1129
    .line 1130
    invoke-direct/range {v19 .. v24}, Lyd1;-><init>(Lae1;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 1131
    .line 1132
    .line 1133
    move-object/from16 v3, v19

    .line 1134
    .line 1135
    move-object/from16 v2, v24

    .line 1136
    .line 1137
    invoke-virtual {v13, v3}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 1138
    .line 1139
    .line 1140
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1141
    .line 1142
    move-object/from16 v5, v34

    .line 1143
    .line 1144
    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1145
    .line 1146
    .line 1147
    invoke-virtual {v5, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1148
    .line 1149
    .line 1150
    move/from16 v3, p0

    .line 1151
    .line 1152
    move-object/from16 v27, v13

    .line 1153
    .line 1154
    goto :goto_20

    .line 1155
    :cond_2b
    move-object/from16 v20, v5

    .line 1156
    .line 1157
    move-object v2, v9

    .line 1158
    :goto_1e
    move-object/from16 v31, v13

    .line 1159
    .line 1160
    move/from16 v30, v15

    .line 1161
    .line 1162
    move-object v5, v1

    .line 1163
    move-object v1, v3

    .line 1164
    goto :goto_1f

    .line 1165
    :cond_2c
    move-object/from16 v20, v5

    .line 1166
    .line 1167
    move-object v2, v9

    .line 1168
    move/from16 v29, v11

    .line 1169
    .line 1170
    goto :goto_1e

    .line 1171
    :goto_1f
    move/from16 v3, p0

    .line 1172
    .line 1173
    move-object/from16 v15, p1

    .line 1174
    .line 1175
    :goto_20
    move-object v9, v2

    .line 1176
    move/from16 p0, v3

    .line 1177
    .line 1178
    move-object/from16 p1, v15

    .line 1179
    .line 1180
    move/from16 v11, v29

    .line 1181
    .line 1182
    move/from16 v15, v30

    .line 1183
    .line 1184
    move-object/from16 v13, v31

    .line 1185
    .line 1186
    move/from16 v2, p2

    .line 1187
    .line 1188
    move-object v3, v1

    .line 1189
    move-object v1, v5

    .line 1190
    move-object/from16 v5, v20

    .line 1191
    .line 1192
    goto/16 :goto_a

    .line 1193
    .line 1194
    :cond_2d
    move-object/from16 v20, v5

    .line 1195
    .line 1196
    move-object v2, v9

    .line 1197
    move-object/from16 v31, v13

    .line 1198
    .line 1199
    move-object v5, v1

    .line 1200
    move-object v1, v3

    .line 1201
    new-instance v3, Ljava/util/ArrayList;

    .line 1202
    .line 1203
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1204
    .line 1205
    .line 1206
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    .line 1207
    .line 1208
    .line 1209
    move-result v9

    .line 1210
    const/4 v11, 0x0

    .line 1211
    const/4 v13, 0x0

    .line 1212
    const/4 v14, 0x0

    .line 1213
    :goto_21
    if-ge v14, v9, :cond_3d

    .line 1214
    .line 1215
    move-object/from16 v15, v31

    .line 1216
    .line 1217
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1218
    .line 1219
    .line 1220
    move-result-object v19

    .line 1221
    add-int/lit8 v14, v14, 0x1

    .line 1222
    .line 1223
    move/from16 p2, v9

    .line 1224
    .line 1225
    move-object/from16 v9, v19

    .line 1226
    .line 1227
    check-cast v9, Loq0;

    .line 1228
    .line 1229
    invoke-virtual {v9}, Lnq0;->f()Z

    .line 1230
    .line 1231
    .line 1232
    move-result v19

    .line 1233
    move/from16 v29, v14

    .line 1234
    .line 1235
    iget-object v14, v9, Lnq0;->a:Ljava/lang/Object;

    .line 1236
    .line 1237
    check-cast v14, Lpq3;

    .line 1238
    .line 1239
    if-eqz v19, :cond_2e

    .line 1240
    .line 1241
    move-object/from16 v30, v10

    .line 1242
    .line 1243
    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1244
    .line 1245
    invoke-virtual {v5, v14, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1246
    .line 1247
    .line 1248
    invoke-virtual {v9}, Lnq0;->a()V

    .line 1249
    .line 1250
    .line 1251
    move/from16 v9, p2

    .line 1252
    .line 1253
    move-object/from16 v31, v15

    .line 1254
    .line 1255
    move/from16 v14, v29

    .line 1256
    .line 1257
    move-object/from16 v10, v30

    .line 1258
    .line 1259
    goto :goto_21

    .line 1260
    :cond_2e
    move-object/from16 v30, v10

    .line 1261
    .line 1262
    iget-object v10, v9, Loq0;->c:Ljava/lang/Object;

    .line 1263
    .line 1264
    if-eqz v10, :cond_2f

    .line 1265
    .line 1266
    check-cast v10, Landroid/transition/Transition;

    .line 1267
    .line 1268
    invoke-virtual {v10}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    .line 1269
    .line 1270
    .line 1271
    move-result-object v10

    .line 1272
    goto :goto_22

    .line 1273
    :cond_2f
    const/4 v10, 0x0

    .line 1274
    :goto_22
    if-eqz v27, :cond_31

    .line 1275
    .line 1276
    if-eq v14, v6, :cond_30

    .line 1277
    .line 1278
    if-ne v14, v7, :cond_31

    .line 1279
    .line 1280
    :cond_30
    const/16 v19, 0x1

    .line 1281
    .line 1282
    goto :goto_23

    .line 1283
    :cond_31
    const/16 v19, 0x0

    .line 1284
    .line 1285
    :goto_23
    if-nez v10, :cond_33

    .line 1286
    .line 1287
    if-nez v19, :cond_32

    .line 1288
    .line 1289
    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1290
    .line 1291
    invoke-virtual {v5, v14, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1292
    .line 1293
    .line 1294
    invoke-virtual {v9}, Lnq0;->a()V

    .line 1295
    .line 1296
    .line 1297
    :cond_32
    move-object/from16 v32, v1

    .line 1298
    .line 1299
    move-object/from16 v35, v7

    .line 1300
    .line 1301
    move-object/from16 v34, v12

    .line 1302
    .line 1303
    move-object/from16 v31, v15

    .line 1304
    .line 1305
    move-object/from16 v15, p1

    .line 1306
    .line 1307
    goto/16 :goto_27

    .line 1308
    .line 1309
    :cond_33
    move-object/from16 v34, v12

    .line 1310
    .line 1311
    new-instance v12, Ljava/util/ArrayList;

    .line 1312
    .line 1313
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1314
    .line 1315
    .line 1316
    move-object/from16 v35, v7

    .line 1317
    .line 1318
    iget-object v7, v14, Lpq3;->c:Llc1;

    .line 1319
    .line 1320
    move-object/from16 v31, v15

    .line 1321
    .line 1322
    iget-object v15, v7, Llc1;->mView:Landroid/view/View;

    .line 1323
    .line 1324
    invoke-static {v15, v12}, Lpq0;->a(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 1325
    .line 1326
    .line 1327
    if-eqz v19, :cond_35

    .line 1328
    .line 1329
    if-ne v14, v6, :cond_34

    .line 1330
    .line 1331
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1332
    .line 1333
    .line 1334
    goto :goto_24

    .line 1335
    :cond_34
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1336
    .line 1337
    .line 1338
    :cond_35
    :goto_24
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1339
    .line 1340
    .line 1341
    move-result v15

    .line 1342
    if-eqz v15, :cond_36

    .line 1343
    .line 1344
    invoke-virtual {v10, v1}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 1345
    .line 1346
    .line 1347
    move-object/from16 v32, v1

    .line 1348
    .line 1349
    goto :goto_25

    .line 1350
    :cond_36
    invoke-static {v10, v12}, Lae1;->a(Landroid/transition/Transition;Ljava/util/ArrayList;)V

    .line 1351
    .line 1352
    .line 1353
    new-instance v19, Lyd1;

    .line 1354
    .line 1355
    const/16 v23, 0x0

    .line 1356
    .line 1357
    const/16 v24, 0x0

    .line 1358
    .line 1359
    move-object/from16 v21, v10

    .line 1360
    .line 1361
    move-object/from16 v22, v12

    .line 1362
    .line 1363
    invoke-direct/range {v19 .. v24}, Lyd1;-><init>(Lae1;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 1364
    .line 1365
    .line 1366
    move-object/from16 v15, v19

    .line 1367
    .line 1368
    invoke-virtual {v10, v15}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 1369
    .line 1370
    .line 1371
    iget v15, v14, Lpq3;->a:I

    .line 1372
    .line 1373
    move-object/from16 v32, v1

    .line 1374
    .line 1375
    const/4 v1, 0x3

    .line 1376
    if-ne v15, v1, :cond_37

    .line 1377
    .line 1378
    move-object/from16 v1, v33

    .line 1379
    .line 1380
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1381
    .line 1382
    .line 1383
    new-instance v15, Ljava/util/ArrayList;

    .line 1384
    .line 1385
    invoke-direct {v15, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1386
    .line 1387
    .line 1388
    iget-object v1, v7, Llc1;->mView:Landroid/view/View;

    .line 1389
    .line 1390
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1391
    .line 1392
    .line 1393
    iget-object v1, v7, Llc1;->mView:Landroid/view/View;

    .line 1394
    .line 1395
    new-instance v7, Lxd1;

    .line 1396
    .line 1397
    invoke-direct {v7, v1, v15}, Lxd1;-><init>(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 1398
    .line 1399
    .line 1400
    invoke-virtual {v10, v7}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 1401
    .line 1402
    .line 1403
    new-instance v1, Lo9;

    .line 1404
    .line 1405
    const/4 v7, 0x4

    .line 1406
    invoke-direct {v1, v7, v12}, Lo9;-><init>(ILjava/lang/Object;)V

    .line 1407
    .line 1408
    .line 1409
    invoke-static {v0, v1}, Lmp2;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1410
    .line 1411
    .line 1412
    :cond_37
    :goto_25
    iget v1, v14, Lpq3;->a:I

    .line 1413
    .line 1414
    move/from16 v7, v17

    .line 1415
    .line 1416
    if-ne v1, v7, :cond_39

    .line 1417
    .line 1418
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1419
    .line 1420
    .line 1421
    if-eqz p0, :cond_38

    .line 1422
    .line 1423
    new-instance v1, Lwd1;

    .line 1424
    .line 1425
    const/4 v7, 0x1

    .line 1426
    invoke-direct {v1, v7, v4}, Lwd1;-><init>(ILandroid/graphics/Rect;)V

    .line 1427
    .line 1428
    .line 1429
    invoke-virtual {v10, v1}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    .line 1430
    .line 1431
    .line 1432
    :cond_38
    move-object/from16 v15, p1

    .line 1433
    .line 1434
    goto :goto_26

    .line 1435
    :cond_39
    if-eqz p1, :cond_38

    .line 1436
    .line 1437
    new-instance v1, Landroid/graphics/Rect;

    .line 1438
    .line 1439
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1440
    .line 1441
    .line 1442
    move-object/from16 v15, p1

    .line 1443
    .line 1444
    invoke-static {v15, v1}, Lae1;->b(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1445
    .line 1446
    .line 1447
    new-instance v7, Lwd1;

    .line 1448
    .line 1449
    const/4 v12, 0x0

    .line 1450
    invoke-direct {v7, v12, v1}, Lwd1;-><init>(ILandroid/graphics/Rect;)V

    .line 1451
    .line 1452
    .line 1453
    invoke-virtual {v10, v7}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    .line 1454
    .line 1455
    .line 1456
    :goto_26
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1457
    .line 1458
    invoke-virtual {v5, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1459
    .line 1460
    .line 1461
    iget-boolean v1, v9, Loq0;->d:Z

    .line 1462
    .line 1463
    if-eqz v1, :cond_3b

    .line 1464
    .line 1465
    new-instance v1, Landroid/transition/TransitionSet;

    .line 1466
    .line 1467
    invoke-direct {v1}, Landroid/transition/TransitionSet;-><init>()V

    .line 1468
    .line 1469
    .line 1470
    if-eqz v11, :cond_3a

    .line 1471
    .line 1472
    invoke-virtual {v1, v11}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 1473
    .line 1474
    .line 1475
    :cond_3a
    invoke-virtual {v1, v10}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 1476
    .line 1477
    .line 1478
    move-object v11, v1

    .line 1479
    goto :goto_27

    .line 1480
    :cond_3b
    new-instance v1, Landroid/transition/TransitionSet;

    .line 1481
    .line 1482
    invoke-direct {v1}, Landroid/transition/TransitionSet;-><init>()V

    .line 1483
    .line 1484
    .line 1485
    if-eqz v13, :cond_3c

    .line 1486
    .line 1487
    invoke-virtual {v1, v13}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 1488
    .line 1489
    .line 1490
    :cond_3c
    invoke-virtual {v1, v10}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 1491
    .line 1492
    .line 1493
    move-object v13, v1

    .line 1494
    :goto_27
    move/from16 v9, p2

    .line 1495
    .line 1496
    move-object/from16 p1, v15

    .line 1497
    .line 1498
    move/from16 v14, v29

    .line 1499
    .line 1500
    move-object/from16 v10, v30

    .line 1501
    .line 1502
    move-object/from16 v1, v32

    .line 1503
    .line 1504
    move-object/from16 v12, v34

    .line 1505
    .line 1506
    move-object/from16 v7, v35

    .line 1507
    .line 1508
    const/16 v17, 0x2

    .line 1509
    .line 1510
    goto/16 :goto_21

    .line 1511
    .line 1512
    :cond_3d
    move-object/from16 v35, v7

    .line 1513
    .line 1514
    move-object/from16 v30, v10

    .line 1515
    .line 1516
    move-object/from16 v34, v12

    .line 1517
    .line 1518
    move-object v1, v11

    .line 1519
    check-cast v1, Landroid/transition/Transition;

    .line 1520
    .line 1521
    move-object v4, v13

    .line 1522
    check-cast v4, Landroid/transition/Transition;

    .line 1523
    .line 1524
    if-eqz v1, :cond_3e

    .line 1525
    .line 1526
    if-eqz v4, :cond_3e

    .line 1527
    .line 1528
    new-instance v7, Landroid/transition/TransitionSet;

    .line 1529
    .line 1530
    invoke-direct {v7}, Landroid/transition/TransitionSet;-><init>()V

    .line 1531
    .line 1532
    .line 1533
    invoke-virtual {v7, v1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 1534
    .line 1535
    .line 1536
    move-result-object v1

    .line 1537
    invoke-virtual {v1, v4}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 1538
    .line 1539
    .line 1540
    move-result-object v1

    .line 1541
    const/4 v7, 0x1

    .line 1542
    invoke-virtual {v1, v7}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    .line 1543
    .line 1544
    .line 1545
    move-result-object v1

    .line 1546
    goto :goto_28

    .line 1547
    :cond_3e
    if-eqz v1, :cond_3f

    .line 1548
    .line 1549
    goto :goto_28

    .line 1550
    :cond_3f
    if-eqz v4, :cond_40

    .line 1551
    .line 1552
    move-object v1, v4

    .line 1553
    goto :goto_28

    .line 1554
    :cond_40
    const/4 v1, 0x0

    .line 1555
    :goto_28
    if-eqz v27, :cond_42

    .line 1556
    .line 1557
    new-instance v4, Landroid/transition/TransitionSet;

    .line 1558
    .line 1559
    invoke-direct {v4}, Landroid/transition/TransitionSet;-><init>()V

    .line 1560
    .line 1561
    .line 1562
    if-eqz v1, :cond_41

    .line 1563
    .line 1564
    invoke-virtual {v4, v1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 1565
    .line 1566
    .line 1567
    :cond_41
    move-object/from16 v7, v27

    .line 1568
    .line 1569
    invoke-virtual {v4, v7}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 1570
    .line 1571
    .line 1572
    move-object v1, v4

    .line 1573
    goto :goto_29

    .line 1574
    :cond_42
    move-object/from16 v7, v27

    .line 1575
    .line 1576
    :goto_29
    if-nez v1, :cond_43

    .line 1577
    .line 1578
    move-object/from16 v14, v34

    .line 1579
    .line 1580
    move-object/from16 v13, v35

    .line 1581
    .line 1582
    :goto_2a
    const/4 v4, 0x0

    .line 1583
    goto/16 :goto_37

    .line 1584
    .line 1585
    :cond_43
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    .line 1586
    .line 1587
    .line 1588
    move-result v4

    .line 1589
    const/4 v10, 0x0

    .line 1590
    :goto_2b
    if-ge v10, v4, :cond_4b

    .line 1591
    .line 1592
    move-object/from16 v15, v31

    .line 1593
    .line 1594
    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1595
    .line 1596
    .line 1597
    move-result-object v9

    .line 1598
    add-int/lit8 v10, v10, 0x1

    .line 1599
    .line 1600
    check-cast v9, Loq0;

    .line 1601
    .line 1602
    invoke-virtual {v9}, Lnq0;->f()Z

    .line 1603
    .line 1604
    .line 1605
    move-result v11

    .line 1606
    iget-object v12, v9, Lnq0;->a:Ljava/lang/Object;

    .line 1607
    .line 1608
    check-cast v12, Lpq3;

    .line 1609
    .line 1610
    if-eqz v11, :cond_44

    .line 1611
    .line 1612
    :goto_2c
    move-object/from16 v31, v15

    .line 1613
    .line 1614
    goto :goto_2b

    .line 1615
    :cond_44
    iget-object v11, v9, Loq0;->c:Ljava/lang/Object;

    .line 1616
    .line 1617
    move-object/from16 v13, v35

    .line 1618
    .line 1619
    if-eqz v7, :cond_46

    .line 1620
    .line 1621
    if-eq v12, v6, :cond_45

    .line 1622
    .line 1623
    if-ne v12, v13, :cond_46

    .line 1624
    .line 1625
    :cond_45
    const/4 v14, 0x1

    .line 1626
    goto :goto_2d

    .line 1627
    :cond_46
    const/4 v14, 0x0

    .line 1628
    :goto_2d
    if-nez v11, :cond_48

    .line 1629
    .line 1630
    if-eqz v14, :cond_47

    .line 1631
    .line 1632
    goto :goto_2e

    .line 1633
    :cond_47
    move/from16 p0, v4

    .line 1634
    .line 1635
    move-object/from16 v14, v34

    .line 1636
    .line 1637
    goto :goto_30

    .line 1638
    :cond_48
    :goto_2e
    sget-object v11, Llb4;->a:Ljava/lang/reflect/Field;

    .line 1639
    .line 1640
    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    .line 1641
    .line 1642
    .line 1643
    move-result v11

    .line 1644
    if-nez v11, :cond_4a

    .line 1645
    .line 1646
    const/16 v17, 0x2

    .line 1647
    .line 1648
    invoke-static/range {v17 .. v17}, Lhd1;->G(I)Z

    .line 1649
    .line 1650
    .line 1651
    move-result v11

    .line 1652
    if-eqz v11, :cond_49

    .line 1653
    .line 1654
    new-instance v11, Ljava/lang/StringBuilder;

    .line 1655
    .line 1656
    const-string v14, "SpecialEffectsController: Container "

    .line 1657
    .line 1658
    invoke-direct {v11, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1659
    .line 1660
    .line 1661
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1662
    .line 1663
    .line 1664
    const-string v14, " has not been laid out. Completing operation "

    .line 1665
    .line 1666
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1667
    .line 1668
    .line 1669
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1670
    .line 1671
    .line 1672
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1673
    .line 1674
    .line 1675
    move-result-object v11

    .line 1676
    move-object/from16 v14, v34

    .line 1677
    .line 1678
    invoke-static {v14, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    .line 1680
    .line 1681
    goto :goto_2f

    .line 1682
    :cond_49
    move-object/from16 v14, v34

    .line 1683
    .line 1684
    :goto_2f
    invoke-virtual {v9}, Lnq0;->a()V

    .line 1685
    .line 1686
    .line 1687
    move/from16 p0, v4

    .line 1688
    .line 1689
    goto :goto_30

    .line 1690
    :cond_4a
    move-object/from16 v14, v34

    .line 1691
    .line 1692
    new-instance v11, Lrf1;

    .line 1693
    .line 1694
    move/from16 p0, v4

    .line 1695
    .line 1696
    const/4 v4, 0x5

    .line 1697
    invoke-direct {v11, v4, v9, v12}, Lrf1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1698
    .line 1699
    .line 1700
    new-instance v4, Lzd1;

    .line 1701
    .line 1702
    invoke-direct {v4, v11}, Lzd1;-><init>(Lrf1;)V

    .line 1703
    .line 1704
    .line 1705
    invoke-virtual {v1, v4}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 1706
    .line 1707
    .line 1708
    :goto_30
    move/from16 v4, p0

    .line 1709
    .line 1710
    move-object/from16 v35, v13

    .line 1711
    .line 1712
    move-object/from16 v34, v14

    .line 1713
    .line 1714
    goto :goto_2c

    .line 1715
    :cond_4b
    move-object/from16 v14, v34

    .line 1716
    .line 1717
    move-object/from16 v13, v35

    .line 1718
    .line 1719
    sget-object v4, Llb4;->a:Ljava/lang/reflect/Field;

    .line 1720
    .line 1721
    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    .line 1722
    .line 1723
    .line 1724
    move-result v4

    .line 1725
    if-nez v4, :cond_4c

    .line 1726
    .line 1727
    goto/16 :goto_2a

    .line 1728
    .line 1729
    :cond_4c
    const/4 v11, 0x4

    .line 1730
    invoke-static {v11, v3}, Lvd1;->a(ILjava/util/ArrayList;)V

    .line 1731
    .line 1732
    .line 1733
    new-instance v4, Ljava/util/ArrayList;

    .line 1734
    .line 1735
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1736
    .line 1737
    .line 1738
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1739
    .line 1740
    .line 1741
    move-result v9

    .line 1742
    const/4 v10, 0x0

    .line 1743
    :goto_31
    if-ge v10, v9, :cond_4d

    .line 1744
    .line 1745
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1746
    .line 1747
    .line 1748
    move-result-object v11

    .line 1749
    check-cast v11, Landroid/view/View;

    .line 1750
    .line 1751
    sget-object v12, Llb4;->a:Ljava/lang/reflect/Field;

    .line 1752
    .line 1753
    invoke-virtual {v11}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    .line 1754
    .line 1755
    .line 1756
    move-result-object v12

    .line 1757
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1758
    .line 1759
    .line 1760
    const/4 v12, 0x0

    .line 1761
    invoke-virtual {v11, v12}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    .line 1762
    .line 1763
    .line 1764
    add-int/lit8 v10, v10, 0x1

    .line 1765
    .line 1766
    goto :goto_31

    .line 1767
    :cond_4d
    const/16 v17, 0x2

    .line 1768
    .line 1769
    invoke-static/range {v17 .. v17}, Lhd1;->G(I)Z

    .line 1770
    .line 1771
    .line 1772
    move-result v9

    .line 1773
    if-eqz v9, :cond_4f

    .line 1774
    .line 1775
    const-string v9, ">>>>> Beginning transition <<<<<"

    .line 1776
    .line 1777
    invoke-static {v14, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    .line 1779
    .line 1780
    const-string v9, ">>>>> SharedElementFirstOutViews <<<<<"

    .line 1781
    .line 1782
    invoke-static {v14, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1783
    .line 1784
    .line 1785
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 1786
    .line 1787
    .line 1788
    move-result v9

    .line 1789
    const/4 v10, 0x0

    .line 1790
    :goto_32
    const-string v11, " Name: "

    .line 1791
    .line 1792
    const-string v12, "View: "

    .line 1793
    .line 1794
    if-ge v10, v9, :cond_4e

    .line 1795
    .line 1796
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1797
    .line 1798
    .line 1799
    move-result-object v15

    .line 1800
    add-int/lit8 v10, v10, 0x1

    .line 1801
    .line 1802
    check-cast v15, Landroid/view/View;

    .line 1803
    .line 1804
    move/from16 p0, v9

    .line 1805
    .line 1806
    new-instance v9, Ljava/lang/StringBuilder;

    .line 1807
    .line 1808
    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1809
    .line 1810
    .line 1811
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1812
    .line 1813
    .line 1814
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1815
    .line 1816
    .line 1817
    invoke-virtual {v15}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    .line 1818
    .line 1819
    .line 1820
    move-result-object v11

    .line 1821
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1822
    .line 1823
    .line 1824
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1825
    .line 1826
    .line 1827
    move-result-object v9

    .line 1828
    invoke-static {v14, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1829
    .line 1830
    .line 1831
    move/from16 v9, p0

    .line 1832
    .line 1833
    goto :goto_32

    .line 1834
    :cond_4e
    const-string v9, ">>>>> SharedElementLastInViews <<<<<"

    .line 1835
    .line 1836
    invoke-static {v14, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1837
    .line 1838
    .line 1839
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1840
    .line 1841
    .line 1842
    move-result v9

    .line 1843
    const/4 v10, 0x0

    .line 1844
    :goto_33
    if-ge v10, v9, :cond_4f

    .line 1845
    .line 1846
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1847
    .line 1848
    .line 1849
    move-result-object v15

    .line 1850
    add-int/lit8 v10, v10, 0x1

    .line 1851
    .line 1852
    check-cast v15, Landroid/view/View;

    .line 1853
    .line 1854
    move/from16 p0, v9

    .line 1855
    .line 1856
    new-instance v9, Ljava/lang/StringBuilder;

    .line 1857
    .line 1858
    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1859
    .line 1860
    .line 1861
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1862
    .line 1863
    .line 1864
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1865
    .line 1866
    .line 1867
    invoke-virtual {v15}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    .line 1868
    .line 1869
    .line 1870
    move-result-object v15

    .line 1871
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1872
    .line 1873
    .line 1874
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1875
    .line 1876
    .line 1877
    move-result-object v9

    .line 1878
    invoke-static {v14, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1879
    .line 1880
    .line 1881
    move/from16 v9, p0

    .line 1882
    .line 1883
    goto :goto_33

    .line 1884
    :cond_4f
    invoke-static {v0, v1}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 1885
    .line 1886
    .line 1887
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1888
    .line 1889
    .line 1890
    move-result v1

    .line 1891
    new-instance v9, Ljava/util/ArrayList;

    .line 1892
    .line 1893
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1894
    .line 1895
    .line 1896
    const/4 v10, 0x0

    .line 1897
    :goto_34
    if-ge v10, v1, :cond_53

    .line 1898
    .line 1899
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1900
    .line 1901
    .line 1902
    move-result-object v11

    .line 1903
    check-cast v11, Landroid/view/View;

    .line 1904
    .line 1905
    sget-object v12, Llb4;->a:Ljava/lang/reflect/Field;

    .line 1906
    .line 1907
    invoke-virtual {v11}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    .line 1908
    .line 1909
    .line 1910
    move-result-object v12

    .line 1911
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1912
    .line 1913
    .line 1914
    if-nez v12, :cond_50

    .line 1915
    .line 1916
    move/from16 v20, v1

    .line 1917
    .line 1918
    move-object/from16 v23, v8

    .line 1919
    .line 1920
    move-object/from16 v11, v30

    .line 1921
    .line 1922
    goto :goto_36

    .line 1923
    :cond_50
    const/4 v15, 0x0

    .line 1924
    invoke-virtual {v11, v15}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    .line 1925
    .line 1926
    .line 1927
    move-object/from16 v11, v30

    .line 1928
    .line 1929
    invoke-virtual {v11, v12}, Lwm3;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1930
    .line 1931
    .line 1932
    move-result-object v16

    .line 1933
    move-object/from16 v15, v16

    .line 1934
    .line 1935
    check-cast v15, Ljava/lang/String;

    .line 1936
    .line 1937
    move-object/from16 v23, v8

    .line 1938
    .line 1939
    const/4 v8, 0x0

    .line 1940
    :goto_35
    move/from16 v20, v1

    .line 1941
    .line 1942
    if-ge v8, v1, :cond_52

    .line 1943
    .line 1944
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1945
    .line 1946
    .line 1947
    move-result-object v1

    .line 1948
    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1949
    .line 1950
    .line 1951
    move-result v1

    .line 1952
    if-eqz v1, :cond_51

    .line 1953
    .line 1954
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1955
    .line 1956
    .line 1957
    move-result-object v1

    .line 1958
    check-cast v1, Landroid/view/View;

    .line 1959
    .line 1960
    invoke-virtual {v1, v12}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    .line 1961
    .line 1962
    .line 1963
    goto :goto_36

    .line 1964
    :cond_51
    add-int/lit8 v8, v8, 0x1

    .line 1965
    .line 1966
    move/from16 v1, v20

    .line 1967
    .line 1968
    goto :goto_35

    .line 1969
    :cond_52
    :goto_36
    add-int/lit8 v10, v10, 0x1

    .line 1970
    .line 1971
    move-object/from16 v30, v11

    .line 1972
    .line 1973
    move/from16 v1, v20

    .line 1974
    .line 1975
    move-object/from16 v8, v23

    .line 1976
    .line 1977
    goto :goto_34

    .line 1978
    :cond_53
    move/from16 v20, v1

    .line 1979
    .line 1980
    move-object/from16 v23, v8

    .line 1981
    .line 1982
    new-instance v19, Lbe1;

    .line 1983
    .line 1984
    move-object/from16 v21, v2

    .line 1985
    .line 1986
    move-object/from16 v22, v4

    .line 1987
    .line 1988
    move-object/from16 v24, v9

    .line 1989
    .line 1990
    invoke-direct/range {v19 .. v24}, Lbe1;-><init>(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1991
    .line 1992
    .line 1993
    move-object/from16 v4, v19

    .line 1994
    .line 1995
    move-object/from16 v1, v23

    .line 1996
    .line 1997
    invoke-static {v0, v4}, Lmp2;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1998
    .line 1999
    .line 2000
    const/4 v4, 0x0

    .line 2001
    invoke-static {v4, v3}, Lvd1;->a(ILjava/util/ArrayList;)V

    .line 2002
    .line 2003
    .line 2004
    if-eqz v7, :cond_54

    .line 2005
    .line 2006
    invoke-virtual {v7}, Landroid/transition/Transition;->getTargets()Ljava/util/List;

    .line 2007
    .line 2008
    .line 2009
    move-result-object v3

    .line 2010
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 2011
    .line 2012
    .line 2013
    invoke-virtual {v7}, Landroid/transition/Transition;->getTargets()Ljava/util/List;

    .line 2014
    .line 2015
    .line 2016
    move-result-object v3

    .line 2017
    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2018
    .line 2019
    .line 2020
    invoke-static {v7, v1, v2}, Lae1;->d(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2021
    .line 2022
    .line 2023
    :cond_54
    :goto_37
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2024
    .line 2025
    invoke-virtual {v5, v1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    .line 2026
    .line 2027
    .line 2028
    move-result v1

    .line 2029
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2030
    .line 2031
    .line 2032
    move-result-object v2

    .line 2033
    new-instance v3, Ljava/util/ArrayList;

    .line 2034
    .line 2035
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2036
    .line 2037
    .line 2038
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    .line 2039
    .line 2040
    .line 2041
    move-result v7

    .line 2042
    move v8, v4

    .line 2043
    move v10, v8

    .line 2044
    :goto_38
    const-string v9, " has started."

    .line 2045
    .line 2046
    if-ge v8, v7, :cond_5d

    .line 2047
    .line 2048
    move-object/from16 v11, v26

    .line 2049
    .line 2050
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2051
    .line 2052
    .line 2053
    move-result-object v12

    .line 2054
    add-int/lit8 v8, v8, 0x1

    .line 2055
    .line 2056
    check-cast v12, Lmq0;

    .line 2057
    .line 2058
    invoke-virtual {v12}, Lnq0;->f()Z

    .line 2059
    .line 2060
    .line 2061
    move-result v15

    .line 2062
    if-eqz v15, :cond_55

    .line 2063
    .line 2064
    invoke-virtual {v12}, Lnq0;->a()V

    .line 2065
    .line 2066
    .line 2067
    :goto_39
    move/from16 p0, v1

    .line 2068
    .line 2069
    move/from16 p1, v7

    .line 2070
    .line 2071
    move/from16 p2, v8

    .line 2072
    .line 2073
    goto :goto_3a

    .line 2074
    :cond_55
    invoke-virtual {v12, v2}, Lmq0;->l(Landroid/content/Context;)Lgw4;

    .line 2075
    .line 2076
    .line 2077
    move-result-object v15

    .line 2078
    if-nez v15, :cond_56

    .line 2079
    .line 2080
    invoke-virtual {v12}, Lnq0;->a()V

    .line 2081
    .line 2082
    .line 2083
    goto :goto_39

    .line 2084
    :cond_56
    iget-object v15, v15, Lgw4;->p:Ljava/lang/Object;

    .line 2085
    .line 2086
    check-cast v15, Landroid/animation/Animator;

    .line 2087
    .line 2088
    if-nez v15, :cond_57

    .line 2089
    .line 2090
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2091
    .line 2092
    .line 2093
    goto :goto_39

    .line 2094
    :cond_57
    iget-object v4, v12, Lnq0;->a:Ljava/lang/Object;

    .line 2095
    .line 2096
    check-cast v4, Lpq3;

    .line 2097
    .line 2098
    move/from16 p0, v1

    .line 2099
    .line 2100
    iget-object v1, v4, Lpq3;->c:Llc1;

    .line 2101
    .line 2102
    move/from16 p1, v7

    .line 2103
    .line 2104
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2105
    .line 2106
    move/from16 p2, v8

    .line 2107
    .line 2108
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2109
    .line 2110
    .line 2111
    move-result-object v8

    .line 2112
    invoke-virtual {v7, v8}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 2113
    .line 2114
    .line 2115
    move-result v7

    .line 2116
    if-eqz v7, :cond_59

    .line 2117
    .line 2118
    const/16 v17, 0x2

    .line 2119
    .line 2120
    invoke-static/range {v17 .. v17}, Lhd1;->G(I)Z

    .line 2121
    .line 2122
    .line 2123
    move-result v4

    .line 2124
    if-eqz v4, :cond_58

    .line 2125
    .line 2126
    new-instance v4, Ljava/lang/StringBuilder;

    .line 2127
    .line 2128
    const-string v7, "Ignoring Animator set on "

    .line 2129
    .line 2130
    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2131
    .line 2132
    .line 2133
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2134
    .line 2135
    .line 2136
    const-string v1, " as this Fragment was involved in a Transition."

    .line 2137
    .line 2138
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2139
    .line 2140
    .line 2141
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2142
    .line 2143
    .line 2144
    move-result-object v1

    .line 2145
    invoke-static {v14, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2146
    .line 2147
    .line 2148
    :cond_58
    invoke-virtual {v12}, Lnq0;->a()V

    .line 2149
    .line 2150
    .line 2151
    :goto_3a
    move/from16 v1, p0

    .line 2152
    .line 2153
    move/from16 v7, p1

    .line 2154
    .line 2155
    move/from16 v8, p2

    .line 2156
    .line 2157
    move-object/from16 v26, v11

    .line 2158
    .line 2159
    const/4 v4, 0x0

    .line 2160
    goto :goto_38

    .line 2161
    :cond_59
    iget v7, v4, Lpq3;->a:I

    .line 2162
    .line 2163
    const/4 v8, 0x3

    .line 2164
    if-ne v7, v8, :cond_5a

    .line 2165
    .line 2166
    const/16 v30, 0x1

    .line 2167
    .line 2168
    goto :goto_3b

    .line 2169
    :cond_5a
    const/16 v30, 0x0

    .line 2170
    .line 2171
    :goto_3b
    move-object/from16 v7, v33

    .line 2172
    .line 2173
    if-eqz v30, :cond_5b

    .line 2174
    .line 2175
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2176
    .line 2177
    .line 2178
    :cond_5b
    iget-object v1, v1, Llc1;->mView:Landroid/view/View;

    .line 2179
    .line 2180
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 2181
    .line 2182
    .line 2183
    new-instance v27, Ljq0;

    .line 2184
    .line 2185
    move-object/from16 v28, v0

    .line 2186
    .line 2187
    move-object/from16 v29, v1

    .line 2188
    .line 2189
    move-object/from16 v31, v4

    .line 2190
    .line 2191
    move-object/from16 v32, v12

    .line 2192
    .line 2193
    invoke-direct/range {v27 .. v32}, Ljq0;-><init>(Landroid/view/ViewGroup;Landroid/view/View;ZLpq3;Lmq0;)V

    .line 2194
    .line 2195
    .line 2196
    move-object/from16 v1, v27

    .line 2197
    .line 2198
    move-object/from16 v0, v29

    .line 2199
    .line 2200
    invoke-virtual {v15, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2201
    .line 2202
    .line 2203
    invoke-virtual {v15, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 2204
    .line 2205
    .line 2206
    invoke-virtual {v15}, Landroid/animation/Animator;->start()V

    .line 2207
    .line 2208
    .line 2209
    const/16 v17, 0x2

    .line 2210
    .line 2211
    invoke-static/range {v17 .. v17}, Lhd1;->G(I)Z

    .line 2212
    .line 2213
    .line 2214
    move-result v0

    .line 2215
    if-eqz v0, :cond_5c

    .line 2216
    .line 2217
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2218
    .line 2219
    const-string v1, "Animator from operation "

    .line 2220
    .line 2221
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2222
    .line 2223
    .line 2224
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2225
    .line 2226
    .line 2227
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2228
    .line 2229
    .line 2230
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2231
    .line 2232
    .line 2233
    move-result-object v0

    .line 2234
    invoke-static {v14, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2235
    .line 2236
    .line 2237
    :cond_5c
    iget-object v0, v12, Lnq0;->b:Ljava/lang/Object;

    .line 2238
    .line 2239
    check-cast v0, Ls20;

    .line 2240
    .line 2241
    new-instance v1, Lgw4;

    .line 2242
    .line 2243
    const/16 v9, 0x12

    .line 2244
    .line 2245
    invoke-direct {v1, v9, v15, v4}, Lgw4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 2246
    .line 2247
    .line 2248
    invoke-virtual {v0, v1}, Ls20;->a(Lr20;)V

    .line 2249
    .line 2250
    .line 2251
    move/from16 v1, p0

    .line 2252
    .line 2253
    move/from16 v8, p2

    .line 2254
    .line 2255
    move-object/from16 v33, v7

    .line 2256
    .line 2257
    move-object/from16 v26, v11

    .line 2258
    .line 2259
    move-object/from16 v0, v28

    .line 2260
    .line 2261
    const/4 v4, 0x0

    .line 2262
    const/4 v10, 0x1

    .line 2263
    move/from16 v7, p1

    .line 2264
    .line 2265
    goto/16 :goto_38

    .line 2266
    .line 2267
    :cond_5d
    move/from16 p0, v1

    .line 2268
    .line 2269
    move-object/from16 v7, v33

    .line 2270
    .line 2271
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 2272
    .line 2273
    .line 2274
    move-result v1

    .line 2275
    const/4 v4, 0x0

    .line 2276
    :goto_3c
    if-ge v4, v1, :cond_64

    .line 2277
    .line 2278
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2279
    .line 2280
    .line 2281
    move-result-object v5

    .line 2282
    add-int/lit8 v4, v4, 0x1

    .line 2283
    .line 2284
    check-cast v5, Lmq0;

    .line 2285
    .line 2286
    iget-object v8, v5, Lnq0;->a:Ljava/lang/Object;

    .line 2287
    .line 2288
    check-cast v8, Lpq3;

    .line 2289
    .line 2290
    iget-object v11, v8, Lpq3;->c:Llc1;

    .line 2291
    .line 2292
    const-string v12, "Ignoring Animation set on "

    .line 2293
    .line 2294
    if-eqz p0, :cond_5f

    .line 2295
    .line 2296
    const/16 v17, 0x2

    .line 2297
    .line 2298
    invoke-static/range {v17 .. v17}, Lhd1;->G(I)Z

    .line 2299
    .line 2300
    .line 2301
    move-result v8

    .line 2302
    if-eqz v8, :cond_5e

    .line 2303
    .line 2304
    new-instance v8, Ljava/lang/StringBuilder;

    .line 2305
    .line 2306
    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2307
    .line 2308
    .line 2309
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2310
    .line 2311
    .line 2312
    const-string v11, " as Animations cannot run alongside Transitions."

    .line 2313
    .line 2314
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2315
    .line 2316
    .line 2317
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2318
    .line 2319
    .line 2320
    move-result-object v8

    .line 2321
    invoke-static {v14, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2322
    .line 2323
    .line 2324
    :cond_5e
    invoke-virtual {v5}, Lnq0;->a()V

    .line 2325
    .line 2326
    .line 2327
    goto :goto_3c

    .line 2328
    :cond_5f
    if-eqz v10, :cond_61

    .line 2329
    .line 2330
    const/16 v17, 0x2

    .line 2331
    .line 2332
    invoke-static/range {v17 .. v17}, Lhd1;->G(I)Z

    .line 2333
    .line 2334
    .line 2335
    move-result v8

    .line 2336
    if-eqz v8, :cond_60

    .line 2337
    .line 2338
    new-instance v8, Ljava/lang/StringBuilder;

    .line 2339
    .line 2340
    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2341
    .line 2342
    .line 2343
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2344
    .line 2345
    .line 2346
    const-string v11, " as Animations cannot run alongside Animators."

    .line 2347
    .line 2348
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2349
    .line 2350
    .line 2351
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2352
    .line 2353
    .line 2354
    move-result-object v8

    .line 2355
    invoke-static {v14, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2356
    .line 2357
    .line 2358
    :cond_60
    invoke-virtual {v5}, Lnq0;->a()V

    .line 2359
    .line 2360
    .line 2361
    goto :goto_3c

    .line 2362
    :cond_61
    iget-object v11, v11, Llc1;->mView:Landroid/view/View;

    .line 2363
    .line 2364
    invoke-virtual {v5, v2}, Lmq0;->l(Landroid/content/Context;)Lgw4;

    .line 2365
    .line 2366
    .line 2367
    move-result-object v12

    .line 2368
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2369
    .line 2370
    .line 2371
    iget-object v12, v12, Lgw4;->o:Ljava/lang/Object;

    .line 2372
    .line 2373
    check-cast v12, Landroid/view/animation/Animation;

    .line 2374
    .line 2375
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2376
    .line 2377
    .line 2378
    iget v15, v8, Lpq3;->a:I

    .line 2379
    .line 2380
    move/from16 p1, v1

    .line 2381
    .line 2382
    const/4 v1, 0x1

    .line 2383
    if-eq v15, v1, :cond_62

    .line 2384
    .line 2385
    invoke-virtual {v11, v12}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2386
    .line 2387
    .line 2388
    invoke-virtual {v5}, Lnq0;->a()V

    .line 2389
    .line 2390
    .line 2391
    goto :goto_3d

    .line 2392
    :cond_62
    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 2393
    .line 2394
    .line 2395
    new-instance v15, Lrc1;

    .line 2396
    .line 2397
    invoke-direct {v15, v12, v0, v11}, Lrc1;-><init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 2398
    .line 2399
    .line 2400
    new-instance v12, Lkq0;

    .line 2401
    .line 2402
    invoke-direct {v12, v8, v0, v11, v5}, Lkq0;-><init>(Lpq3;Landroid/view/ViewGroup;Landroid/view/View;Lmq0;)V

    .line 2403
    .line 2404
    .line 2405
    invoke-virtual {v15, v12}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2406
    .line 2407
    .line 2408
    invoke-virtual {v11, v15}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2409
    .line 2410
    .line 2411
    const/16 v17, 0x2

    .line 2412
    .line 2413
    invoke-static/range {v17 .. v17}, Lhd1;->G(I)Z

    .line 2414
    .line 2415
    .line 2416
    move-result v12

    .line 2417
    if-eqz v12, :cond_63

    .line 2418
    .line 2419
    new-instance v12, Ljava/lang/StringBuilder;

    .line 2420
    .line 2421
    const-string v15, "Animation from operation "

    .line 2422
    .line 2423
    invoke-direct {v12, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2424
    .line 2425
    .line 2426
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2427
    .line 2428
    .line 2429
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2430
    .line 2431
    .line 2432
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2433
    .line 2434
    .line 2435
    move-result-object v12

    .line 2436
    invoke-static {v14, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2437
    .line 2438
    .line 2439
    :cond_63
    :goto_3d
    iget-object v12, v5, Lnq0;->b:Ljava/lang/Object;

    .line 2440
    .line 2441
    check-cast v12, Ls20;

    .line 2442
    .line 2443
    new-instance v27, Lqd1;

    .line 2444
    .line 2445
    const/16 v32, 0x6

    .line 2446
    .line 2447
    move-object/from16 v29, v0

    .line 2448
    .line 2449
    move-object/from16 v30, v5

    .line 2450
    .line 2451
    move-object/from16 v31, v8

    .line 2452
    .line 2453
    move-object/from16 v28, v11

    .line 2454
    .line 2455
    invoke-direct/range {v27 .. v32}, Lqd1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 2456
    .line 2457
    .line 2458
    move-object/from16 v0, v27

    .line 2459
    .line 2460
    move-object/from16 v28, v29

    .line 2461
    .line 2462
    invoke-virtual {v12, v0}, Ls20;->a(Lr20;)V

    .line 2463
    .line 2464
    .line 2465
    move/from16 v1, p1

    .line 2466
    .line 2467
    move-object/from16 v0, v28

    .line 2468
    .line 2469
    goto/16 :goto_3c

    .line 2470
    .line 2471
    :cond_64
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 2472
    .line 2473
    .line 2474
    move-result v0

    .line 2475
    const/4 v4, 0x0

    .line 2476
    :goto_3e
    if-ge v4, v0, :cond_65

    .line 2477
    .line 2478
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2479
    .line 2480
    .line 2481
    move-result-object v1

    .line 2482
    add-int/lit8 v4, v4, 0x1

    .line 2483
    .line 2484
    check-cast v1, Lpq3;

    .line 2485
    .line 2486
    iget-object v2, v1, Lpq3;->c:Llc1;

    .line 2487
    .line 2488
    iget-object v2, v2, Llc1;->mView:Landroid/view/View;

    .line 2489
    .line 2490
    iget v1, v1, Lpq3;->a:I

    .line 2491
    .line 2492
    invoke-static {v2, v1}, Lxw1;->a(Landroid/view/View;I)V

    .line 2493
    .line 2494
    .line 2495
    goto :goto_3e

    .line 2496
    :cond_65
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 2497
    .line 2498
    .line 2499
    const/16 v17, 0x2

    .line 2500
    .line 2501
    invoke-static/range {v17 .. v17}, Lhd1;->G(I)Z

    .line 2502
    .line 2503
    .line 2504
    move-result v0

    .line 2505
    if-eqz v0, :cond_66

    .line 2506
    .line 2507
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2508
    .line 2509
    const-string v1, "Completed executing operations from "

    .line 2510
    .line 2511
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2512
    .line 2513
    .line 2514
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2515
    .line 2516
    .line 2517
    move-object/from16 v1, v25

    .line 2518
    .line 2519
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2520
    .line 2521
    .line 2522
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2523
    .line 2524
    .line 2525
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2526
    .line 2527
    .line 2528
    move-result-object v0

    .line 2529
    invoke-static {v14, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2530
    .line 2531
    .line 2532
    :cond_66
    return-void
.end method

.method public final d()V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lpq0;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lpq0;->a:Landroid/view/ViewGroup;

    .line 7
    .line 8
    sget-object v1, Llb4;->a:Ljava/lang/reflect/Field;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Lpq0;->g()V

    .line 18
    .line 19
    .line 20
    iput-boolean v1, p0, Lpq0;->d:Z

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    iget-object v0, p0, Lpq0;->b:Ljava/util/ArrayList;

    .line 24
    .line 25
    monitor-enter v0

    .line 26
    :try_start_0
    iget-object v2, p0, Lpq0;->b:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_7

    .line 33
    .line 34
    new-instance v2, Ljava/util/ArrayList;

    .line 35
    .line 36
    iget-object v3, p0, Lpq0;->c:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 39
    .line 40
    .line 41
    iget-object v3, p0, Lpq0;->c:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    move v4, v1

    .line 51
    :cond_2
    :goto_0
    const/4 v5, 0x2

    .line 52
    if-ge v4, v3, :cond_4

    .line 53
    .line 54
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    add-int/lit8 v4, v4, 0x1

    .line 59
    .line 60
    check-cast v6, Lpq3;

    .line 61
    .line 62
    invoke-static {v5}, Lhd1;->G(I)Z

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    if-eqz v5, :cond_3

    .line 67
    .line 68
    const-string v5, "FragmentManager"

    .line 69
    .line 70
    new-instance v7, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    const-string v8, "SpecialEffectsController: Cancelling operation "

    .line 76
    .line 77
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v7

    .line 87
    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :catchall_0
    move-exception p0

    .line 92
    goto :goto_3

    .line 93
    :cond_3
    :goto_1
    invoke-virtual {v6}, Lpq3;->a()V

    .line 94
    .line 95
    .line 96
    iget-boolean v5, v6, Lpq3;->g:Z

    .line 97
    .line 98
    if-nez v5, :cond_2

    .line 99
    .line 100
    iget-object v5, p0, Lpq0;->c:Ljava/util/ArrayList;

    .line 101
    .line 102
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_4
    invoke-virtual {p0}, Lpq0;->l()V

    .line 107
    .line 108
    .line 109
    new-instance v2, Ljava/util/ArrayList;

    .line 110
    .line 111
    iget-object v3, p0, Lpq0;->b:Ljava/util/ArrayList;

    .line 112
    .line 113
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 114
    .line 115
    .line 116
    iget-object v3, p0, Lpq0;->b:Ljava/util/ArrayList;

    .line 117
    .line 118
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 119
    .line 120
    .line 121
    iget-object v3, p0, Lpq0;->c:Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 124
    .line 125
    .line 126
    invoke-static {v5}, Lhd1;->G(I)Z

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    if-eqz v3, :cond_5

    .line 131
    .line 132
    const-string v3, "FragmentManager"

    .line 133
    .line 134
    const-string v4, "SpecialEffectsController: Executing pending operations"

    .line 135
    .line 136
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 140
    .line 141
    .line 142
    move-result v3

    .line 143
    move v4, v1

    .line 144
    :goto_2
    if-ge v4, v3, :cond_6

    .line 145
    .line 146
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    add-int/lit8 v4, v4, 0x1

    .line 151
    .line 152
    check-cast v6, Lpq3;

    .line 153
    .line 154
    invoke-virtual {v6}, Lpq3;->d()V

    .line 155
    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_6
    iget-boolean v3, p0, Lpq0;->d:Z

    .line 159
    .line 160
    invoke-virtual {p0, v2, v3}, Lpq0;->c(Ljava/util/ArrayList;Z)V

    .line 161
    .line 162
    .line 163
    iput-boolean v1, p0, Lpq0;->d:Z

    .line 164
    .line 165
    invoke-static {v5}, Lhd1;->G(I)Z

    .line 166
    .line 167
    .line 168
    move-result p0

    .line 169
    if-eqz p0, :cond_7

    .line 170
    .line 171
    const-string p0, "FragmentManager"

    .line 172
    .line 173
    const-string v1, "SpecialEffectsController: Finished executing pending operations"

    .line 174
    .line 175
    invoke-static {p0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    .line 177
    .line 178
    :cond_7
    monitor-exit v0

    .line 179
    return-void

    .line 180
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    throw p0
.end method

.method public final f(Llc1;)Lpq3;
    .locals 4

    .line 1
    iget-object p0, p0, Lpq0;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :cond_0
    if-ge v1, v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    add-int/lit8 v1, v1, 0x1

    .line 15
    .line 16
    check-cast v2, Lpq3;

    .line 17
    .line 18
    iget-object v3, v2, Lpq3;->c:Llc1;

    .line 19
    .line 20
    invoke-virtual {v3, p1}, Llc1;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    iget-boolean v3, v2, Lpq3;->f:Z

    .line 27
    .line 28
    if-nez v3, :cond_0

    .line 29
    .line 30
    return-object v2

    .line 31
    :cond_1
    const/4 p0, 0x0

    .line 32
    return-object p0
.end method

.method public final g()V
    .locals 12

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Lhd1;->G(I)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const-string v1, "FragmentManager"

    .line 9
    .line 10
    const-string v2, "SpecialEffectsController: Forcing all operations to complete"

    .line 11
    .line 12
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v1, p0, Lpq0;->a:Landroid/view/ViewGroup;

    .line 16
    .line 17
    sget-object v2, Llb4;->a:Ljava/lang/reflect/Field;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    iget-object v2, p0, Lpq0;->b:Ljava/util/ArrayList;

    .line 24
    .line 25
    monitor-enter v2

    .line 26
    :try_start_0
    invoke-virtual {p0}, Lpq0;->l()V

    .line 27
    .line 28
    .line 29
    iget-object v3, p0, Lpq0;->b:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    const/4 v5, 0x0

    .line 36
    move v6, v5

    .line 37
    :goto_0
    if-ge v6, v4, :cond_1

    .line 38
    .line 39
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    add-int/lit8 v6, v6, 0x1

    .line 44
    .line 45
    check-cast v7, Lpq3;

    .line 46
    .line 47
    invoke-virtual {v7}, Lpq3;->d()V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto/16 :goto_5

    .line 53
    .line 54
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    .line 55
    .line 56
    iget-object v4, p0, Lpq0;->c:Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    move v6, v5

    .line 66
    :goto_1
    if-ge v6, v4, :cond_4

    .line 67
    .line 68
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v7

    .line 72
    add-int/lit8 v6, v6, 0x1

    .line 73
    .line 74
    check-cast v7, Lpq3;

    .line 75
    .line 76
    invoke-static {v0}, Lhd1;->G(I)Z

    .line 77
    .line 78
    .line 79
    move-result v8

    .line 80
    if-eqz v8, :cond_3

    .line 81
    .line 82
    const-string v8, "FragmentManager"

    .line 83
    .line 84
    new-instance v9, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    const-string v10, "SpecialEffectsController: "

    .line 90
    .line 91
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    if-eqz v1, :cond_2

    .line 95
    .line 96
    const-string v10, ""

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    const-string v11, "Container "

    .line 105
    .line 106
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    iget-object v11, p0, Lpq0;->a:Landroid/view/ViewGroup;

    .line 110
    .line 111
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v11, " is not attached to window. "

    .line 115
    .line 116
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v10

    .line 123
    :goto_2
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v10, "Cancelling running operation "

    .line 127
    .line 128
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v9

    .line 138
    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    :cond_3
    invoke-virtual {v7}, Lpq3;->a()V

    .line 142
    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    .line 146
    .line 147
    iget-object v4, p0, Lpq0;->b:Ljava/util/ArrayList;

    .line 148
    .line 149
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    :goto_3
    if-ge v5, v4, :cond_7

    .line 157
    .line 158
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    add-int/lit8 v5, v5, 0x1

    .line 163
    .line 164
    check-cast v6, Lpq3;

    .line 165
    .line 166
    invoke-static {v0}, Lhd1;->G(I)Z

    .line 167
    .line 168
    .line 169
    move-result v7

    .line 170
    if-eqz v7, :cond_6

    .line 171
    .line 172
    const-string v7, "FragmentManager"

    .line 173
    .line 174
    new-instance v8, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .line 178
    .line 179
    const-string v9, "SpecialEffectsController: "

    .line 180
    .line 181
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    if-eqz v1, :cond_5

    .line 185
    .line 186
    const-string v9, ""

    .line 187
    .line 188
    goto :goto_4

    .line 189
    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .line 193
    .line 194
    const-string v10, "Container "

    .line 195
    .line 196
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    iget-object v10, p0, Lpq0;->a:Landroid/view/ViewGroup;

    .line 200
    .line 201
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    const-string v10, " is not attached to window. "

    .line 205
    .line 206
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v9

    .line 213
    :goto_4
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    const-string v9, "Cancelling pending operation "

    .line 217
    .line 218
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v8

    .line 228
    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    .line 230
    .line 231
    :cond_6
    invoke-virtual {v6}, Lpq3;->a()V

    .line 232
    .line 233
    .line 234
    goto :goto_3

    .line 235
    :cond_7
    monitor-exit v2

    .line 236
    return-void

    .line 237
    :goto_5
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    throw p0
.end method

.method public final j()V
    .locals 6

    .line 1
    iget-object v0, p0, Lpq0;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lpq0;->l()V

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Lpq0;->e:Z

    .line 9
    .line 10
    iget-object v1, p0, Lpq0;->b:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    add-int/lit8 v1, v1, -0x1

    .line 17
    .line 18
    :goto_0
    if-ltz v1, :cond_1

    .line 19
    .line 20
    iget-object v2, p0, Lpq0;->b:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lpq3;

    .line 27
    .line 28
    iget-object v3, v2, Lpq3;->c:Llc1;

    .line 29
    .line 30
    iget-object v3, v3, Llc1;->mView:Landroid/view/View;

    .line 31
    .line 32
    invoke-static {v3}, Lxw1;->f(Landroid/view/View;)I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    iget v4, v2, Lpq3;->a:I

    .line 37
    .line 38
    const/4 v5, 0x2

    .line 39
    if-ne v4, v5, :cond_0

    .line 40
    .line 41
    if-eq v3, v5, :cond_0

    .line 42
    .line 43
    iget-object v1, v2, Lpq3;->c:Llc1;

    .line 44
    .line 45
    invoke-virtual {v1}, Llc1;->isPostponed()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    iput-boolean v1, p0, Lpq0;->e:Z

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto :goto_2

    .line 54
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    :goto_1
    monitor-exit v0

    .line 58
    return-void

    .line 59
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    throw p0
.end method

.method public final l()V
    .locals 5

    .line 1
    iget-object p0, p0, Lpq0;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :cond_0
    :goto_0
    if-ge v1, v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    add-int/lit8 v1, v1, 0x1

    .line 15
    .line 16
    check-cast v2, Lpq3;

    .line 17
    .line 18
    iget v3, v2, Lpq3;->b:I

    .line 19
    .line 20
    const/4 v4, 0x2

    .line 21
    if-ne v3, v4, :cond_0

    .line 22
    .line 23
    iget-object v3, v2, Lpq3;->c:Llc1;

    .line 24
    .line 25
    invoke-virtual {v3}, Llc1;->requireView()Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    invoke-static {v3}, Lxw1;->e(I)I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    const/4 v4, 0x1

    .line 38
    invoke-virtual {v2, v3, v4}, Lpq3;->c(II)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    return-void
.end method
