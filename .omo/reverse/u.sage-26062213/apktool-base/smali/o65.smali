.class public final Lo65;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier;


# instance fields
.field public final synthetic a:[B


# direct methods
.method public constructor <init>(Ls65;[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lo65;->a:[B

    .line 5
    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final notifyListener(Ljava/lang/Object;)V
    .locals 11

    .line 1
    check-cast p1, Lkc5;

    .line 2
    .line 3
    :try_start_0
    iget-object p0, p0, Lo65;->a:[B

    .line 4
    .line 5
    sget-object v0, Lkn4;->a:Lkn4;

    .line 6
    .line 7
    sget v0, Lum4;->a:I

    .line 8
    .line 9
    sget-object v0, Lkn4;->b:Lkn4;

    .line 10
    .line 11
    invoke-static {p0, v0}, Lwb5;->u([BLkn4;)Lwb5;

    .line 12
    .line 13
    .line 14
    move-result-object p0
    :try_end_0
    .catch Lfo4; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    iget-object v0, p1, Lkc5;->b:Llc5;

    .line 16
    .line 17
    iget-object v0, v0, Llc5;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x0

    .line 24
    move v2, v1

    .line 25
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_c

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Lfb5;

    .line 36
    .line 37
    invoke-virtual {p0}, Lwb5;->t()Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    sget-object v3, Lqb5;->i:Lps0;

    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    const/4 v5, 0x1

    .line 50
    if-eqz v4, :cond_a

    .line 51
    .line 52
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    if-eqz v6, :cond_1

    .line 57
    .line 58
    goto/16 :goto_7

    .line 59
    .line 60
    :cond_1
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    move v6, v1

    .line 65
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v7

    .line 69
    if-eqz v7, :cond_b

    .line 70
    .line 71
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    check-cast v7, Ljava/lang/String;

    .line 76
    .line 77
    iget-object v8, v3, Lps0;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 78
    .line 79
    invoke-virtual {v8, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    check-cast v7, Lxa5;

    .line 84
    .line 85
    if-eqz v7, :cond_2

    .line 86
    .line 87
    iget-object v7, v7, Lxa5;->a:Lqb5;

    .line 88
    .line 89
    iget-boolean v8, v7, Lqb5;->e:Z

    .line 90
    .line 91
    if-nez v8, :cond_3

    .line 92
    .line 93
    move v7, v5

    .line 94
    goto :goto_6

    .line 95
    :cond_3
    iget-object v8, v7, Lqb5;->a:Lic;

    .line 96
    .line 97
    if-eqz v8, :cond_9

    .line 98
    .line 99
    iget-boolean v9, v8, Lic;->a:Z

    .line 100
    .line 101
    const/4 v10, 0x3

    .line 102
    if-nez v9, :cond_5

    .line 103
    .line 104
    iget-object v8, v8, Lic;->e:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast v8, La13;

    .line 107
    .line 108
    iget v8, v8, La13;->b:I

    .line 109
    .line 110
    if-ne v8, v10, :cond_4

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_4
    iget-object v8, v7, Lqb5;->h:Lui3;

    .line 114
    .line 115
    invoke-virtual {v8}, Lui3;->p()Z

    .line 116
    .line 117
    .line 118
    move-result v8

    .line 119
    if-eqz v8, :cond_9

    .line 120
    .line 121
    :cond_5
    :goto_2
    monitor-enter v7

    .line 122
    :try_start_1
    iget-object v8, v7, Lqb5;->a:Lic;

    .line 123
    .line 124
    if-eqz v8, :cond_8

    .line 125
    .line 126
    iget-boolean v9, v8, Lic;->a:Z

    .line 127
    .line 128
    if-nez v9, :cond_7

    .line 129
    .line 130
    iget-object v8, v8, Lic;->e:Ljava/lang/Object;

    .line 131
    .line 132
    check-cast v8, La13;

    .line 133
    .line 134
    iget v8, v8, La13;->b:I

    .line 135
    .line 136
    if-ne v8, v10, :cond_6

    .line 137
    .line 138
    move v8, v5

    .line 139
    goto :goto_3

    .line 140
    :cond_6
    move v8, v1

    .line 141
    :goto_3
    if-nez v8, :cond_7

    .line 142
    .line 143
    iget-object v8, v7, Lqb5;->h:Lui3;

    .line 144
    .line 145
    invoke-virtual {v8}, Lui3;->p()Z

    .line 146
    .line 147
    .line 148
    move-result v8

    .line 149
    if-eqz v8, :cond_8

    .line 150
    .line 151
    goto :goto_4

    .line 152
    :catchall_0
    move-exception p0

    .line 153
    goto :goto_5

    .line 154
    :cond_7
    :goto_4
    const/4 v8, 0x0

    .line 155
    iput-object v8, v7, Lqb5;->a:Lic;

    .line 156
    .line 157
    iget-object v8, v7, Lqb5;->g:Ljj;

    .line 158
    .line 159
    iget-object v8, v8, Ljj;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 160
    .line 161
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 162
    .line 163
    .line 164
    :cond_8
    monitor-exit v7

    .line 165
    :cond_9
    move v7, v1

    .line 166
    goto :goto_6

    .line 167
    :goto_5
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    throw p0

    .line 169
    :goto_6
    or-int/2addr v6, v7

    .line 170
    goto :goto_1

    .line 171
    :cond_a
    :goto_7
    move v6, v1

    .line 172
    :cond_b
    if-eqz v6, :cond_0

    .line 173
    .line 174
    if-nez v2, :cond_0

    .line 175
    .line 176
    iget-object v2, p1, Lkc5;->a:Loc5;

    .line 177
    .line 178
    invoke-interface {v2}, Loc5;->zza()V

    .line 179
    .line 180
    .line 181
    move v2, v5

    .line 182
    goto/16 :goto_0

    .line 183
    .line 184
    :cond_c
    return-void

    .line 185
    :catch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    .line 187
    .line 188
    return-void
.end method

.method public final onNotifyListenerFailed()V
    .locals 0

    .line 1
    return-void
.end method
