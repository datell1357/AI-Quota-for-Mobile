.class public final Ls53;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lw61;


# static fields
.field public static final j:Lcom/google/android/gms/common/util/Clock;

.field public static final k:Ljava/util/Random;

.field public static final l:Ljava/util/HashMap;


# instance fields
.field public final a:Ljava/util/HashMap;

.field public final b:Landroid/content/Context;

.field public final c:Ljava/util/concurrent/ScheduledExecutorService;

.field public final d:Le61;

.field public final e:Ln61;

.field public final f:La61;

.field public final g:Ln03;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->getInstance()Lcom/google/android/gms/common/util/Clock;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Ls53;->j:Lcom/google/android/gms/common/util/Clock;

    .line 6
    .line 7
    new-instance v0, Ljava/util/Random;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 10
    .line 11
    .line 12
    sput-object v0, Ls53;->k:Ljava/util/Random;

    .line 13
    .line 14
    new-instance v0, Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 17
    .line 18
    .line 19
    sput-object v0, Ls53;->l:Ljava/util/HashMap;

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Le61;Ln61;La61;Ln03;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Ls53;->a:Ljava/util/HashMap;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Ls53;->i:Ljava/util/HashMap;

    .line 17
    .line 18
    iput-object p1, p0, Ls53;->b:Landroid/content/Context;

    .line 19
    .line 20
    iput-object p2, p0, Ls53;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 21
    .line 22
    iput-object p3, p0, Ls53;->d:Le61;

    .line 23
    .line 24
    iput-object p4, p0, Ls53;->e:Ln61;

    .line 25
    .line 26
    iput-object p5, p0, Ls53;->f:La61;

    .line 27
    .line 28
    iput-object p6, p0, Ls53;->g:Ln03;

    .line 29
    .line 30
    invoke-virtual {p3}, Le61;->a()V

    .line 31
    .line 32
    .line 33
    iget-object p3, p3, Le61;->c:Lq61;

    .line 34
    .line 35
    iget-object p3, p3, Lq61;->b:Ljava/lang/String;

    .line 36
    .line 37
    iput-object p3, p0, Ls53;->h:Ljava/lang/String;

    .line 38
    .line 39
    sget-object p3, Lr53;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Landroid/app/Application;

    .line 46
    .line 47
    sget-object p3, Lr53;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 48
    .line 49
    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p4

    .line 53
    if-nez p4, :cond_2

    .line 54
    .line 55
    new-instance p4, Lr53;

    .line 56
    .line 57
    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    .line 58
    .line 59
    .line 60
    :cond_0
    const/4 p5, 0x0

    .line 61
    invoke-virtual {p3, p5, p4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result p5

    .line 65
    if-eqz p5, :cond_1

    .line 66
    .line 67
    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->initialize(Landroid/app/Application;)V

    .line 68
    .line 69
    .line 70
    invoke-static {}, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->getInstance()Lcom/google/android/gms/common/api/internal/BackgroundDetector;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p1, p4}, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->addListener(Lcom/google/android/gms/common/api/internal/BackgroundDetector$BackgroundStateChangeListener;)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p5

    .line 82
    if-eqz p5, :cond_0

    .line 83
    .line 84
    :cond_2
    :goto_0
    new-instance p1, Lvc0;

    .line 85
    .line 86
    const/4 p3, 0x2

    .line 87
    invoke-direct {p1, p3, p0}, Lvc0;-><init>(ILjava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    invoke-static {p2, p1}, Lmt1;->m(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lef5;

    .line 91
    .line 92
    .line 93
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Ls61;
    .locals 14

    .line 1
    const-string v0, "_firebase_settings"

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    const-string v1, "fetch"

    .line 5
    .line 6
    invoke-virtual {p0, v1}, Ls53;->c(Ljava/lang/String;)Lyc0;

    .line 7
    .line 8
    .line 9
    move-result-object v7

    .line 10
    const-string v1, "activate"

    .line 11
    .line 12
    invoke-virtual {p0, v1}, Ls53;->c(Ljava/lang/String;)Lyc0;

    .line 13
    .line 14
    .line 15
    move-result-object v8

    .line 16
    const-string v1, "defaults"

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Ls53;->c(Ljava/lang/String;)Lyc0;

    .line 19
    .line 20
    .line 21
    move-result-object v9

    .line 22
    iget-object v1, p0, Ls53;->b:Landroid/content/Context;

    .line 23
    .line 24
    iget-object v2, p0, Ls53;->h:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 25
    .line 26
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 27
    .line 28
    :try_start_2
    const-string v4, "frc_"

    .line 29
    .line 30
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const/4 v2, 0x0

    .line 44
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    new-instance v12, Ljd0;

    .line 49
    .line 50
    invoke-direct {v12, v0}, Ljd0;-><init>(Landroid/content/SharedPreferences;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 51
    .line 52
    .line 53
    :try_start_3
    new-instance v11, Lfd0;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 54
    .line 55
    :try_start_4
    iget-object v0, p0, Ls53;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 56
    .line 57
    invoke-direct {v11, v0, v8, v9}, Lfd0;-><init>(Ljava/util/concurrent/Executor;Lyc0;Lyc0;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 58
    .line 59
    .line 60
    :try_start_5
    iget-object v0, p0, Ls53;->d:Le61;

    .line 61
    .line 62
    iget-object v1, p0, Ls53;->g:Ln03;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 63
    .line 64
    :try_start_6
    invoke-virtual {v0}, Le61;->a()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 65
    .line 66
    .line 67
    :try_start_7
    iget-object v0, v0, Le61;->b:Ljava/lang/String;

    .line 68
    .line 69
    const-string v3, "[DEFAULT]"

    .line 70
    .line 71
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 75
    if-eqz v0, :cond_0

    .line 76
    .line 77
    :try_start_8
    new-instance v0, Lxh1;

    .line 78
    .line 79
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 80
    .line 81
    .line 82
    new-instance v3, Ljava/util/HashMap;

    .line 83
    .line 84
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-static {v3}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    iput-object v3, v0, Lxh1;->o:Ljava/lang/Object;

    .line 92
    .line 93
    iput-object v1, v0, Lxh1;->n:Ljava/lang/Object;

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_0
    const/4 v0, 0x0

    .line 97
    :goto_0
    if-eqz v0, :cond_1

    .line 98
    .line 99
    new-instance v1, Lq53;

    .line 100
    .line 101
    invoke-direct {v1, v0}, Lq53;-><init>(Lxh1;)V

    .line 102
    .line 103
    .line 104
    iget-object v3, v11, Lfd0;->a:Ljava/util/HashSet;

    .line 105
    .line 106
    monitor-enter v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 107
    :try_start_9
    iget-object v0, v11, Lfd0;->a:Ljava/util/HashSet;

    .line 108
    .line 109
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    monitor-exit v3

    .line 113
    goto :goto_2

    .line 114
    :catchall_0
    move-exception v0

    .line 115
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 116
    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 117
    :goto_1
    move-object v2, p0

    .line 118
    goto :goto_3

    .line 119
    :catchall_1
    move-exception v0

    .line 120
    goto :goto_1

    .line 121
    :cond_1
    :goto_2
    :try_start_b
    new-instance v0, Lxh1;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 122
    .line 123
    :try_start_c
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 124
    .line 125
    .line 126
    iput-object v8, v0, Lxh1;->n:Ljava/lang/Object;

    .line 127
    .line 128
    iput-object v9, v0, Lxh1;->o:Ljava/lang/Object;

    .line 129
    .line 130
    new-instance v13, Lqd1;

    .line 131
    .line 132
    iget-object v1, p0, Ls53;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 133
    .line 134
    const/16 v3, 0xc

    .line 135
    .line 136
    invoke-direct {v13, v3, v2}, Lqd1;-><init>(IZ)V

    .line 137
    .line 138
    .line 139
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    .line 140
    .line 141
    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 142
    .line 143
    .line 144
    invoke-static {v2}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    iput-object v2, v13, Lqd1;->r:Ljava/lang/Object;

    .line 149
    .line 150
    iput-object v8, v13, Lqd1;->o:Ljava/lang/Object;

    .line 151
    .line 152
    iput-object v0, v13, Lqd1;->p:Ljava/lang/Object;

    .line 153
    .line 154
    iput-object v1, v13, Lqd1;->q:Ljava/lang/Object;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 155
    .line 156
    :try_start_d
    iget-object v3, p0, Ls53;->d:Le61;

    .line 157
    .line 158
    iget-object v4, p0, Ls53;->e:Ln61;

    .line 159
    .line 160
    iget-object v5, p0, Ls53;->f:La61;

    .line 161
    .line 162
    iget-object v6, p0, Ls53;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 163
    .line 164
    invoke-virtual {p0, v7, v12}, Ls53;->d(Lyc0;Ljd0;)Led0;

    .line 165
    .line 166
    .line 167
    move-result-object v10
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 168
    move-object v2, p0

    .line 169
    :try_start_e
    invoke-virtual/range {v2 .. v13}, Ls53;->b(Le61;Ln61;La61;Ljava/util/concurrent/Executor;Lyc0;Lyc0;Lyc0;Led0;Lfd0;Ljd0;Lqd1;)Ls61;

    .line 170
    .line 171
    .line 172
    move-result-object p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 173
    monitor-exit v2

    .line 174
    return-object p0

    .line 175
    :catchall_2
    move-exception v0

    .line 176
    goto :goto_3

    .line 177
    :catchall_3
    move-exception v0

    .line 178
    move-object v2, p0

    .line 179
    move-object p0, v0

    .line 180
    move-object v0, p0

    .line 181
    goto :goto_3

    .line 182
    :catchall_4
    move-exception v0

    .line 183
    move-object v2, p0

    .line 184
    move-object p0, v0

    .line 185
    :goto_3
    :try_start_f
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 186
    throw v0
.end method

.method public final declared-synchronized b(Le61;Ln61;La61;Ljava/util/concurrent/Executor;Lyc0;Lyc0;Lyc0;Led0;Lfd0;Ljd0;Lqd1;)Ls61;
    .locals 13

    .line 1
    const-string v0, "firebase"

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v1, p0, Ls53;->a:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    new-instance v2, Ls61;

    .line 13
    .line 14
    invoke-virtual {p1}, Le61;->a()V

    .line 15
    .line 16
    .line 17
    iget-object v1, p1, Le61;->b:Ljava/lang/String;

    .line 18
    .line 19
    const-string v3, "[DEFAULT]"

    .line 20
    .line 21
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    move-object/from16 v3, p3

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v1, 0x0

    .line 31
    move-object v3, v1

    .line 32
    :goto_0
    iget-object v9, p0, Ls53;->b:Landroid/content/Context;

    .line 33
    .line 34
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :try_start_1
    new-instance v4, Lgw4;

    .line 36
    .line 37
    iget-object v11, p0, Ls53;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 38
    .line 39
    move-object v5, p1

    .line 40
    move-object v6, p2

    .line 41
    move-object/from16 v8, p6

    .line 42
    .line 43
    move-object/from16 v7, p8

    .line 44
    .line 45
    move-object/from16 v10, p10

    .line 46
    .line 47
    invoke-direct/range {v4 .. v11}, Lgw4;-><init>(Le61;Ln61;Led0;Lyc0;Landroid/content/Context;Ljd0;Ljava/util/concurrent/ScheduledExecutorService;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 48
    .line 49
    .line 50
    :try_start_2
    monitor-exit p0

    .line 51
    move-object/from16 v5, p5

    .line 52
    .line 53
    move-object/from16 v6, p6

    .line 54
    .line 55
    move-object/from16 v7, p7

    .line 56
    .line 57
    move-object/from16 v8, p8

    .line 58
    .line 59
    move-object/from16 v9, p9

    .line 60
    .line 61
    move-object/from16 v10, p10

    .line 62
    .line 63
    move-object/from16 v12, p11

    .line 64
    .line 65
    move-object v11, v4

    .line 66
    move-object/from16 v4, p4

    .line 67
    .line 68
    invoke-direct/range {v2 .. v12}, Ls61;-><init>(La61;Ljava/util/concurrent/Executor;Lyc0;Lyc0;Lyc0;Led0;Lfd0;Ljd0;Lgw4;Lqd1;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual/range {p6 .. p6}, Lyc0;->b()Low3;

    .line 72
    .line 73
    .line 74
    invoke-virtual/range {p7 .. p7}, Lyc0;->b()Low3;

    .line 75
    .line 76
    .line 77
    invoke-virtual/range {p5 .. p5}, Lyc0;->b()Low3;

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Ls53;->a:Ljava/util/HashMap;

    .line 81
    .line 82
    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    sget-object p1, Ls53;->l:Ljava/util/HashMap;

    .line 86
    .line 87
    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :catchall_0
    move-exception v0

    .line 92
    move-object p1, v0

    .line 93
    goto :goto_2

    .line 94
    :catchall_1
    move-exception v0

    .line 95
    move-object p1, v0

    .line 96
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 97
    :try_start_4
    throw p1

    .line 98
    :cond_1
    :goto_1
    iget-object p1, p0, Ls53;->a:Ljava/util/HashMap;

    .line 99
    .line 100
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    check-cast p1, Ls61;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 105
    .line 106
    monitor-exit p0

    .line 107
    return-object p1

    .line 108
    :goto_2
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 109
    throw p1
.end method

.method public final c(Ljava/lang/String;)Lyc0;
    .locals 4

    .line 1
    iget-object v0, p0, Ls53;->h:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "frc_"

    .line 4
    .line 5
    const-string v2, "_firebase_"

    .line 6
    .line 7
    const-string v3, ".json"

    .line 8
    .line 9
    invoke-static {v1, v0, v2, p1, v3}, Lxw1;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object v0, p0, Ls53;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 14
    .line 15
    iget-object p0, p0, Ls53;->b:Landroid/content/Context;

    .line 16
    .line 17
    sget-object v1, Lkd0;->c:Ljava/util/HashMap;

    .line 18
    .line 19
    const-class v1, Lkd0;

    .line 20
    .line 21
    monitor-enter v1

    .line 22
    :try_start_0
    sget-object v2, Lkd0;->c:Ljava/util/HashMap;

    .line 23
    .line 24
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-nez v3, :cond_0

    .line 29
    .line 30
    new-instance v3, Lkd0;

    .line 31
    .line 32
    invoke-direct {v3, p0, p1}, Lkd0;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_3

    .line 41
    :cond_0
    :goto_0
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    check-cast p0, Lkd0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    monitor-exit v1

    .line 48
    sget-object p1, Lyc0;->d:Ljava/util/HashMap;

    .line 49
    .line 50
    const-class p1, Lyc0;

    .line 51
    .line 52
    monitor-enter p1

    .line 53
    :try_start_1
    iget-object v1, p0, Lkd0;->b:Ljava/lang/String;

    .line 54
    .line 55
    sget-object v2, Lyc0;->d:Ljava/util/HashMap;

    .line 56
    .line 57
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-nez v3, :cond_1

    .line 62
    .line 63
    new-instance v3, Lyc0;

    .line 64
    .line 65
    invoke-direct {v3, v0, p0}, Lyc0;-><init>(Ljava/util/concurrent/Executor;Lkd0;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :catchall_1
    move-exception p0

    .line 73
    goto :goto_2

    .line 74
    :cond_1
    :goto_1
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    check-cast p0, Lyc0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 79
    .line 80
    monitor-exit p1

    .line 81
    return-object p0

    .line 82
    :goto_2
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 83
    throw p0

    .line 84
    :goto_3
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 85
    throw p0
.end method

.method public final declared-synchronized d(Lyc0;Ljd0;)Led0;
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    new-instance v2, Led0;

    .line 7
    .line 8
    iget-object v3, v1, Ls53;->e:Ln61;

    .line 9
    .line 10
    iget-object v4, v1, Ls53;->d:Le61;

    .line 11
    .line 12
    invoke-virtual {v4}, Le61;->a()V

    .line 13
    .line 14
    .line 15
    iget-object v4, v4, Le61;->b:Ljava/lang/String;

    .line 16
    .line 17
    const-string v5, "[DEFAULT]"

    .line 18
    .line 19
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_0

    .line 24
    .line 25
    iget-object v4, v1, Ls53;->g:Ln03;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    new-instance v4, Lea0;

    .line 31
    .line 32
    const/4 v5, 0x6

    .line 33
    invoke-direct {v4, v5}, Lea0;-><init>(I)V

    .line 34
    .line 35
    .line 36
    :goto_0
    iget-object v5, v1, Ls53;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 37
    .line 38
    sget-object v6, Ls53;->j:Lcom/google/android/gms/common/util/Clock;

    .line 39
    .line 40
    sget-object v7, Ls53;->k:Ljava/util/Random;

    .line 41
    .line 42
    iget-object v8, v1, Ls53;->d:Le61;

    .line 43
    .line 44
    invoke-virtual {v8}, Le61;->a()V

    .line 45
    .line 46
    .line 47
    iget-object v8, v8, Le61;->c:Lq61;

    .line 48
    .line 49
    iget-object v12, v8, Lq61;->a:Ljava/lang/String;

    .line 50
    .line 51
    iget-object v8, v1, Ls53;->d:Le61;

    .line 52
    .line 53
    invoke-virtual {v8}, Le61;->a()V

    .line 54
    .line 55
    .line 56
    iget-object v8, v8, Le61;->c:Lq61;

    .line 57
    .line 58
    iget-object v11, v8, Lq61;->b:Ljava/lang/String;

    .line 59
    .line 60
    new-instance v9, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;

    .line 61
    .line 62
    iget-object v10, v1, Ls53;->b:Landroid/content/Context;

    .line 63
    .line 64
    iget-object v8, v0, Ljd0;->a:Landroid/content/SharedPreferences;

    .line 65
    .line 66
    const-string v13, "fetch_timeout_in_seconds"

    .line 67
    .line 68
    const-wide/16 v14, 0x3c

    .line 69
    .line 70
    invoke-interface {v8, v13, v14, v15}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 71
    .line 72
    .line 73
    move-result-wide v16

    .line 74
    iget-object v8, v0, Ljd0;->a:Landroid/content/SharedPreferences;

    .line 75
    .line 76
    const-string v13, "fetch_timeout_in_seconds"

    .line 77
    .line 78
    invoke-interface {v8, v13, v14, v15}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 79
    .line 80
    .line 81
    move-result-wide v13

    .line 82
    move-wide/from16 v18, v16

    .line 83
    .line 84
    move-wide v15, v13

    .line 85
    move-wide/from16 v13, v18

    .line 86
    .line 87
    invoke-direct/range {v9 .. v16}, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 88
    .line 89
    .line 90
    iget-object v8, v1, Ls53;->i:Ljava/util/HashMap;

    .line 91
    .line 92
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 93
    .line 94
    .line 95
    iput-object v3, v2, Led0;->a:Ljava/lang/Object;

    .line 96
    .line 97
    iput-object v4, v2, Led0;->b:Ljava/lang/Object;

    .line 98
    .line 99
    iput-object v5, v2, Led0;->c:Ljava/lang/Object;

    .line 100
    .line 101
    iput-object v6, v2, Led0;->d:Ljava/lang/Object;

    .line 102
    .line 103
    iput-object v7, v2, Led0;->e:Ljava/lang/Object;

    .line 104
    .line 105
    move-object/from16 v3, p1

    .line 106
    .line 107
    iput-object v3, v2, Led0;->f:Ljava/lang/Object;

    .line 108
    .line 109
    iput-object v9, v2, Led0;->g:Ljava/lang/Object;

    .line 110
    .line 111
    iput-object v0, v2, Led0;->h:Ljava/lang/Object;

    .line 112
    .line 113
    iput-object v8, v2, Led0;->i:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    .line 115
    monitor-exit p0

    .line 116
    return-object v2

    .line 117
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    throw v0
.end method
