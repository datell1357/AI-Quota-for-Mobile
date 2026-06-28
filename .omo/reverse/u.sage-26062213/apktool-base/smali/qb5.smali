.class public final Lqb5;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final i:Lps0;

.field public static final j:Lva5;


# instance fields
.field public volatile a:Lic;

.field public final b:Lo75;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Z

.field public final f:Lnp1;

.field public final g:Ljj;

.field public final h:Lui3;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lps0;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lps0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lqb5;->i:Lps0;

    .line 8
    .line 9
    new-instance v0, Lva5;

    .line 10
    .line 11
    sget-object v1, Lwp4;->p:Lwp4;

    .line 12
    .line 13
    sget v2, Lnp1;->p:I

    .line 14
    .line 15
    sget-object v2, Lf53;->w:Lf53;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-direct {v0, v1, v3, v2}, Lva5;-><init>(Lze1;ZLnp1;)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lqb5;->j:Lva5;

    .line 22
    .line 23
    return-void
.end method

.method public constructor <init>(Lo75;Lva5;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lqb5;->b:Lo75;

    .line 5
    .line 6
    iget-object v0, p1, Lo75;->b:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {p2, v0}, Lva5;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lqb5;->c:Ljava/lang/String;

    .line 13
    .line 14
    const-string v1, ""

    .line 15
    .line 16
    iput-object v1, p0, Lqb5;->d:Ljava/lang/String;

    .line 17
    .line 18
    iget-boolean v1, p2, Lva5;->b:Z

    .line 19
    .line 20
    iput-boolean v1, p0, Lqb5;->e:Z

    .line 21
    .line 22
    iget-object p2, p2, Lva5;->c:Lnp1;

    .line 23
    .line 24
    iput-object p2, p0, Lqb5;->f:Lnp1;

    .line 25
    .line 26
    const/4 p2, 0x0

    .line 27
    iput-object p2, p0, Lqb5;->a:Lic;

    .line 28
    .line 29
    new-instance p2, Ljj;

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    invoke-direct {p2, v1}, Ljj;-><init>(I)V

    .line 33
    .line 34
    .line 35
    iput-object p2, p0, Lqb5;->g:Ljj;

    .line 36
    .line 37
    new-instance p2, Lui3;

    .line 38
    .line 39
    invoke-direct {p2, p1, v0}, Lui3;-><init>(Lo75;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iput-object p2, p0, Lqb5;->h:Lui3;

    .line 43
    .line 44
    return-void
.end method


# virtual methods
.method public final a()Lic;
    .locals 6

    .line 1
    iget-object v0, p0, Lqb5;->a:Lic;

    .line 2
    .line 3
    if-nez v0, :cond_5

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lqb5;->a:Lic;

    .line 7
    .line 8
    if-nez v0, :cond_4

    .line 9
    .line 10
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    .line 11
    .line 12
    .line 13
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :try_start_1
    iget-object v1, p0, Lqb5;->h:Lui3;

    .line 15
    .line 16
    invoke-virtual {v1}, Lui3;->l()Lic;

    .line 17
    .line 18
    .line 19
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 20
    :try_start_2
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, v1, Lic;->e:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v0, La13;

    .line 26
    .line 27
    iget v0, v0, La13;->c:I

    .line 28
    .line 29
    add-int/lit8 v0, v0, -0x2

    .line 30
    .line 31
    const/16 v2, 0xf

    .line 32
    .line 33
    if-eq v0, v2, :cond_2

    .line 34
    .line 35
    const/16 v2, 0x10

    .line 36
    .line 37
    if-eq v0, v2, :cond_2

    .line 38
    .line 39
    iget-object v0, p0, Lqb5;->b:Lo75;

    .line 40
    .line 41
    iget-object v2, v0, Lo75;->g:Lyc5;

    .line 42
    .line 43
    invoke-virtual {v2}, Lyc5;->a()V

    .line 44
    .line 45
    .line 46
    iget-boolean v2, p0, Lqb5;->e:Z

    .line 47
    .line 48
    if-nez v2, :cond_0

    .line 49
    .line 50
    iget-object v2, p0, Lqb5;->h:Lui3;

    .line 51
    .line 52
    invoke-virtual {v2}, Lui3;->p()Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-nez v2, :cond_0

    .line 57
    .line 58
    iget-object v2, v1, Lic;->b:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v2, Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-eqz v2, :cond_0

    .line 67
    .line 68
    invoke-virtual {v0}, Lo75;->a()Lwd2;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    new-instance v2, Lya5;

    .line 73
    .line 74
    const/4 v3, 0x0

    .line 75
    invoke-direct {v2, p0, v3}, Lya5;-><init>(Lqb5;I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v2}, Lwd2;->execute(Ljava/lang/Runnable;)V

    .line 79
    .line 80
    .line 81
    invoke-static {}, Lrc5;->A()Lrc5;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    iget-object v1, v1, Lic;->e:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v1, La13;

    .line 88
    .line 89
    new-instance v2, Lic;

    .line 90
    .line 91
    invoke-direct {v2, v0, v1}, Lic;-><init>(Lrc5;La13;)V

    .line 92
    .line 93
    .line 94
    move-object v0, v2

    .line 95
    goto :goto_0

    .line 96
    :catchall_0
    move-exception v0

    .line 97
    goto :goto_2

    .line 98
    :cond_0
    invoke-virtual {v0}, Lo75;->a()Lwd2;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    new-instance v3, Lya5;

    .line 103
    .line 104
    const/4 v4, 0x3

    .line 105
    invoke-direct {v3, p0, v4}, Lya5;-><init>(Lqb5;I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2, v3}, Lwd2;->execute(Ljava/lang/Runnable;)V

    .line 109
    .line 110
    .line 111
    iget-object v2, v0, Lo75;->a:Lui3;

    .line 112
    .line 113
    iget-object v3, v1, Lic;->c:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast v3, Lzm4;

    .line 116
    .line 117
    iget-object v4, p0, Lqb5;->f:Lnp1;

    .line 118
    .line 119
    iget-object v5, p0, Lqb5;->c:Ljava/lang/String;

    .line 120
    .line 121
    invoke-virtual {v2, v3, v4, v5}, Lui3;->n(Lzm4;Ljava/util/Set;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    iget-object v2, p0, Lqb5;->d:Ljava/lang/String;

    .line 125
    .line 126
    const-string v3, ""

    .line 127
    .line 128
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    if-nez v2, :cond_1

    .line 133
    .line 134
    invoke-virtual {v0}, Lo75;->a()Lwd2;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    new-instance v3, Lya5;

    .line 139
    .line 140
    const/4 v4, 0x1

    .line 141
    invoke-direct {v3, p0, v4}, Lya5;-><init>(Lqb5;I)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v2, v3}, Lwd2;->execute(Ljava/lang/Runnable;)V

    .line 145
    .line 146
    .line 147
    :cond_1
    iget-object v2, p0, Lqb5;->h:Lui3;

    .line 148
    .line 149
    invoke-virtual {v2}, Lui3;->p()Z

    .line 150
    .line 151
    .line 152
    move-result v2

    .line 153
    if-eqz v2, :cond_2

    .line 154
    .line 155
    invoke-virtual {v0}, Lo75;->a()Lwd2;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    new-instance v2, Lya5;

    .line 160
    .line 161
    const/4 v3, 0x2

    .line 162
    invoke-direct {v2, p0, v3}, Lya5;-><init>(Lqb5;I)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, v2}, Lwd2;->execute(Ljava/lang/Runnable;)V

    .line 166
    .line 167
    .line 168
    :cond_2
    move-object v0, v1

    .line 169
    :goto_0
    iget-boolean v1, p0, Lqb5;->e:Z

    .line 170
    .line 171
    if-eqz v1, :cond_3

    .line 172
    .line 173
    iget-object v1, v0, Lic;->e:Ljava/lang/Object;

    .line 174
    .line 175
    check-cast v1, La13;

    .line 176
    .line 177
    iget v1, v1, La13;->c:I

    .line 178
    .line 179
    const/16 v2, 0x11

    .line 180
    .line 181
    if-ne v1, v2, :cond_3

    .line 182
    .line 183
    goto :goto_1

    .line 184
    :cond_3
    iput-object v0, p0, Lqb5;->a:Lic;

    .line 185
    .line 186
    goto :goto_1

    .line 187
    :catchall_1
    move-exception v1

    .line 188
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 189
    .line 190
    .line 191
    throw v1

    .line 192
    :cond_4
    :goto_1
    monitor-exit p0

    .line 193
    return-object v0

    .line 194
    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 195
    throw v0

    .line 196
    :cond_5
    return-object v0
.end method

.method public final b()V
    .locals 7

    .line 1
    iget-object v0, p0, Lqb5;->h:Lui3;

    .line 2
    .line 3
    iget-object v1, v0, Lui3;->o:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lo75;

    .line 6
    .line 7
    iget-object v2, v1, Lo75;->d:Lcu3;

    .line 8
    .line 9
    invoke-interface {v2}, Lcu3;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Lx85;

    .line 14
    .line 15
    iget-object v3, v0, Lui3;->q:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v3, Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    iget-object v2, v2, Lx85;->a:Lw65;

    .line 26
    .line 27
    invoke-static {}, Lcom/google/android/gms/common/api/internal/TaskApiCall;->builder()Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    new-instance v5, Lbc5;

    .line 32
    .line 33
    const/4 v6, 0x3

    .line 34
    invoke-direct {v5, v3, v6}, Lbc5;-><init>(Ljava/lang/String;I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->run(Lcom/google/android/gms/common/api/internal/RemoteCall;)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->build()Lcom/google/android/gms/common/api/internal/TaskApiCall;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/GoogleApi;->doRead(Lcom/google/android/gms/common/api/internal/TaskApiCall;)Low3;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    new-instance v3, Lny4;

    .line 50
    .line 51
    const/16 v4, 0x16

    .line 52
    .line 53
    invoke-direct {v3, v4}, Lny4;-><init>(I)V

    .line 54
    .line 55
    .line 56
    sget-object v4, Lfu0;->n:Lfu0;

    .line 57
    .line 58
    invoke-virtual {v2, v4, v3}, Low3;->d(Ljava/util/concurrent/Executor;Leh0;)Lef5;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-static {v2}, Lx85;->b(Low3;)Li;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    sget-object v3, Lwp4;->q:Lwp4;

    .line 67
    .line 68
    invoke-virtual {v1}, Lo75;->a()Lwd2;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-static {v2, v3, v1}, Ltf1;->e(Lcom/google/common/util/concurrent/ListenableFuture;Lze1;Ljava/util/concurrent/Executor;)Li2;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    new-instance v2, Lbb5;

    .line 77
    .line 78
    const/4 v3, 0x1

    .line 79
    invoke-direct {v2, v3, v0}, Lbb5;-><init>(ILjava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lqb5;->b:Lo75;

    .line 83
    .line 84
    invoke-virtual {v0}, Lo75;->a()Lwd2;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    invoke-static {v1, v2, v4}, Ltf1;->f(Lcom/google/common/util/concurrent/ListenableFuture;Lqi;Ljava/util/concurrent/Executor;)Lh2;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    new-instance v4, Ldb5;

    .line 93
    .line 94
    invoke-direct {v4, p0, v1, v3}, Ldb5;-><init>(Lqb5;Li2;I)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Lo75;->a()Lwd2;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-virtual {v2, v4, p0}, Ls0;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 102
    .line 103
    .line 104
    return-void
.end method
