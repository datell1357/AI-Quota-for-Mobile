.class public final Lty4;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lty4;->n:I

    .line 2
    .line 3
    iput-object p2, p0, Lty4;->o:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final a(Landroid/app/Activity;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final b(Landroid/app/Activity;)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public c(Ljx4;Landroid/os/Bundle;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lty4;->o:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Lm75;

    .line 5
    .line 6
    :try_start_0
    iget-object v0, v1, Lib0;->a:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lr45;

    .line 9
    .line 10
    iget-object v2, v0, Lr45;->f:La25;

    .line 11
    .line 12
    invoke-static {v2}, Lr45;->l(Lq55;)V

    .line 13
    .line 14
    .line 15
    iget-object v2, v2, La25;->n:Lx15;

    .line 16
    .line 17
    const-string v3, "onActivityCreated"

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Lx15;->a(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v2, p1, Ljx4;->p:Landroid/content/Intent;

    .line 23
    .line 24
    if-eqz v2, :cond_6

    .line 25
    .line 26
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    invoke-virtual {v3}, Landroid/net/Uri;->isHierarchical()Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-nez v4, :cond_0

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    :goto_0
    move-object v5, v3

    .line 40
    goto :goto_2

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    move-object p0, v0

    .line 43
    goto/16 :goto_b

    .line 44
    .line 45
    :catch_0
    move-exception v0

    .line 46
    move-object p0, v0

    .line 47
    goto :goto_9

    .line 48
    :cond_1
    :goto_1
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    const/4 v4, 0x0

    .line 53
    if-eqz v3, :cond_2

    .line 54
    .line 55
    const-string v5, "com.android.vending.referral_url"

    .line 56
    .line 57
    invoke-virtual {v3, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    if-nez v5, :cond_2

    .line 66
    .line 67
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    goto :goto_0

    .line 72
    :cond_2
    move-object v5, v4

    .line 73
    :goto_2
    if-eqz v5, :cond_6

    .line 74
    .line 75
    invoke-virtual {v5}, Landroid/net/Uri;->isHierarchical()Z

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    if-nez v3, :cond_3

    .line 80
    .line 81
    goto :goto_7

    .line 82
    :cond_3
    iget-object v3, v0, Lr45;->i:Lac5;

    .line 83
    .line 84
    invoke-static {v3}, Lr45;->j(Lib0;)V

    .line 85
    .line 86
    .line 87
    invoke-static {v2}, Lac5;->w0(Landroid/content/Intent;)Z

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    if-eqz v2, :cond_4

    .line 92
    .line 93
    const-string v2, "gs"

    .line 94
    .line 95
    :goto_3
    move-object v6, v2

    .line 96
    goto :goto_4

    .line 97
    :cond_4
    const-string v2, "auto"

    .line 98
    .line 99
    goto :goto_3

    .line 100
    :goto_4
    const-string v2, "referrer"

    .line 101
    .line 102
    invoke-virtual {v5, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    if-nez p2, :cond_5

    .line 107
    .line 108
    const/4 v2, 0x1

    .line 109
    :goto_5
    move v4, v2

    .line 110
    goto :goto_6

    .line 111
    :cond_5
    const/4 v2, 0x0

    .line 112
    goto :goto_5

    .line 113
    :goto_6
    iget-object v0, v0, Lr45;->g:Lj45;

    .line 114
    .line 115
    invoke-static {v0}, Lr45;->l(Lq55;)V

    .line 116
    .line 117
    .line 118
    new-instance v2, Lq65;

    .line 119
    .line 120
    move-object v3, p0

    .line 121
    invoke-direct/range {v2 .. v7}, Lq65;-><init>(Lty4;ZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v2}, Lj45;->E(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    .line 126
    .line 127
    goto :goto_a

    .line 128
    :cond_6
    :goto_7
    iget-object p0, v1, Lib0;->a:Ljava/lang/Object;

    .line 129
    .line 130
    check-cast p0, Lr45;

    .line 131
    .line 132
    :goto_8
    iget-object p0, p0, Lr45;->l:Lf85;

    .line 133
    .line 134
    invoke-static {p0}, Lr45;->k(Lj05;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0, p1, p2}, Lf85;->C(Ljx4;Landroid/os/Bundle;)V

    .line 138
    .line 139
    .line 140
    return-void

    .line 141
    :goto_9
    :try_start_1
    iget-object v0, v1, Lib0;->a:Ljava/lang/Object;

    .line 142
    .line 143
    check-cast v0, Lr45;

    .line 144
    .line 145
    iget-object v0, v0, Lr45;->f:La25;

    .line 146
    .line 147
    invoke-static {v0}, Lr45;->l(Lq55;)V

    .line 148
    .line 149
    .line 150
    iget-object v0, v0, La25;->f:Lx15;

    .line 151
    .line 152
    const-string v2, "Throwable caught in onActivityCreated"

    .line 153
    .line 154
    invoke-virtual {v0, p0, v2}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    .line 156
    .line 157
    :goto_a
    iget-object p0, v1, Lib0;->a:Ljava/lang/Object;

    .line 158
    .line 159
    check-cast p0, Lr45;

    .line 160
    .line 161
    goto :goto_8

    .line 162
    :goto_b
    iget-object v0, v1, Lib0;->a:Ljava/lang/Object;

    .line 163
    .line 164
    check-cast v0, Lr45;

    .line 165
    .line 166
    iget-object v0, v0, Lr45;->l:Lf85;

    .line 167
    .line 168
    invoke-static {v0}, Lr45;->k(Lj05;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0, p1, p2}, Lf85;->C(Ljx4;Landroid/os/Bundle;)V

    .line 172
    .line 173
    .line 174
    throw p0
.end method

.method public d(Ljx4;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lty4;->o:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lm75;

    .line 4
    .line 5
    iget-object p0, p0, Lib0;->a:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lr45;

    .line 8
    .line 9
    iget-object p0, p0, Lr45;->l:Lf85;

    .line 10
    .line 11
    invoke-static {p0}, Lr45;->k(Lj05;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lf85;->l:Ljava/lang/Object;

    .line 15
    .line 16
    monitor-enter v0

    .line 17
    :try_start_0
    iget-object v1, p0, Lf85;->g:Ljx4;

    .line 18
    .line 19
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    iput-object v1, p0, Lf85;->g:Ljx4;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    iget-object v0, p0, Lib0;->a:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v0, Lr45;

    .line 35
    .line 36
    iget-object v0, v0, Lr45;->d:Lds4;

    .line 37
    .line 38
    invoke-virtual {v0}, Lds4;->K()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    iget-object p0, p0, Lf85;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 46
    .line 47
    iget p1, p1, Ljx4;->n:I

    .line 48
    .line 49
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    throw p0
.end method

.method public e(Ljx4;)V
    .locals 7

    .line 1
    iget-object p0, p0, Lty4;->o:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lm75;

    .line 4
    .line 5
    iget-object p0, p0, Lib0;->a:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lr45;

    .line 8
    .line 9
    iget-object v0, p0, Lr45;->l:Lf85;

    .line 10
    .line 11
    invoke-static {v0}, Lr45;->k(Lj05;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, v0, Lf85;->l:Ljava/lang/Object;

    .line 15
    .line 16
    monitor-enter v1

    .line 17
    const/4 v2, 0x0

    .line 18
    :try_start_0
    iput-boolean v2, v0, Lf85;->k:Z

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    iput-boolean v2, v0, Lf85;->h:Z

    .line 22
    .line 23
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    iget-object v1, v0, Lib0;->a:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v1, Lr45;

    .line 27
    .line 28
    iget-object v3, v1, Lr45;->k:Lcom/google/android/gms/common/util/Clock;

    .line 29
    .line 30
    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 31
    .line 32
    .line 33
    move-result-wide v3

    .line 34
    iget-object v5, v1, Lr45;->d:Lds4;

    .line 35
    .line 36
    invoke-virtual {v5}, Lds4;->K()Z

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    const/4 v6, 0x0

    .line 41
    if-nez v5, :cond_0

    .line 42
    .line 43
    iput-object v6, v0, Lf85;->c:Lw75;

    .line 44
    .line 45
    iget-object p1, v1, Lr45;->g:Lj45;

    .line 46
    .line 47
    invoke-static {p1}, Lr45;->l(Lq55;)V

    .line 48
    .line 49
    .line 50
    new-instance v1, Lov4;

    .line 51
    .line 52
    invoke-direct {v1, v0, v3, v4}, Lov4;-><init>(Lf85;J)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v1}, Lj45;->E(Ljava/lang/Runnable;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {v0, p1}, Lf85;->F(Ljx4;)Lw75;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iget-object v5, v0, Lf85;->c:Lw75;

    .line 64
    .line 65
    iput-object v5, v0, Lf85;->d:Lw75;

    .line 66
    .line 67
    iput-object v6, v0, Lf85;->c:Lw75;

    .line 68
    .line 69
    iget-object v1, v1, Lr45;->g:Lj45;

    .line 70
    .line 71
    invoke-static {v1}, Lr45;->l(Lq55;)V

    .line 72
    .line 73
    .line 74
    new-instance v5, Lb85;

    .line 75
    .line 76
    invoke-direct {v5, v0, p1, v3, v4}, Lb85;-><init>(Lf85;Lw75;J)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v5}, Lj45;->E(Ljava/lang/Runnable;)V

    .line 80
    .line 81
    .line 82
    :goto_0
    iget-object p0, p0, Lr45;->h:Lia5;

    .line 83
    .line 84
    invoke-static {p0}, Lr45;->k(Lj05;)V

    .line 85
    .line 86
    .line 87
    iget-object p1, p0, Lib0;->a:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast p1, Lr45;

    .line 90
    .line 91
    iget-object v0, p1, Lr45;->k:Lcom/google/android/gms/common/util/Clock;

    .line 92
    .line 93
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 94
    .line 95
    .line 96
    move-result-wide v0

    .line 97
    iget-object p1, p1, Lr45;->g:Lj45;

    .line 98
    .line 99
    invoke-static {p1}, Lr45;->l(Lq55;)V

    .line 100
    .line 101
    .line 102
    new-instance v3, Lz95;

    .line 103
    .line 104
    invoke-direct {v3, p0, v0, v1, v2}, Lz95;-><init>(Lia5;JI)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, v3}, Lj45;->E(Ljava/lang/Runnable;)V

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :catchall_0
    move-exception p0

    .line 112
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    throw p0
.end method

.method public f(Ljx4;)V
    .locals 6

    .line 1
    iget-object p0, p0, Lty4;->o:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lm75;

    .line 4
    .line 5
    iget-object p0, p0, Lib0;->a:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lr45;

    .line 8
    .line 9
    iget-object v0, p0, Lr45;->h:Lia5;

    .line 10
    .line 11
    invoke-static {v0}, Lr45;->k(Lj05;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, v0, Lib0;->a:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v1, Lr45;

    .line 17
    .line 18
    iget-object v2, v1, Lr45;->k:Lcom/google/android/gms/common/util/Clock;

    .line 19
    .line 20
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 21
    .line 22
    .line 23
    move-result-wide v2

    .line 24
    iget-object v1, v1, Lr45;->g:Lj45;

    .line 25
    .line 26
    invoke-static {v1}, Lr45;->l(Lq55;)V

    .line 27
    .line 28
    .line 29
    new-instance v4, Lz95;

    .line 30
    .line 31
    const/4 v5, 0x0

    .line 32
    invoke-direct {v4, v0, v2, v3, v5}, Lz95;-><init>(Lia5;JI)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v4}, Lj45;->E(Ljava/lang/Runnable;)V

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Lr45;->l:Lf85;

    .line 39
    .line 40
    invoke-static {p0}, Lr45;->k(Lj05;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lf85;->l:Ljava/lang/Object;

    .line 44
    .line 45
    monitor-enter v0

    .line 46
    const/4 v1, 0x1

    .line 47
    :try_start_0
    iput-boolean v1, p0, Lf85;->k:Z

    .line 48
    .line 49
    iget-object v2, p0, Lf85;->g:Ljx4;

    .line 50
    .line 51
    invoke-static {p1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_0

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :try_start_1
    iput-object p1, p0, Lf85;->g:Ljx4;

    .line 60
    .line 61
    iput-boolean v5, p0, Lf85;->h:Z

    .line 62
    .line 63
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 64
    :try_start_2
    iget-object v2, p0, Lib0;->a:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v2, Lr45;

    .line 67
    .line 68
    iget-object v3, v2, Lr45;->d:Lds4;

    .line 69
    .line 70
    invoke-virtual {v3}, Lds4;->K()Z

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-eqz v3, :cond_1

    .line 75
    .line 76
    const/4 v3, 0x0

    .line 77
    iput-object v3, p0, Lf85;->i:Lw75;

    .line 78
    .line 79
    iget-object v2, v2, Lr45;->g:Lj45;

    .line 80
    .line 81
    invoke-static {v2}, Lr45;->l(Lq55;)V

    .line 82
    .line 83
    .line 84
    new-instance v3, Lz75;

    .line 85
    .line 86
    invoke-direct {v3, p0, v1}, Lz75;-><init>(Lf85;I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2, v3}, Lj45;->E(Ljava/lang/Runnable;)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :catchall_0
    move-exception p0

    .line 94
    goto :goto_1

    .line 95
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 96
    iget-object v0, p0, Lib0;->a:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast v0, Lr45;

    .line 99
    .line 100
    iget-object v1, v0, Lr45;->d:Lds4;

    .line 101
    .line 102
    invoke-virtual {v1}, Lds4;->K()Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-nez v1, :cond_2

    .line 107
    .line 108
    iget-object p1, p0, Lf85;->i:Lw75;

    .line 109
    .line 110
    iput-object p1, p0, Lf85;->c:Lw75;

    .line 111
    .line 112
    iget-object p1, v0, Lr45;->g:Lj45;

    .line 113
    .line 114
    invoke-static {p1}, Lr45;->l(Lq55;)V

    .line 115
    .line 116
    .line 117
    new-instance v0, Lz75;

    .line 118
    .line 119
    invoke-direct {v0, p0, v5}, Lz75;-><init>(Lf85;I)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, v0}, Lj45;->E(Ljava/lang/Runnable;)V

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    :cond_2
    invoke-virtual {p0, p1}, Lf85;->F(Ljx4;)Lw75;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    iget-object p1, p1, Ljx4;->o:Ljava/lang/String;

    .line 131
    .line 132
    invoke-virtual {p0, p1, v0, v5}, Lf85;->D(Ljava/lang/String;Lw75;Z)V

    .line 133
    .line 134
    .line 135
    iget-object p0, p0, Lib0;->a:Ljava/lang/Object;

    .line 136
    .line 137
    check-cast p0, Lr45;

    .line 138
    .line 139
    iget-object p0, p0, Lr45;->n:Lbx4;

    .line 140
    .line 141
    invoke-static {p0}, Lr45;->i(Laz4;)V

    .line 142
    .line 143
    .line 144
    iget-object p1, p0, Lib0;->a:Ljava/lang/Object;

    .line 145
    .line 146
    check-cast p1, Lr45;

    .line 147
    .line 148
    iget-object v0, p1, Lr45;->k:Lcom/google/android/gms/common/util/Clock;

    .line 149
    .line 150
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 151
    .line 152
    .line 153
    move-result-wide v0

    .line 154
    iget-object p1, p1, Lr45;->g:Lj45;

    .line 155
    .line 156
    invoke-static {p1}, Lr45;->l(Lq55;)V

    .line 157
    .line 158
    .line 159
    new-instance v2, Lov4;

    .line 160
    .line 161
    invoke-direct {v2, p0, v0, v1}, Lov4;-><init>(Lbx4;J)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1, v2}, Lj45;->E(Ljava/lang/Runnable;)V

    .line 165
    .line 166
    .line 167
    return-void

    .line 168
    :catchall_1
    move-exception p0

    .line 169
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 170
    :try_start_4
    throw p0

    .line 171
    :goto_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 172
    throw p0
.end method

.method public g(Ljx4;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lty4;->o:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lm75;

    .line 4
    .line 5
    iget-object p0, p0, Lib0;->a:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lr45;

    .line 8
    .line 9
    iget-object p0, p0, Lr45;->l:Lf85;

    .line 10
    .line 11
    invoke-static {p0}, Lr45;->k(Lj05;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lib0;->a:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Lr45;

    .line 17
    .line 18
    iget-object v0, v0, Lr45;->d:Lds4;

    .line 19
    .line 20
    invoke-virtual {v0}, Lds4;->K()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    if-eqz p2, :cond_1

    .line 28
    .line 29
    iget-object p0, p0, Lf85;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 30
    .line 31
    iget p1, p1, Ljx4;->n:I

    .line 32
    .line 33
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    check-cast p0, Lw75;

    .line 42
    .line 43
    if-eqz p0, :cond_1

    .line 44
    .line 45
    new-instance p1, Landroid/os/Bundle;

    .line 46
    .line 47
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v0, "id"

    .line 51
    .line 52
    iget-wide v1, p0, Lw75;->c:J

    .line 53
    .line 54
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 55
    .line 56
    .line 57
    const-string v0, "name"

    .line 58
    .line 59
    iget-object v1, p0, Lw75;->a:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const-string v0, "referrer_name"

    .line 65
    .line 66
    iget-object p0, p0, Lw75;->b:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const-string p0, "com.google.app_measurement.screen_service"

    .line 72
    .line 73
    invoke-virtual {p2, p0, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 74
    .line 75
    .line 76
    :cond_1
    :goto_0
    return-void
.end method

.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget v0, p0, Lty4;->n:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Ljx4;->Y(Landroid/app/Activity;)Ljx4;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0, p1, p2}, Lty4;->c(Ljx4;Landroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    new-instance v0, Llx4;

    .line 15
    .line 16
    invoke-direct {v0, p0, p2, p1}, Llx4;-><init>(Lty4;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lty4;->o:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p0, Luy4;

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Luy4;->c(Lmy4;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget v0, p0, Lty4;->n:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Ljx4;->Y(Landroid/app/Activity;)Ljx4;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Lty4;->d(Ljx4;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    new-instance v0, Lqy4;

    .line 15
    .line 16
    const/4 v1, 0x4

    .line 17
    invoke-direct {v0, p0, p1, v1}, Lqy4;-><init>(Lty4;Landroid/app/Activity;I)V

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lty4;->o:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p0, Luy4;

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Luy4;->c(Lmy4;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget v0, p0, Lty4;->n:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Ljx4;->Y(Landroid/app/Activity;)Ljx4;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Lty4;->e(Ljx4;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    new-instance v0, Lqy4;

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    invoke-direct {v0, p0, p1, v1}, Lqy4;-><init>(Lty4;Landroid/app/Activity;I)V

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lty4;->o:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p0, Luy4;

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Luy4;->c(Lmy4;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget v0, p0, Lty4;->n:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Ljx4;->Y(Landroid/app/Activity;)Ljx4;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Lty4;->f(Ljx4;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    new-instance v0, Lqy4;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-direct {v0, p0, p1, v1}, Lqy4;-><init>(Lty4;Landroid/app/Activity;I)V

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lty4;->o:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p0, Luy4;

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Luy4;->c(Lmy4;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget v0, p0, Lty4;->n:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Ljx4;->Y(Landroid/app/Activity;)Ljx4;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0, p1, p2}, Lty4;->g(Ljx4;Landroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    new-instance v0, Ldw4;

    .line 15
    .line 16
    invoke-direct {v0}, Ldw4;-><init>()V

    .line 17
    .line 18
    .line 19
    new-instance v1, Llx4;

    .line 20
    .line 21
    invoke-direct {v1, p0, p1, v0}, Llx4;-><init>(Lty4;Landroid/app/Activity;Ldw4;)V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lty4;->o:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p0, Luy4;

    .line 27
    .line 28
    invoke-virtual {p0, v1}, Luy4;->c(Lmy4;)V

    .line 29
    .line 30
    .line 31
    const-wide/16 p0, 0x32

    .line 32
    .line 33
    invoke-virtual {v0, p0, p1}, Ldw4;->F(J)Landroid/os/Bundle;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    if-eqz p0, :cond_0

    .line 38
    .line 39
    invoke-virtual {p2, p0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget v0, p0, Lty4;->n:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    new-instance v0, Lqy4;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {v0, p0, p1, v1}, Lqy4;-><init>(Lty4;Landroid/app/Activity;I)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lty4;->o:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p0, Luy4;

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Luy4;->c(Lmy4;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget v0, p0, Lty4;->n:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    new-instance v0, Lqy4;

    .line 8
    .line 9
    const/4 v1, 0x3

    .line 10
    invoke-direct {v0, p0, p1, v1}, Lqy4;-><init>(Lty4;Landroid/app/Activity;I)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lty4;->o:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p0, Luy4;

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Luy4;->c(Lmy4;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
