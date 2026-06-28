.class public final Lq41;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lz21;


# instance fields
.field public n:J

.field public o:Ljava/lang/Object;

.field public p:Ljava/lang/Object;

.field public q:Ljava/io/Serializable;

.field public final r:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lf35;J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lq41;->r:Ljava/lang/Object;

    .line 5
    .line 6
    const-string p1, "health_monitor"

    .line 7
    .line 8
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    const-wide/16 v0, 0x0

    .line 12
    .line 13
    cmp-long p1, p2, v0

    .line 14
    .line 15
    if-lez p1, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 21
    .line 22
    .line 23
    const-string p1, "health_monitor:start"

    .line 24
    .line 25
    iput-object p1, p0, Lq41;->o:Ljava/lang/Object;

    .line 26
    .line 27
    const-string p1, "health_monitor:count"

    .line 28
    .line 29
    iput-object p1, p0, Lq41;->p:Ljava/lang/Object;

    .line 30
    .line 31
    const-string p1, "health_monitor:value"

    .line 32
    .line 33
    iput-object p1, p0, Lq41;->q:Ljava/io/Serializable;

    .line 34
    .line 35
    iput-wide p2, p0, Lq41;->n:J

    .line 36
    .line 37
    return-void
.end method

.method public synthetic constructor <init>(Lpb5;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq41;->r:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lu23;Ltw3;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lq41;->o:Ljava/lang/Object;

    .line 41
    iput-object p2, p0, Lq41;->p:Ljava/lang/Object;

    const-wide/high16 p1, -0x8000000000000000L

    .line 42
    iput-wide p1, p0, Lq41;->n:J

    .line 43
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lq41;->q:Ljava/io/Serializable;

    .line 44
    new-instance p1, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object p1, p0, Lq41;->r:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lq41;->q:Ljava/io/Serializable;

    .line 2
    .line 3
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lwa3;

    .line 23
    .line 24
    invoke-interface {v2}, Lwa3;->cancel()V

    .line 25
    .line 26
    .line 27
    invoke-interface {v2}, Lwa3;->a()Lwa3;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    if-nez v2, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object v3, p0, Lq41;->o:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v3, Lu23;

    .line 37
    .line 38
    iget-object v3, v3, Lu23;->p:Lvh;

    .line 39
    .line 40
    invoke-virtual {v3, v2}, Lvh;->addLast(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public b()Lva3;
    .locals 7

    .line 1
    iget-object v0, p0, Lq41;->o:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lu23;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lu23;->a(Li23;)Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-eqz v2, :cond_2

    .line 11
    .line 12
    :try_start_0
    invoke-virtual {v0}, Lu23;->b()Lwa3;

    .line 13
    .line 14
    .line 15
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception v2

    .line 18
    new-instance v3, Ln41;

    .line 19
    .line 20
    invoke-direct {v3, v2}, Ln41;-><init>(Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    move-object v2, v3

    .line 24
    :goto_0
    invoke-interface {v2}, Lwa3;->d()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    new-instance p0, Lva3;

    .line 31
    .line 32
    const/4 v0, 0x6

    .line 33
    invoke-direct {p0, v2, v1, v0}, Lva3;-><init>(Lwa3;Ljava/lang/Throwable;I)V

    .line 34
    .line 35
    .line 36
    return-object p0

    .line 37
    :cond_0
    instance-of v3, v2, Ln41;

    .line 38
    .line 39
    if-eqz v3, :cond_1

    .line 40
    .line 41
    check-cast v2, Ln41;

    .line 42
    .line 43
    iget-object p0, v2, Ln41;->a:Lva3;

    .line 44
    .line 45
    return-object p0

    .line 46
    :cond_1
    iget-object v3, p0, Lq41;->q:Ljava/io/Serializable;

    .line 47
    .line 48
    check-cast v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 49
    .line 50
    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    new-instance v3, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    sget-object v4, Lhi4;->b:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v4, " connect "

    .line 64
    .line 65
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object v0, v0, Lu23;->i:Le7;

    .line 69
    .line 70
    iget-object v0, v0, Le7;->h:Lcn1;

    .line 71
    .line 72
    invoke-virtual {v0}, Lcn1;->f()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    iget-object v3, p0, Lq41;->p:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v3, Ltw3;

    .line 86
    .line 87
    invoke-virtual {v3}, Ltw3;->d()Lsw3;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    new-instance v4, Lp41;

    .line 92
    .line 93
    invoke-direct {v4, v0, v2, p0}, Lp41;-><init>(Ljava/lang/String;Lwa3;Lq41;)V

    .line 94
    .line 95
    .line 96
    const-wide/16 v5, 0x0

    .line 97
    .line 98
    invoke-virtual {v3, v4, v5, v6}, Lsw3;->c(Lnw3;J)V

    .line 99
    .line 100
    .line 101
    :cond_2
    return-object v1
.end method

.method public c(JLu35;)Z
    .locals 10

    .line 1
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lq41;->q:Ljava/io/Serializable;

    .line 5
    .line 6
    check-cast v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lq41;->q:Ljava/io/Serializable;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lq41;->p:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Ljava/util/ArrayList;

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    new-instance v0, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lq41;->p:Ljava/lang/Object;

    .line 29
    .line 30
    :cond_1
    iget-object v0, p0, Lq41;->q:Ljava/io/Serializable;

    .line 31
    .line 32
    check-cast v0, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    const/4 v1, 0x0

    .line 39
    if-nez v0, :cond_2

    .line 40
    .line 41
    iget-object v0, p0, Lq41;->q:Ljava/io/Serializable;

    .line 42
    .line 43
    check-cast v0, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Lu35;

    .line 50
    .line 51
    invoke-virtual {v0}, Lu35;->A()J

    .line 52
    .line 53
    .line 54
    move-result-wide v2

    .line 55
    const-wide/16 v4, 0x3e8

    .line 56
    .line 57
    div-long/2addr v2, v4

    .line 58
    const-wide/16 v6, 0x3c

    .line 59
    .line 60
    div-long/2addr v2, v6

    .line 61
    div-long/2addr v2, v6

    .line 62
    invoke-virtual {p3}, Lu35;->A()J

    .line 63
    .line 64
    .line 65
    move-result-wide v8

    .line 66
    div-long/2addr v8, v4

    .line 67
    div-long/2addr v8, v6

    .line 68
    div-long/2addr v8, v6

    .line 69
    cmp-long v0, v2, v8

    .line 70
    .line 71
    if-eqz v0, :cond_2

    .line 72
    .line 73
    goto/16 :goto_2

    .line 74
    .line 75
    :cond_2
    iget-wide v2, p0, Lq41;->n:J

    .line 76
    .line 77
    invoke-virtual {p3}, Lrn4;->m()I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    int-to-long v4, v0

    .line 82
    add-long/2addr v2, v4

    .line 83
    iget-object v0, p0, Lq41;->r:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v0, Lpb5;

    .line 86
    .line 87
    invoke-virtual {v0}, Lpb5;->e0()Lds4;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    sget-object v5, Le05;->Y0:Ld05;

    .line 92
    .line 93
    const/4 v6, 0x0

    .line 94
    invoke-virtual {v4, v6, v5}, Lds4;->G(Ljava/lang/String;Ld05;)Z

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    if-eqz v4, :cond_3

    .line 99
    .line 100
    iget-object v4, p0, Lq41;->q:Ljava/io/Serializable;

    .line 101
    .line 102
    check-cast v4, Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    if-nez v4, :cond_4

    .line 109
    .line 110
    invoke-virtual {v0}, Lpb5;->e0()Lds4;

    .line 111
    .line 112
    .line 113
    sget-object v4, Le05;->j:Ld05;

    .line 114
    .line 115
    invoke-virtual {v4, v6}, Ld05;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    check-cast v4, Ljava/lang/Integer;

    .line 120
    .line 121
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 122
    .line 123
    .line 124
    move-result v4

    .line 125
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    int-to-long v4, v4

    .line 130
    cmp-long v4, v2, v4

    .line 131
    .line 132
    if-gez v4, :cond_6

    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_3
    invoke-virtual {v0}, Lpb5;->e0()Lds4;

    .line 136
    .line 137
    .line 138
    sget-object v4, Le05;->j:Ld05;

    .line 139
    .line 140
    invoke-virtual {v4, v6}, Ld05;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    check-cast v4, Ljava/lang/Integer;

    .line 145
    .line 146
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 147
    .line 148
    .line 149
    move-result v4

    .line 150
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    .line 151
    .line 152
    .line 153
    move-result v4

    .line 154
    int-to-long v4, v4

    .line 155
    cmp-long v4, v2, v4

    .line 156
    .line 157
    if-ltz v4, :cond_4

    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_4
    :goto_0
    iput-wide v2, p0, Lq41;->n:J

    .line 161
    .line 162
    iget-object v2, p0, Lq41;->q:Ljava/io/Serializable;

    .line 163
    .line 164
    check-cast v2, Ljava/util/ArrayList;

    .line 165
    .line 166
    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    iget-object p3, p0, Lq41;->p:Ljava/lang/Object;

    .line 170
    .line 171
    check-cast p3, Ljava/util/ArrayList;

    .line 172
    .line 173
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    iget-object p1, p0, Lq41;->o:Ljava/lang/Object;

    .line 181
    .line 182
    check-cast p1, Lu45;

    .line 183
    .line 184
    if-nez p1, :cond_5

    .line 185
    .line 186
    goto :goto_1

    .line 187
    :cond_5
    invoke-virtual {p1}, Lu45;->t()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v6

    .line 191
    :goto_1
    iget-object p0, p0, Lq41;->q:Ljava/io/Serializable;

    .line 192
    .line 193
    check-cast p0, Ljava/util/ArrayList;

    .line 194
    .line 195
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 196
    .line 197
    .line 198
    move-result p0

    .line 199
    invoke-virtual {v0}, Lpb5;->e0()Lds4;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    sget-object p2, Le05;->k:Ld05;

    .line 204
    .line 205
    invoke-virtual {p1, v6, p2}, Lds4;->E(Ljava/lang/String;Ld05;)I

    .line 206
    .line 207
    .line 208
    move-result p1

    .line 209
    const/4 p2, 0x1

    .line 210
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    .line 211
    .line 212
    .line 213
    move-result p1

    .line 214
    if-lt p0, p1, :cond_7

    .line 215
    .line 216
    :cond_6
    :goto_2
    return v1

    .line 217
    :cond_7
    return p2
.end method

.method public d()V
    .locals 4

    .line 1
    iget-object v0, p0, Lq41;->r:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lf35;

    .line 4
    .line 5
    invoke-virtual {v0}, Lib0;->v()V

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lib0;->a:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Lr45;

    .line 11
    .line 12
    iget-object v1, v1, Lr45;->k:Lcom/google/android/gms/common/util/Clock;

    .line 13
    .line 14
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    invoke-virtual {v0}, Lf35;->z()Landroid/content/SharedPreferences;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v3, p0, Lq41;->p:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v3, Ljava/lang/String;

    .line 29
    .line 30
    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 31
    .line 32
    .line 33
    iget-object v3, p0, Lq41;->q:Ljava/io/Serializable;

    .line 34
    .line 35
    check-cast v3, Ljava/lang/String;

    .line 36
    .line 37
    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 38
    .line 39
    .line 40
    iget-object p0, p0, Lq41;->o:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p0, Ljava/lang/String;

    .line 43
    .line 44
    invoke-interface {v0, p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 45
    .line 46
    .line 47
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public e()Li23;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    move-object v1, v0

    .line 3
    :cond_0
    :goto_0
    :try_start_0
    iget-object v2, p0, Lq41;->q:Ljava/io/Serializable;

    .line 4
    .line 5
    check-cast v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_2

    .line 12
    .line 13
    iget-object v2, p0, Lq41;->o:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v2, Lu23;

    .line 16
    .line 17
    invoke-virtual {v2, v0}, Lu23;->a(Li23;)Z

    .line 18
    .line 19
    .line 20
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    invoke-virtual {p0}, Lq41;->a()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    throw v1

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    goto/16 :goto_8

    .line 33
    .line 34
    :cond_2
    :goto_1
    :try_start_1
    iget-object v2, p0, Lq41;->o:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v2, Lu23;

    .line 37
    .line 38
    iget-object v2, v2, Lu23;->k:Lh23;

    .line 39
    .line 40
    iget-boolean v2, v2, Lh23;->C:Z

    .line 41
    .line 42
    if-nez v2, :cond_f

    .line 43
    .line 44
    iget-object v2, p0, Lq41;->p:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v2, Ltw3;

    .line 47
    .line 48
    iget-object v2, v2, Ltw3;->a:Lra3;

    .line 49
    .line 50
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 51
    .line 52
    .line 53
    move-result-wide v2

    .line 54
    iget-wide v4, p0, Lq41;->n:J

    .line 55
    .line 56
    sub-long/2addr v4, v2

    .line 57
    iget-object v6, p0, Lq41;->q:Ljava/io/Serializable;

    .line 58
    .line 59
    check-cast v6, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 60
    .line 61
    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    if-nez v6, :cond_4

    .line 66
    .line 67
    const-wide/16 v6, 0x0

    .line 68
    .line 69
    cmp-long v6, v4, v6

    .line 70
    .line 71
    if-gtz v6, :cond_3

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_3
    move-wide v5, v4

    .line 75
    move-object v4, v0

    .line 76
    goto :goto_3

    .line 77
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lq41;->b()Lva3;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    const-wide/32 v5, 0xee6b280

    .line 82
    .line 83
    .line 84
    add-long/2addr v2, v5

    .line 85
    iput-wide v2, p0, Lq41;->n:J

    .line 86
    .line 87
    :goto_3
    if-nez v4, :cond_7

    .line 88
    .line 89
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 90
    .line 91
    iget-object v3, p0, Lq41;->q:Ljava/io/Serializable;

    .line 92
    .line 93
    check-cast v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 94
    .line 95
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    if-eqz v4, :cond_5

    .line 100
    .line 101
    :goto_4
    move-object v4, v0

    .line 102
    goto :goto_5

    .line 103
    :cond_5
    iget-object v4, p0, Lq41;->r:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast v4, Ljava/util/concurrent/LinkedBlockingDeque;

    .line 106
    .line 107
    invoke-virtual {v4, v5, v6, v2}, Ljava/util/concurrent/LinkedBlockingDeque;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    check-cast v2, Lva3;

    .line 112
    .line 113
    if-nez v2, :cond_6

    .line 114
    .line 115
    goto :goto_4

    .line 116
    :cond_6
    iget-object v4, v2, Lva3;->a:Lwa3;

    .line 117
    .line 118
    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-object v4, v2

    .line 122
    :goto_5
    if-nez v4, :cond_7

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_7
    iget-object v2, v4, Lva3;->b:Lwa3;

    .line 126
    .line 127
    const/4 v3, 0x0

    .line 128
    const/4 v5, 0x1

    .line 129
    if-nez v2, :cond_8

    .line 130
    .line 131
    iget-object v2, v4, Lva3;->c:Ljava/lang/Throwable;

    .line 132
    .line 133
    if-nez v2, :cond_8

    .line 134
    .line 135
    move v2, v5

    .line 136
    goto :goto_6

    .line 137
    :cond_8
    move v2, v3

    .line 138
    :goto_6
    if-eqz v2, :cond_b

    .line 139
    .line 140
    invoke-virtual {p0}, Lq41;->a()V

    .line 141
    .line 142
    .line 143
    iget-object v2, v4, Lva3;->a:Lwa3;

    .line 144
    .line 145
    invoke-interface {v2}, Lwa3;->d()Z

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    if-nez v2, :cond_9

    .line 150
    .line 151
    iget-object v2, v4, Lva3;->a:Lwa3;

    .line 152
    .line 153
    invoke-interface {v2}, Lwa3;->b()Lva3;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    :cond_9
    iget-object v2, v4, Lva3;->b:Lwa3;

    .line 158
    .line 159
    if-nez v2, :cond_a

    .line 160
    .line 161
    iget-object v2, v4, Lva3;->c:Ljava/lang/Throwable;

    .line 162
    .line 163
    if-nez v2, :cond_a

    .line 164
    .line 165
    move v3, v5

    .line 166
    :cond_a
    if-eqz v3, :cond_b

    .line 167
    .line 168
    iget-object v0, v4, Lva3;->a:Lwa3;

    .line 169
    .line 170
    invoke-interface {v0}, Lwa3;->c()Li23;

    .line 171
    .line 172
    .line 173
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    invoke-virtual {p0}, Lq41;->a()V

    .line 175
    .line 176
    .line 177
    return-object v0

    .line 178
    :cond_b
    :try_start_2
    iget-object v2, v4, Lva3;->c:Ljava/lang/Throwable;

    .line 179
    .line 180
    if-eqz v2, :cond_e

    .line 181
    .line 182
    instance-of v3, v2, Ljava/io/IOException;

    .line 183
    .line 184
    if-eqz v3, :cond_d

    .line 185
    .line 186
    if-nez v1, :cond_c

    .line 187
    .line 188
    check-cast v2, Ljava/io/IOException;

    .line 189
    .line 190
    move-object v1, v2

    .line 191
    goto :goto_7

    .line 192
    :cond_c
    invoke-static {v1, v2}, Lon4;->j(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 193
    .line 194
    .line 195
    goto :goto_7

    .line 196
    :cond_d
    throw v2

    .line 197
    :cond_e
    :goto_7
    iget-object v2, v4, Lva3;->b:Lwa3;

    .line 198
    .line 199
    if-eqz v2, :cond_0

    .line 200
    .line 201
    iget-object v3, p0, Lq41;->o:Ljava/lang/Object;

    .line 202
    .line 203
    check-cast v3, Lu23;

    .line 204
    .line 205
    iget-object v3, v3, Lu23;->p:Lvh;

    .line 206
    .line 207
    invoke-virtual {v3, v2}, Lvh;->addFirst(Ljava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    goto/16 :goto_0

    .line 211
    .line 212
    :cond_f
    new-instance v0, Ljava/io/IOException;

    .line 213
    .line 214
    const-string v1, "Canceled"

    .line 215
    .line 216
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 220
    :goto_8
    invoke-virtual {p0}, Lq41;->a()V

    .line 221
    .line 222
    .line 223
    throw v0
.end method

.method public g()Lu23;
    .locals 0

    .line 1
    iget-object p0, p0, Lq41;->o:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lu23;

    .line 4
    .line 5
    return-object p0
.end method
