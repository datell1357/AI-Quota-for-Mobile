.class public final Lrf1;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic n:I

.field public o:Ljava/lang/Object;

.field public final p:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 20
    iput p1, p0, Lrf1;->n:I

    iput-object p2, p0, Lrf1;->o:Ljava/lang/Object;

    iput-object p3, p0, Lrf1;->p:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0

    .line 16
    iput p1, p0, Lrf1;->n:I

    iput-object p2, p0, Lrf1;->p:Ljava/lang/Object;

    iput-object p3, p0, Lrf1;->o:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lh35;Ltu4;Lh35;)V
    .locals 0

    const/16 p3, 0x12

    iput p3, p0, Lrf1;->n:I

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lrf1;->o:Ljava/lang/Object;

    iput-object p1, p0, Lrf1;->p:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 17
    iput p4, p0, Lrf1;->n:I

    iput-object p2, p0, Lrf1;->o:Ljava/lang/Object;

    iput-object p3, p0, Lrf1;->p:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;I)V
    .locals 0

    .line 18
    iput p2, p0, Lrf1;->n:I

    iput-object p1, p0, Lrf1;->p:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lm75;Lmw4;)V
    .locals 1

    .line 1
    const/16 v0, 0x17

    .line 2
    .line 3
    iput v0, p0, Lrf1;->n:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object p2, p0, Lrf1;->o:Ljava/lang/Object;

    .line 9
    .line 10
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lrf1;->p:Ljava/lang/Object;

    .line 14
    .line 15
    return-void
.end method

.method private final a()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lrf1;->p:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lrf1;->o:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lji3;

    .line 11
    .line 12
    iget-object v0, v0, Lji3;->r:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v0

    .line 15
    :try_start_1
    iget-object p0, p0, Lrf1;->o:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p0, Lji3;

    .line 18
    .line 19
    invoke-virtual {p0}, Lji3;->a()V

    .line 20
    .line 21
    .line 22
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    throw p0

    .line 27
    :catchall_1
    move-exception v0

    .line 28
    iget-object v1, p0, Lrf1;->o:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v1, Lji3;

    .line 31
    .line 32
    iget-object v1, v1, Lji3;->r:Ljava/lang/Object;

    .line 33
    .line 34
    monitor-enter v1

    .line 35
    :try_start_2
    iget-object p0, p0, Lrf1;->o:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast p0, Lji3;

    .line 38
    .line 39
    invoke-virtual {p0}, Lji3;->a()V

    .line 40
    .line 41
    .line 42
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 43
    throw v0

    .line 44
    :catchall_2
    move-exception p0

    .line 45
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 46
    throw p0
.end method

.method private final b()V
    .locals 5

    .line 1
    iget-object v0, p0, Lrf1;->p:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Luv3;

    .line 4
    .line 5
    iget-object v0, v0, Luv3;->n:Leg4;

    .line 6
    .line 7
    iget-object v0, v0, Leg4;->f:Lez2;

    .line 8
    .line 9
    iget-object v1, p0, Lrf1;->o:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Ljava/lang/String;

    .line 12
    .line 13
    iget-object v2, v0, Lez2;->k:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter v2

    .line 16
    :try_start_0
    invoke-virtual {v0, v1}, Lez2;->c(Ljava/lang/String;)Lhh4;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object v0, v0, Lhh4;->a:Log4;

    .line 23
    .line 24
    monitor-exit v2

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    const/4 v0, 0x0

    .line 30
    :goto_0
    if-eqz v0, :cond_1

    .line 31
    .line 32
    sget-object v1, Llf0;->j:Llf0;

    .line 33
    .line 34
    iget-object v2, v0, Log4;->j:Llf0;

    .line 35
    .line 36
    invoke-static {v1, v2}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_1

    .line 41
    .line 42
    iget-object v1, p0, Lrf1;->p:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v1, Luv3;

    .line 45
    .line 46
    iget-object v1, v1, Luv3;->p:Ljava/lang/Object;

    .line 47
    .line 48
    monitor-enter v1

    .line 49
    :try_start_1
    iget-object v2, p0, Lrf1;->p:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v2, Luv3;

    .line 52
    .line 53
    iget-object v2, v2, Luv3;->s:Ljava/util/HashMap;

    .line 54
    .line 55
    invoke-static {v0}, Lrg4;->a(Log4;)Lbg4;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    iget-object v2, p0, Lrf1;->p:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v2, Luv3;

    .line 65
    .line 66
    iget-object v3, v2, Luv3;->u:Lct2;

    .line 67
    .line 68
    iget-object v4, v2, Luv3;->o:Lqd1;

    .line 69
    .line 70
    iget-object v4, v4, Lqd1;->p:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v4, Lji0;

    .line 73
    .line 74
    invoke-static {v3, v0, v4, v2}, Lsf4;->a(Lct2;Log4;Lji0;Lzo2;)Lir3;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    iget-object p0, p0, Lrf1;->p:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast p0, Luv3;

    .line 81
    .line 82
    iget-object p0, p0, Luv3;->t:Ljava/util/HashMap;

    .line 83
    .line 84
    invoke-static {v0}, Lrg4;->a(Log4;)Lbg4;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {p0, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    monitor-exit v1

    .line 92
    return-void

    .line 93
    :catchall_1
    move-exception p0

    .line 94
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 95
    throw p0

    .line 96
    :cond_1
    return-void

    .line 97
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 98
    throw p0
.end method

.method private final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lrf1;->p:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ln25;

    .line 4
    .line 5
    iget-object v1, v0, Ln25;->p:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v0, v0, Ln25;->q:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lxo2;

    .line 11
    .line 12
    iget-object p0, p0, Lrf1;->o:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Low3;

    .line 15
    .line 16
    invoke-interface {v0, p0}, Lxo2;->onComplete(Low3;)V

    .line 17
    .line 18
    .line 19
    monitor-exit v1

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0
.end method

.method private final d()V
    .locals 28

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lrf1;->p:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Lr45;

    iget-object v0, v0, Lrf1;->o:Ljava/lang/Object;

    check-cast v0, Lf65;

    .line 2
    iget-object v1, v3, Lr45;->g:Lj45;

    iget-object v9, v3, Lr45;->f:La25;

    iget-object v10, v3, Lr45;->e:Lf35;

    iget-object v11, v3, Lr45;->i:Lac5;

    .line 3
    invoke-static {v1}, Lr45;->l(Lq55;)V

    .line 4
    invoke-virtual {v1}, Lj45;->v()V

    iget-object v1, v3, Lr45;->d:Lds4;

    .line 5
    iget-object v2, v1, Lib0;->a:Ljava/lang/Object;

    check-cast v2, Lr45;

    .line 6
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    new-instance v2, Lst4;

    .line 8
    invoke-direct {v2, v3}, Lq55;-><init>(Lr45;)V

    .line 9
    invoke-virtual {v2}, Lq55;->y()V

    iput-object v2, v3, Lr45;->s:Lst4;

    iget-object v2, v0, Lf65;->d:Lix4;

    const-wide/16 v12, 0x0

    if-nez v2, :cond_0

    move-wide v6, v12

    goto :goto_0

    .line 10
    :cond_0
    iget-wide v4, v2, Lix4;->n:J

    move-wide v6, v4

    .line 11
    :goto_0
    const-string v14, ""

    if-eqz v2, :cond_2

    iget-object v2, v2, Lix4;->q:Landroid/os/Bundle;

    if-nez v2, :cond_1

    goto :goto_1

    .line 12
    :cond_1
    const-string v4, "runtime_google_app_id"

    .line 13
    invoke-virtual {v2, v4, v14}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    goto :goto_2

    :cond_2
    :goto_1
    move-object v8, v14

    .line 14
    :goto_2
    new-instance v2, Lg15;

    iget-wide v4, v0, Lf65;->c:J

    .line 15
    invoke-direct/range {v2 .. v8}, Lg15;-><init>(Lr45;JJLjava/lang/String;)V

    .line 16
    invoke-virtual {v2}, Lj05;->x()V

    iput-object v2, v3, Lr45;->t:Lg15;

    .line 17
    new-instance v0, Lm15;

    invoke-direct {v0, v3}, Lm15;-><init>(Lr45;)V

    .line 18
    invoke-virtual {v0}, Lj05;->x()V

    iput-object v0, v3, Lr45;->q:Lm15;

    new-instance v0, Lo95;

    .line 19
    invoke-direct {v0, v3}, Lo95;-><init>(Lr45;)V

    .line 20
    invoke-virtual {v0}, Lj05;->x()V

    iput-object v0, v3, Lr45;->r:Lo95;

    .line 21
    iget-boolean v0, v11, Lq55;->b:Z

    iget-object v4, v11, Lib0;->a:Ljava/lang/Object;

    check-cast v4, Lr45;

    .line 22
    const-string v5, "Can\'t initialize twice"

    if-nez v0, :cond_4c

    .line 23
    invoke-virtual {v11}, Lib0;->v()V

    new-instance v0, Ljava/security/SecureRandom;

    .line 24
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 25
    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v6

    cmp-long v8, v6, v12

    if-nez v8, :cond_3

    .line 26
    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v6

    cmp-long v0, v6, v12

    if-nez v0, :cond_3

    iget-object v0, v11, Lib0;->a:Ljava/lang/Object;

    check-cast v0, Lr45;

    .line 27
    iget-object v0, v0, Lr45;->f:La25;

    .line 28
    invoke-static {v0}, Lr45;->l(Lq55;)V

    .line 29
    iget-object v0, v0, La25;->i:Lx15;

    .line 30
    const-string v8, "Utils falling back to Random for random id"

    invoke-virtual {v0, v8}, Lx15;->a(Ljava/lang/String;)V

    :cond_3
    iget-object v0, v11, Lac5;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 31
    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 32
    iget-object v0, v4, Lr45;->C:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    const/4 v6, 0x1

    .line 33
    iput-boolean v6, v11, Lq55;->b:Z

    .line 34
    iget-boolean v0, v10, Lq55;->b:Z

    if-nez v0, :cond_4b

    .line 35
    iget-object v0, v10, Lib0;->a:Ljava/lang/Object;

    check-cast v0, Lr45;

    .line 36
    iget-object v0, v0, Lr45;->a:Landroid/content/Context;

    .line 37
    const-string v7, "com.google.android.gms.measurement.prefs"

    const/4 v8, 0x0

    .line 38
    invoke-virtual {v0, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, v10, Lf35;->c:Landroid/content/SharedPreferences;

    .line 39
    const-string v7, "has_been_opened"

    invoke-interface {v0, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v10, Lf35;->r:Z

    if-nez v0, :cond_4

    iget-object v0, v10, Lf35;->c:Landroid/content/SharedPreferences;

    .line 40
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 41
    invoke-interface {v0, v7, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 42
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_4
    new-instance v0, Lq41;

    .line 43
    sget-object v7, Le05;->d:Ld05;

    const/4 v15, 0x0

    .line 44
    invoke-virtual {v7, v15}, Ld05;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 45
    check-cast v7, Ljava/lang/Long;

    move-object/from16 p0, v9

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 46
    invoke-direct {v0, v10, v7, v8}, Lq41;-><init>(Lf35;J)V

    iput-object v0, v10, Lf35;->e:Lq41;

    .line 47
    iget-object v0, v10, Lib0;->a:Ljava/lang/Object;

    check-cast v0, Lr45;

    .line 48
    iget-object v0, v0, Lr45;->C:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 49
    iput-boolean v6, v10, Lq55;->b:Z

    .line 50
    iget-object v7, v3, Lr45;->t:Lg15;

    .line 51
    iget-boolean v0, v7, Lj05;->b:Z

    if-nez v0, :cond_4a

    .line 52
    iget-object v0, v7, Lib0;->a:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Lr45;

    .line 53
    iget-object v0, v8, Lr45;->f:La25;

    iget-object v9, v8, Lr45;->f:La25;

    .line 54
    invoke-static {v0}, Lr45;->l(Lq55;)V

    .line 55
    iget-object v0, v0, La25;->n:Lx15;

    .line 56
    iget-wide v12, v7, Lg15;->j:J

    .line 57
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move-object v13, v4

    move-object/from16 v18, v5

    iget-wide v4, v7, Lg15;->i:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "sdkVersion bundled with app, dynamiteVersion"

    invoke-virtual {v0, v12, v4, v5}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object v4, v8, Lr45;->a:Landroid/content/Context;

    .line 59
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 60
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    const-string v19, "Unknown"

    const-string v20, "unknown"

    if-nez v12, :cond_6

    .line 61
    invoke-static {v9}, Lr45;->l(Lq55;)V

    .line 62
    iget-object v0, v9, La25;->f:Lx15;

    .line 63
    invoke-static {v5}, La25;->D(Ljava/lang/String;)Ly15;

    move-result-object v15

    const-string v6, "PackageManager is null, app identity information might be inaccurate. appId"

    .line 64
    invoke-virtual {v0, v15, v6}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    move-object/from16 v22, v2

    move-object/from16 v6, v19

    move-object v15, v6

    :goto_3
    move-object/from16 v2, v20

    const/high16 v0, -0x80000000

    goto/16 :goto_9

    .line 65
    :cond_6
    :try_start_0
    invoke-virtual {v12, v5}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    move-object/from16 v0, v20

    goto :goto_5

    .line 66
    :catch_0
    invoke-static {v9}, Lr45;->l(Lq55;)V

    .line 67
    iget-object v0, v9, La25;->f:Lx15;

    .line 68
    invoke-static {v5}, La25;->D(Ljava/lang/String;)Ly15;

    move-result-object v6

    const-string v15, "Error retrieving app installer package name. appId"

    .line 69
    invoke-virtual {v0, v6, v15}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    :goto_5
    if-nez v0, :cond_8

    .line 70
    const-string v0, "manual_install"

    :cond_7
    move-object/from16 v20, v0

    goto :goto_6

    .line 71
    :cond_8
    const-string v6, "com.android.vending"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    move-object/from16 v20, v14

    .line 72
    :goto_6
    :try_start_1
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    invoke-virtual {v12, v0, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 73
    iget-object v6, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 74
    invoke-virtual {v12, v6}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 75
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_9

    .line 76
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_7

    :cond_9
    move-object/from16 v6, v19

    .line 77
    :goto_7
    :try_start_2
    iget-object v15, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    .line 78
    :try_start_3
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    move-object/from16 v22, v2

    move-object/from16 v2, v20

    goto :goto_9

    :catch_1
    move-object/from16 v19, v15

    goto :goto_8

    :catch_2
    move-object/from16 v6, v19

    .line 79
    :catch_3
    :goto_8
    invoke-static {v9}, Lr45;->l(Lq55;)V

    .line 80
    iget-object v0, v9, La25;->f:Lx15;

    .line 81
    invoke-static {v5}, La25;->D(Ljava/lang/String;)Ly15;

    move-result-object v15

    move-object/from16 v22, v2

    const-string v2, "Error retrieving package info. appId, appName"

    .line 82
    invoke-virtual {v0, v15, v6, v2}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v15, v19

    goto :goto_3

    .line 83
    :goto_9
    iput-object v5, v7, Lg15;->c:Ljava/lang/String;

    iput-object v2, v7, Lg15;->f:Ljava/lang/String;

    iput-object v15, v7, Lg15;->d:Ljava/lang/String;

    iput v0, v7, Lg15;->e:I

    iput-object v6, v7, Lg15;->g:Ljava/lang/String;

    move-object v2, v5

    const-wide/16 v5, 0x0

    iput-wide v5, v7, Lg15;->h:J

    .line 84
    invoke-virtual {v8}, Lr45;->g()I

    move-result v0

    if-eqz v0, :cond_10

    const/4 v5, 0x1

    if-eq v0, v5, :cond_f

    const/4 v5, 0x3

    if-eq v0, v5, :cond_e

    const/4 v5, 0x4

    if-eq v0, v5, :cond_d

    const/4 v5, 0x6

    if-eq v0, v5, :cond_c

    const/4 v5, 0x7

    if-eq v0, v5, :cond_b

    const/16 v5, 0x8

    if-eq v0, v5, :cond_a

    .line 85
    invoke-static {v9}, Lr45;->l(Lq55;)V

    .line 86
    iget-object v5, v9, La25;->l:Lx15;

    .line 87
    const-string v6, "App measurement disabled"

    invoke-virtual {v5, v6}, Lx15;->a(Ljava/lang/String;)V

    .line 88
    invoke-static {v9}, Lr45;->l(Lq55;)V

    .line 89
    iget-object v5, v9, La25;->g:Lx15;

    .line 90
    const-string v6, "Invalid scion state in identity"

    invoke-virtual {v5, v6}, Lx15;->a(Ljava/lang/String;)V

    goto :goto_a

    .line 91
    :cond_a
    invoke-static {v9}, Lr45;->l(Lq55;)V

    .line 92
    iget-object v5, v9, La25;->l:Lx15;

    .line 93
    const-string v6, "App measurement disabled due to denied storage consent"

    invoke-virtual {v5, v6}, Lx15;->a(Ljava/lang/String;)V

    goto :goto_a

    .line 94
    :cond_b
    invoke-static {v9}, Lr45;->l(Lq55;)V

    .line 95
    iget-object v5, v9, La25;->l:Lx15;

    .line 96
    const-string v6, "App measurement disabled via the global data collection setting"

    invoke-virtual {v5, v6}, Lx15;->a(Ljava/lang/String;)V

    goto :goto_a

    .line 97
    :cond_c
    invoke-static {v9}, Lr45;->l(Lq55;)V

    .line 98
    iget-object v5, v9, La25;->k:Lx15;

    .line 99
    const-string v6, "App measurement deactivated via resources. This method is being deprecated. Please refer to https://firebase.google.com/support/guides/disable-analytics"

    .line 100
    invoke-virtual {v5, v6}, Lx15;->a(Ljava/lang/String;)V

    goto :goto_a

    .line 101
    :cond_d
    invoke-static {v9}, Lr45;->l(Lq55;)V

    .line 102
    iget-object v5, v9, La25;->l:Lx15;

    .line 103
    const-string v6, "App measurement disabled via the manifest"

    invoke-virtual {v5, v6}, Lx15;->a(Ljava/lang/String;)V

    goto :goto_a

    .line 104
    :cond_e
    invoke-static {v9}, Lr45;->l(Lq55;)V

    .line 105
    iget-object v5, v9, La25;->l:Lx15;

    .line 106
    const-string v6, "App measurement disabled by setAnalyticsCollectionEnabled(false)"

    invoke-virtual {v5, v6}, Lx15;->a(Ljava/lang/String;)V

    goto :goto_a

    .line 107
    :cond_f
    invoke-static {v9}, Lr45;->l(Lq55;)V

    .line 108
    iget-object v5, v9, La25;->l:Lx15;

    .line 109
    const-string v6, "App measurement deactivated via the manifest"

    invoke-virtual {v5, v6}, Lx15;->a(Ljava/lang/String;)V

    goto :goto_a

    .line 110
    :cond_10
    invoke-static {v9}, Lr45;->l(Lq55;)V

    .line 111
    iget-object v5, v9, La25;->n:Lx15;

    .line 112
    const-string v6, "App measurement collection enabled"

    invoke-virtual {v5, v6}, Lx15;->a(Ljava/lang/String;)V

    .line 113
    :goto_a
    iput-object v14, v7, Lg15;->o:Ljava/lang/String;

    .line 114
    :try_start_4
    iget-object v5, v7, Lg15;->m:Ljava/lang/String;

    .line 115
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_11

    goto :goto_b

    .line 116
    :cond_11
    iget-object v5, v8, Lr45;->p:Ljava/lang/String;

    .line 117
    invoke-static {v4, v5}, Lvm4;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 118
    :goto_b
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_12

    goto :goto_c

    :cond_12
    move-object v14, v5

    :goto_c
    iput-object v14, v7, Lg15;->o:Ljava/lang/String;

    if-nez v0, :cond_13

    .line 119
    invoke-static {v9}, Lr45;->l(Lq55;)V

    .line 120
    iget-object v0, v9, La25;->n:Lx15;

    .line 121
    const-string v5, "App measurement enabled for app package, google app id"

    iget-object v6, v7, Lg15;->c:Ljava/lang/String;

    iget-object v14, v7, Lg15;->o:Ljava/lang/String;

    .line 122
    invoke-virtual {v0, v6, v14, v5}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_13
    :goto_d
    const/4 v2, 0x0

    goto :goto_e

    :catch_4
    move-exception v0

    .line 123
    invoke-static {v9}, Lr45;->l(Lq55;)V

    .line 124
    iget-object v5, v9, La25;->f:Lx15;

    .line 125
    invoke-static {v2}, La25;->D(Ljava/lang/String;)Ly15;

    move-result-object v2

    const-string v6, "Fetching Google App Id failed with exception. appId"

    .line 126
    invoke-virtual {v5, v2, v0, v6}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_d

    .line 127
    :goto_e
    iput-object v2, v7, Lg15;->k:Ljava/util/List;

    .line 128
    iget-object v0, v8, Lr45;->d:Lds4;

    .line 129
    iget-object v2, v0, Lib0;->a:Ljava/lang/Object;

    check-cast v2, Lr45;

    .line 130
    const-string v5, "analytics.safelisted_events"

    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 131
    invoke-virtual {v0}, Lds4;->H()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_14

    .line 132
    iget-object v0, v2, Lr45;->f:La25;

    .line 133
    invoke-static {v0}, Lr45;->l(Lq55;)V

    .line 134
    iget-object v0, v0, La25;->f:Lx15;

    .line 135
    const-string v5, "Failed to load metadata: Metadata bundle is null"

    invoke-virtual {v0, v5}, Lx15;->a(Ljava/lang/String;)V

    :goto_f
    const/4 v0, 0x0

    goto :goto_10

    .line 136
    :cond_14
    invoke-virtual {v0, v5}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_15

    goto :goto_f

    .line 137
    :cond_15
    invoke-virtual {v0, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_10
    if-eqz v0, :cond_16

    .line 138
    :try_start_5
    iget-object v5, v2, Lr45;->a:Landroid/content/Context;

    .line 139
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_17

    :cond_16
    :goto_11
    const/4 v0, 0x0

    goto :goto_12

    .line 140
    :cond_17
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_12

    :catch_5
    move-exception v0

    .line 141
    iget-object v2, v2, Lr45;->f:La25;

    .line 142
    invoke-static {v2}, Lr45;->l(Lq55;)V

    .line 143
    iget-object v2, v2, La25;->f:Lx15;

    .line 144
    const-string v5, "Failed to load string array from metadata: resource not found"

    invoke-virtual {v2, v0, v5}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_11

    :goto_12
    if-nez v0, :cond_18

    goto :goto_13

    .line 145
    :cond_18
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 146
    invoke-static {v9}, Lr45;->l(Lq55;)V

    .line 147
    iget-object v0, v9, La25;->k:Lx15;

    .line 148
    const-string v2, "Safelisted event list is empty. Ignoring"

    invoke-virtual {v0, v2}, Lx15;->a(Ljava/lang/String;)V

    goto :goto_14

    .line 149
    :cond_19
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 150
    iget-object v6, v8, Lr45;->i:Lac5;

    invoke-static {v6}, Lr45;->j(Lib0;)V

    .line 151
    const-string v9, "safelisted event"

    .line 152
    invoke-virtual {v6, v9, v5}, Lac5;->y0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1a

    goto :goto_14

    .line 153
    :cond_1b
    :goto_13
    iput-object v0, v7, Lg15;->k:Ljava/util/List;

    :goto_14
    if-eqz v12, :cond_1c

    .line 154
    invoke-static {v4}, Lcom/google/android/gms/common/wrappers/InstantApps;->isInstantApp(Landroid/content/Context;)Z

    move-result v0

    iput v0, v7, Lg15;->n:I

    goto :goto_15

    :cond_1c
    const/4 v6, 0x0

    iput v6, v7, Lg15;->n:I

    .line 155
    :goto_15
    iget-object v0, v7, Lib0;->a:Ljava/lang/Object;

    check-cast v0, Lr45;

    .line 156
    iget-object v0, v0, Lr45;->C:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 157
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    const/4 v5, 0x1

    .line 158
    iput-boolean v5, v7, Lj05;->b:Z

    .line 159
    new-instance v0, Ls75;

    .line 160
    invoke-direct {v0, v3}, Lj05;-><init>(Lr45;)V

    .line 161
    invoke-virtual {v0}, Lj05;->x()V

    iput-object v0, v3, Lr45;->u:Ls75;

    .line 162
    iget-boolean v2, v0, Lj05;->b:Z

    if-nez v2, :cond_49

    .line 163
    iget-object v2, v0, Lib0;->a:Ljava/lang/Object;

    move-object v4, v2

    check-cast v4, Lr45;

    .line 164
    iget-object v4, v4, Lr45;->a:Landroid/content/Context;

    .line 165
    const-string v5, "jobscheduler"

    .line 166
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/job/JobScheduler;

    iput-object v4, v0, Ls75;->c:Landroid/app/job/JobScheduler;

    .line 167
    check-cast v2, Lr45;

    .line 168
    iget-object v2, v2, Lr45;->C:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 169
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    const/4 v5, 0x1

    .line 170
    iput-boolean v5, v0, Lj05;->b:Z

    .line 171
    invoke-static/range {p0 .. p0}, Lr45;->l(Lq55;)V

    move-object/from16 v2, p0

    iget-object v0, v2, La25;->m:Lx15;

    iget-object v4, v2, La25;->l:Lx15;

    iget-object v5, v2, La25;->n:Lx15;

    iget-object v6, v2, La25;->f:Lx15;

    .line 172
    invoke-virtual {v1}, Lds4;->B()V

    const-wide/32 v7, 0x274e8

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "App measurement initialized, version"

    invoke-virtual {v4, v7, v8}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    invoke-static {v2}, Lr45;->l(Lq55;)V

    .line 174
    const-string v7, "To enable debug logging run: adb shell setprop log.tag.FA VERBOSE"

    invoke-virtual {v4, v7}, Lx15;->a(Ljava/lang/String;)V

    .line 175
    invoke-virtual/range {v22 .. v22}, Lg15;->B()Ljava/lang/String;

    move-result-object v7

    .line 176
    iget-object v8, v1, Lds4;->c:Ljava/lang/String;

    .line 177
    invoke-virtual {v11, v7, v8}, Lac5;->Z(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1d

    .line 178
    invoke-static {v2}, Lr45;->l(Lq55;)V

    .line 179
    const-string v7, "Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none."

    .line 180
    invoke-virtual {v4, v7}, Lx15;->a(Ljava/lang/String;)V

    goto :goto_16

    .line 181
    :cond_1d
    invoke-static {v2}, Lr45;->l(Lq55;)V

    .line 182
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app "

    invoke-virtual {v8, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 183
    invoke-virtual {v4, v7}, Lx15;->a(Ljava/lang/String;)V

    .line 184
    :goto_16
    invoke-static {v2}, Lr45;->l(Lq55;)V

    .line 185
    const-string v7, "Debug-level message logging enabled"

    invoke-virtual {v0, v7}, Lx15;->a(Ljava/lang/String;)V

    iget v7, v3, Lr45;->A:I

    iget-object v8, v3, Lr45;->C:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 186
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v9

    if-eq v7, v9, :cond_1e

    .line 187
    invoke-static {v2}, Lr45;->l(Lq55;)V

    .line 188
    iget v7, v3, Lr45;->A:I

    .line 189
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "Not all components initialized"

    invoke-virtual {v6, v7, v8, v9}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1e
    const/4 v7, 0x1

    iput-boolean v7, v3, Lr45;->v:Z

    .line 190
    iget-wide v7, v3, Lr45;->D:J

    iget-object v9, v3, Lr45;->m:Lm75;

    iget-object v12, v3, Lr45;->g:Lj45;

    invoke-static {v12}, Lr45;->l(Lq55;)V

    .line 191
    invoke-virtual {v12}, Lj45;->v()V

    .line 192
    iget-object v12, v3, Lr45;->u:Ls75;

    invoke-static {v12}, Lr45;->i(Laz4;)V

    iget-object v12, v3, Lr45;->u:Ls75;

    .line 193
    invoke-virtual {v12}, Ls75;->A()Le55;

    move-result-object v12

    .line 194
    invoke-static {}, Ler4;->a()V

    .line 195
    sget-object v14, Le05;->P0:Ld05;

    const/4 v15, 0x0

    .line 196
    invoke-virtual {v1, v15, v14}, Lds4;->G(Ljava/lang/String;Ld05;)Z

    move-result v14

    sget-object v15, Le55;->p:Le55;

    if-ne v12, v15, :cond_1f

    const/4 v12, 0x1

    goto :goto_17

    :cond_1f
    const/4 v12, 0x0

    :goto_17
    const-wide/16 v18, 0x1

    if-eqz v14, :cond_20

    .line 197
    invoke-virtual {v11}, Lib0;->v()V

    .line 198
    invoke-virtual {v11}, Lac5;->R()J

    move-result-wide v14

    cmp-long v14, v14, v18

    if-nez v14, :cond_20

    goto :goto_18

    :cond_20
    if-eqz v12, :cond_23

    const/4 v12, 0x1

    .line 199
    :goto_18
    invoke-virtual {v11}, Lib0;->v()V

    new-instance v14, Landroid/content/IntentFilter;

    .line 200
    invoke-direct {v14}, Landroid/content/IntentFilter;-><init>()V

    const-string v15, "com.google.android.gms.measurement.TRIGGERS_AVAILABLE"

    .line 201
    invoke-virtual {v14, v15}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v15, "com.google.android.gms.measurement.BATCHES_AVAILABLE"

    .line 202
    invoke-virtual {v14, v15}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v15, Lmy;

    .line 203
    invoke-direct {v15, v13}, Lmy;-><init>(Lr45;)V

    move/from16 p0, v12

    iget-object v12, v13, Lr45;->a:Landroid/content/Context;

    move-object/from16 v20, v2

    .line 204
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    move-object/from16 v21, v4

    const/16 v4, 0x21

    if-lt v2, v4, :cond_21

    .line 205
    invoke-static {v12, v15, v14}, Lsf;->k(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_19

    :cond_21
    const/16 v4, 0x1a

    if-lt v2, v4, :cond_22

    .line 206
    invoke-static {v12, v15, v14}, Lsf;->j(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_19

    :cond_22
    const/4 v2, 0x0

    .line 207
    invoke-virtual {v12, v15, v14, v2, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 208
    :goto_19
    iget-object v2, v13, Lr45;->f:La25;

    .line 209
    invoke-static {v2}, Lr45;->l(Lq55;)V

    .line 210
    iget-object v2, v2, La25;->m:Lx15;

    .line 211
    const-string v4, "Registered app receiver"

    invoke-virtual {v2, v4}, Lx15;->a(Ljava/lang/String;)V

    if-eqz p0, :cond_24

    .line 212
    iget-object v2, v3, Lr45;->u:Ls75;

    invoke-static {v2}, Lr45;->i(Laz4;)V

    iget-object v2, v3, Lr45;->u:Ls75;

    .line 213
    sget-object v4, Le05;->C:Ld05;

    const/4 v15, 0x0

    .line 214
    invoke-virtual {v4, v15}, Ld05;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 215
    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v2, v14, v15}, Ls75;->z(J)V

    goto :goto_1a

    :cond_23
    move-object/from16 v20, v2

    move-object/from16 v21, v4

    .line 216
    :cond_24
    :goto_1a
    iget-object v2, v10, Lf35;->g:Lmu0;

    .line 217
    invoke-virtual {v10}, Lf35;->C()Ly55;

    move-result-object v4

    .line 218
    iget v12, v4, Ly55;->b:I

    .line 219
    const-string v14, "google_analytics_default_allow_ad_storage"

    const/4 v15, 0x0

    .line 220
    invoke-virtual {v1, v14, v15}, Lds4;->L(Ljava/lang/String;Z)Lu55;

    move-result-object v14

    move-object/from16 p0, v4

    const-string v4, "google_analytics_default_allow_analytics_storage"

    .line 221
    invoke-virtual {v1, v4, v15}, Lds4;->L(Ljava/lang/String;Z)Lu55;

    move-result-object v4

    .line 222
    sget-object v15, Lx55;->p:Lx55;

    move-object/from16 v23, v13

    const-class v13, Lx55;

    move-object/from16 v24, v2

    sget-object v2, Lu55;->o:Lu55;

    if-ne v14, v2, :cond_25

    if-eq v4, v2, :cond_26

    :cond_25
    move-object/from16 v25, v3

    goto :goto_1b

    :cond_26
    move-object/from16 v25, v3

    move-object/from16 v26, v6

    move-object/from16 v27, v11

    goto :goto_1c

    .line 223
    :goto_1b
    invoke-virtual {v10}, Lf35;->z()Landroid/content/SharedPreferences;

    move-result-object v3

    move-object/from16 v26, v6

    const-string v6, "consent_source"

    move-object/from16 v27, v11

    const/16 v11, 0x64

    invoke-interface {v3, v6, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/16 v6, -0xa

    .line 224
    invoke-static {v6, v3}, Ly55;->l(II)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 225
    new-instance v3, Ljava/util/EnumMap;

    invoke-direct {v3, v13}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 226
    sget-object v11, Lx55;->o:Lx55;

    invoke-virtual {v3, v11, v14}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    invoke-virtual {v3, v15, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ly55;

    .line 228
    invoke-direct {v4, v3, v6}, Ly55;-><init>(Ljava/util/EnumMap;I)V

    goto :goto_1f

    .line 229
    :cond_27
    :goto_1c
    invoke-virtual/range {v25 .. v25}, Lr45;->q()Lg15;

    move-result-object v3

    invoke-virtual {v3}, Lg15;->C()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_28

    if-eqz v12, :cond_29

    const/16 v3, 0x1e

    if-eq v12, v3, :cond_29

    const/16 v3, 0xa

    if-eq v12, v3, :cond_29

    const/16 v3, 0x28

    if-ne v12, v3, :cond_28

    goto :goto_1e

    :cond_28
    :goto_1d
    const/4 v4, 0x0

    goto :goto_1f

    .line 230
    :cond_29
    :goto_1e
    invoke-static {v9}, Lr45;->k(Lj05;)V

    new-instance v3, Ly55;

    const/16 v6, -0xa

    .line 231
    invoke-direct {v3, v6}, Ly55;-><init>(I)V

    const/4 v6, 0x0

    .line 232
    invoke-virtual {v9, v3, v6}, Lm75;->R(Ly55;Z)V

    goto :goto_1d

    :goto_1f
    if-eqz v4, :cond_2a

    .line 233
    invoke-static {v9}, Lr45;->k(Lj05;)V

    const/4 v3, 0x1

    .line 234
    invoke-virtual {v9, v4, v3}, Lm75;->R(Ly55;Z)V

    goto :goto_20

    :cond_2a
    move-object/from16 v4, p0

    .line 235
    :goto_20
    invoke-static {v9}, Lr45;->k(Lj05;)V

    iget-object v3, v9, Lib0;->a:Ljava/lang/Object;

    check-cast v3, Lr45;

    .line 236
    invoke-virtual {v9, v4}, Lm75;->V(Ly55;)V

    .line 237
    invoke-virtual {v10}, Lib0;->v()V

    .line 238
    invoke-virtual {v10}, Lf35;->z()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v6, "dma_consent_settings"

    const/4 v11, 0x0

    invoke-interface {v4, v6, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 239
    invoke-static {v4}, Lrt4;->b(Ljava/lang/String;)Lrt4;

    move-result-object v4

    .line 240
    iget v4, v4, Lrt4;->a:I

    .line 241
    const-string v6, "google_analytics_default_allow_ad_personalization_signals"

    const/4 v11, 0x1

    .line 242
    invoke-virtual {v1, v6, v11}, Lds4;->L(Ljava/lang/String;Z)Lu55;

    move-result-object v6

    if-eq v6, v2, :cond_2b

    .line 243
    invoke-static/range {v20 .. v20}, Lr45;->l(Lq55;)V

    .line 244
    const-string v12, "Default ad personalization consent from Manifest"

    .line 245
    invoke-virtual {v5, v6, v12}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2b
    const-string v6, "google_analytics_default_allow_ad_user_data"

    .line 246
    invoke-virtual {v1, v6, v11}, Lds4;->L(Ljava/lang/String;Z)Lu55;

    move-result-object v6

    if-eq v6, v2, :cond_2c

    const/16 v2, -0xa

    invoke-static {v2, v4}, Ly55;->l(II)Z

    move-result v12

    if-eqz v12, :cond_2c

    .line 247
    invoke-static {v9}, Lr45;->k(Lj05;)V

    .line 248
    new-instance v4, Ljava/util/EnumMap;

    invoke-direct {v4, v13}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 249
    sget-object v12, Lx55;->q:Lx55;

    invoke-virtual {v4, v12, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lrt4;

    const/4 v12, 0x0

    .line 250
    invoke-direct {v6, v4, v2, v12, v12}, Lrt4;-><init>(Ljava/util/EnumMap;ILjava/lang/Boolean;Ljava/lang/String;)V

    .line 251
    invoke-virtual {v9, v6, v11}, Lm75;->Q(Lrt4;Z)V

    goto :goto_21

    .line 252
    :cond_2c
    invoke-virtual/range {v25 .. v25}, Lr45;->q()Lg15;

    move-result-object v2

    invoke-virtual {v2}, Lg15;->C()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2e

    if-eqz v4, :cond_2d

    const/16 v2, 0x1e

    if-ne v4, v2, :cond_2e

    .line 253
    :cond_2d
    invoke-static {v9}, Lr45;->k(Lj05;)V

    new-instance v2, Lrt4;

    const/16 v6, -0xa

    const/4 v11, 0x0

    .line 254
    invoke-direct {v2, v11, v6, v11, v11}, Lrt4;-><init>(Ljava/lang/Boolean;ILjava/lang/Boolean;Ljava/lang/String;)V

    const/4 v11, 0x1

    .line 255
    invoke-virtual {v9, v2, v11}, Lm75;->Q(Lrt4;Z)V

    .line 256
    :cond_2e
    :goto_21
    const-string v2, "google_analytics_tcf_data_enabled"

    .line 257
    invoke-virtual {v1, v2}, Lds4;->I(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 258
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 259
    :cond_2f
    invoke-static/range {v20 .. v20}, Lr45;->l(Lq55;)V

    .line 260
    const-string v2, "TCF client enabled."

    invoke-virtual {v0, v2}, Lx15;->a(Ljava/lang/String;)V

    .line 261
    invoke-static {v9}, Lr45;->k(Lj05;)V

    .line 262
    invoke-virtual {v9}, Laz4;->v()V

    .line 263
    iget-object v0, v3, Lr45;->f:La25;

    .line 264
    invoke-static {v0}, Lr45;->l(Lq55;)V

    .line 265
    iget-object v0, v0, La25;->m:Lx15;

    .line 266
    const-string v2, "Register tcfPrefChangeListener."

    invoke-virtual {v0, v2}, Lx15;->a(Ljava/lang/String;)V

    iget-object v0, v9, Lm75;->t:Li75;

    if-nez v0, :cond_30

    new-instance v0, Li65;

    const/4 v2, 0x2

    .line 267
    invoke-direct {v0, v9, v3, v2}, Li65;-><init>(Lm75;Ls55;I)V

    iput-object v0, v9, Lm75;->u:Li65;

    new-instance v0, Li75;

    invoke-direct {v0, v9}, Li75;-><init>(Lm75;)V

    iput-object v0, v9, Lm75;->t:Li75;

    .line 268
    :cond_30
    iget-object v0, v3, Lr45;->e:Lf35;

    invoke-static {v0}, Lr45;->j(Lib0;)V

    .line 269
    invoke-virtual {v0}, Lf35;->A()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v2, v9, Lm75;->t:Li75;

    .line 270
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 271
    invoke-static {v9}, Lr45;->k(Lj05;)V

    .line 272
    invoke-virtual {v9}, Lm75;->B()V

    .line 273
    :cond_31
    iget-object v0, v10, Lf35;->f:Ly25;

    invoke-virtual {v0}, Ly25;->a()J

    move-result-wide v11

    const-wide/16 v16, 0x0

    cmp-long v2, v11, v16

    if-nez v2, :cond_32

    .line 274
    invoke-static/range {v20 .. v20}, Lr45;->l(Lq55;)V

    .line 275
    const-string v2, "Persisting first open"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v5, v4, v2}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    invoke-virtual {v0, v7, v8}, Ly25;->b(J)V

    .line 277
    :cond_32
    invoke-static {v9}, Lr45;->k(Lj05;)V

    .line 278
    iget-object v2, v9, Lm75;->q:Le65;

    .line 279
    invoke-virtual {v2}, Le65;->d()Z

    move-result v4

    if-eqz v4, :cond_33

    .line 280
    invoke-virtual {v2}, Le65;->c()Z

    move-result v4

    if-eqz v4, :cond_33

    iget-object v2, v2, Le65;->a:Lr45;

    .line 281
    iget-object v2, v2, Lr45;->e:Lf35;

    .line 282
    invoke-static {v2}, Lr45;->j(Lib0;)V

    .line 283
    iget-object v2, v2, Lf35;->w:Lmu0;

    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Lmu0;->i(Ljava/lang/String;)V

    .line 284
    :cond_33
    invoke-virtual/range {v25 .. v25}, Lr45;->h()Z

    move-result v2

    if-nez v2, :cond_3b

    .line 285
    invoke-virtual/range {v25 .. v25}, Lr45;->a()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 286
    const-string v0, "android.permission.INTERNET"

    move-object/from16 v2, v27

    .line 287
    invoke-virtual {v2, v0}, Lac5;->X(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 288
    invoke-static/range {v20 .. v20}, Lr45;->l(Lq55;)V

    .line 289
    const-string v0, "App is missing INTERNET permission"

    move-object/from16 v4, v26

    invoke-virtual {v4, v0}, Lx15;->a(Ljava/lang/String;)V

    goto :goto_22

    :cond_34
    move-object/from16 v4, v26

    .line 290
    :goto_22
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    .line 291
    invoke-virtual {v2, v0}, Lac5;->X(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 292
    invoke-static/range {v20 .. v20}, Lr45;->l(Lq55;)V

    .line 293
    const-string v0, "App is missing ACCESS_NETWORK_STATE permission"

    invoke-virtual {v4, v0}, Lx15;->a(Ljava/lang/String;)V

    :cond_35
    move-object/from16 v6, v25

    iget-object v0, v6, Lr45;->a:Landroid/content/Context;

    .line 294
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->isCallerInstantApp()Z

    move-result v7

    if-nez v7, :cond_39

    .line 295
    invoke-virtual {v1}, Lds4;->y()Z

    move-result v7

    if-nez v7, :cond_39

    .line 296
    invoke-static {v0}, Lac5;->p0(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_36

    .line 297
    invoke-static/range {v20 .. v20}, Lr45;->l(Lq55;)V

    .line 298
    const-string v7, "AppMeasurementReceiver not registered/enabled"

    invoke-virtual {v4, v7}, Lx15;->a(Ljava/lang/String;)V

    .line 299
    :cond_36
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    const-string v7, "com.google.android.gms.measurement.AppMeasurementJobService"

    .line 301
    :try_start_6
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    if-nez v8, :cond_37

    goto :goto_23

    :cond_37
    new-instance v11, Landroid/content/ComponentName;

    .line 302
    invoke-direct {v11, v0, v7}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v15, 0x0

    invoke-virtual {v8, v11, v15}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 303
    iget-boolean v0, v0, Landroid/content/pm/ServiceInfo;->enabled:Z
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_6

    if-eqz v0, :cond_38

    goto :goto_24

    .line 304
    :catch_6
    :cond_38
    :goto_23
    invoke-static/range {v20 .. v20}, Lr45;->l(Lq55;)V

    .line 305
    const-string v0, "AppMeasurementService not registered/enabled"

    invoke-virtual {v4, v0}, Lx15;->a(Ljava/lang/String;)V

    .line 306
    :cond_39
    :goto_24
    invoke-static/range {v20 .. v20}, Lr45;->l(Lq55;)V

    .line 307
    const-string v0, "Uploading is not possible. App measurement disabled"

    invoke-virtual {v4, v0}, Lx15;->a(Ljava/lang/String;)V

    :goto_25
    move-object/from16 v4, v20

    goto/16 :goto_2b

    :cond_3a
    move-object/from16 v6, v25

    move-object/from16 v2, v27

    goto :goto_25

    :cond_3b
    move-object/from16 v6, v25

    move-object/from16 v2, v27

    .line 308
    invoke-virtual {v6}, Lr45;->q()Lg15;

    move-result-object v4

    invoke-virtual {v4}, Lg15;->C()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3f

    .line 309
    invoke-virtual {v6}, Lr45;->q()Lg15;

    move-result-object v4

    invoke-virtual {v4}, Lg15;->C()Ljava/lang/String;

    move-result-object v4

    .line 310
    invoke-virtual {v10}, Lib0;->v()V

    .line 311
    invoke-virtual {v10}, Lf35;->z()Landroid/content/SharedPreferences;

    move-result-object v11

    const-string v12, "gmp_app_id"

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 312
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    .line 313
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v13, :cond_3e

    if-nez v14, :cond_3e

    .line 314
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3e

    .line 316
    invoke-static/range {v20 .. v20}, Lr45;->l(Lq55;)V

    .line 317
    const-string v4, "Rechecking which service to use due to a GMP App Id change"

    move-object/from16 v11, v21

    invoke-virtual {v11, v4}, Lx15;->a(Ljava/lang/String;)V

    .line 318
    invoke-virtual {v10}, Lib0;->v()V

    .line 319
    invoke-virtual {v10}, Lib0;->v()V

    .line 320
    invoke-virtual {v10}, Lf35;->z()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v11, "measurement_enabled"

    invoke-interface {v4, v11}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 321
    invoke-virtual {v10}, Lf35;->z()Landroid/content/SharedPreferences;

    move-result-object v4

    const/4 v13, 0x1

    invoke-interface {v4, v11, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_26

    :cond_3c
    const/4 v4, 0x0

    .line 322
    :goto_26
    invoke-virtual {v10}, Lf35;->z()Landroid/content/SharedPreferences;

    move-result-object v13

    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    .line 323
    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 324
    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz v4, :cond_3d

    .line 325
    invoke-virtual {v10}, Lib0;->v()V

    .line 326
    invoke-virtual {v10}, Lf35;->z()Landroid/content/SharedPreferences;

    move-result-object v13

    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    .line 327
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v13, v11, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 328
    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 329
    :cond_3d
    invoke-virtual {v6}, Lr45;->n()Lm15;

    move-result-object v4

    invoke-virtual {v4}, Lm15;->z()V

    iget-object v4, v6, Lr45;->r:Lo95;

    .line 330
    invoke-virtual {v4}, Lo95;->D()V

    iget-object v4, v6, Lr45;->r:Lo95;

    .line 331
    invoke-virtual {v4}, Lo95;->B()V

    .line 332
    invoke-virtual {v0, v7, v8}, Ly25;->b(J)V

    move-object/from16 v0, v24

    const/4 v11, 0x0

    .line 333
    invoke-virtual {v0, v11}, Lmu0;->i(Ljava/lang/String;)V

    goto :goto_27

    :cond_3e
    move-object/from16 v0, v24

    .line 334
    :goto_27
    invoke-virtual {v6}, Lr45;->q()Lg15;

    move-result-object v4

    invoke-virtual {v4}, Lg15;->C()Ljava/lang/String;

    move-result-object v4

    .line 335
    invoke-virtual {v10}, Lib0;->v()V

    .line 336
    invoke-virtual {v10}, Lf35;->z()Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 337
    invoke-interface {v7, v12, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 338
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_28

    :cond_3f
    move-object/from16 v0, v24

    .line 339
    :goto_28
    invoke-virtual {v10}, Lf35;->C()Ly55;

    move-result-object v4

    .line 340
    invoke-virtual {v4, v15}, Ly55;->i(Lx55;)Z

    move-result v4

    if-nez v4, :cond_40

    const/4 v11, 0x0

    .line 341
    invoke-virtual {v0, v11}, Lmu0;->i(Ljava/lang/String;)V

    .line 342
    :cond_40
    invoke-static {v9}, Lr45;->k(Lj05;)V

    .line 343
    invoke-virtual {v0}, Lmu0;->h()Ljava/lang/String;

    move-result-object v0

    .line 344
    iget-object v4, v9, Lm75;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    move-object/from16 v13, v23

    .line 345
    :try_start_7
    iget-object v0, v13, Lr45;->a:Landroid/content/Context;

    .line 346
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v4, "com.google.firebase.remoteconfig.FirebaseRemoteConfig"

    .line 347
    invoke-virtual {v0, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_7

    :cond_41
    move-object/from16 v4, v20

    goto :goto_29

    .line 348
    :catch_7
    iget-object v0, v10, Lf35;->v:Lmu0;

    invoke-virtual {v0}, Lmu0;->h()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_41

    .line 349
    invoke-static/range {v20 .. v20}, Lr45;->l(Lq55;)V

    move-object/from16 v4, v20

    .line 350
    iget-object v7, v4, La25;->i:Lx15;

    .line 351
    const-string v8, "Remote config removed with active feature rollouts"

    invoke-virtual {v7, v8}, Lx15;->a(Ljava/lang/String;)V

    const/4 v11, 0x0

    .line 352
    invoke-virtual {v0, v11}, Lmu0;->i(Ljava/lang/String;)V

    .line 353
    :goto_29
    invoke-virtual {v6}, Lr45;->q()Lg15;

    move-result-object v0

    invoke-virtual {v0}, Lg15;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_45

    .line 354
    invoke-virtual {v6}, Lr45;->a()Z

    move-result v0

    .line 355
    iget-object v7, v10, Lf35;->c:Landroid/content/SharedPreferences;

    if-nez v7, :cond_42

    const/4 v7, 0x0

    goto :goto_2a

    :cond_42
    const-string v8, "deferred_analytics_collection"

    invoke-interface {v7, v8}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    :goto_2a
    if-nez v7, :cond_43

    .line 356
    invoke-virtual {v1}, Lds4;->J()Z

    move-result v7

    if-nez v7, :cond_43

    xor-int/lit8 v7, v0, 0x1

    .line 357
    invoke-virtual {v10, v7}, Lf35;->D(Z)V

    :cond_43
    if-eqz v0, :cond_44

    .line 358
    invoke-static {v9}, Lr45;->k(Lj05;)V

    .line 359
    invoke-virtual {v9}, Lm75;->H()V

    :cond_44
    iget-object v0, v6, Lr45;->h:Lia5;

    .line 360
    invoke-static {v0}, Lr45;->k(Lj05;)V

    .line 361
    iget-object v0, v0, Lia5;->e:Lgt4;

    invoke-virtual {v0}, Lgt4;->a()V

    .line 362
    invoke-virtual {v6}, Lr45;->o()Lo95;

    move-result-object v0

    new-instance v7, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {v0, v7}, Lo95;->z(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 363
    invoke-virtual {v6}, Lr45;->o()Lo95;

    move-result-object v0

    .line 364
    iget-object v7, v10, Lf35;->y:Lqd1;

    invoke-virtual {v7}, Lqd1;->J()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v0, v7}, Lo95;->A(Landroid/os/Bundle;)V

    .line 365
    :cond_45
    :goto_2b
    invoke-static {}, Ler4;->a()V

    sget-object v0, Le05;->P0:Ld05;

    const/4 v11, 0x0

    .line 366
    invoke-virtual {v1, v11, v0}, Lds4;->G(Ljava/lang/String;Ld05;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 367
    invoke-virtual {v2}, Lib0;->v()V

    .line 368
    invoke-virtual {v2}, Lac5;->R()J

    move-result-wide v0

    cmp-long v0, v0, v18

    if-nez v0, :cond_48

    .line 369
    sget-object v0, Le05;->w0:Ld05;

    .line 370
    invoke-virtual {v0, v11}, Ld05;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 371
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const/16 v7, 0x1388

    .line 372
    invoke-virtual {v2, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    const-wide/16 v7, 0x3e8

    mul-long/2addr v0, v7

    int-to-long v7, v2

    iget-object v2, v6, Lr45;->k:Lcom/google/android/gms/common/util/Clock;

    add-long/2addr v0, v7

    .line 373
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v0, v6

    const-wide/16 v6, 0x1f4

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    cmp-long v2, v0, v6

    if-lez v2, :cond_46

    .line 374
    invoke-static {v4}, Lr45;->l(Lq55;)V

    .line 375
    const-string v2, "Waiting to fetch trigger URIs until some time after boot. Delay in millis"

    .line 376
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 377
    invoke-virtual {v5, v4, v2}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 378
    :cond_46
    invoke-static {v9}, Lr45;->k(Lj05;)V

    .line 379
    invoke-virtual {v9}, Laz4;->v()V

    iget-object v2, v9, Lm75;->l:Li65;

    if-nez v2, :cond_47

    new-instance v2, Li65;

    const/4 v6, 0x0

    .line 380
    invoke-direct {v2, v9, v3, v6}, Li65;-><init>(Lm75;Ls55;I)V

    iput-object v2, v9, Lm75;->l:Li65;

    :cond_47
    iget-object v2, v9, Lm75;->l:Li65;

    .line 381
    invoke-virtual {v2, v0, v1}, Let4;->b(J)V

    .line 382
    :cond_48
    iget-object v0, v10, Lf35;->o:Lu25;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lu25;->b(Z)V

    return-void

    .line 383
    :cond_49
    invoke-static/range {v18 .. v18}, Lk21;->n(Ljava/lang/String;)V

    return-void

    :cond_4a
    move-object/from16 v18, v5

    .line 384
    invoke-static/range {v18 .. v18}, Lk21;->n(Ljava/lang/String;)V

    return-void

    :cond_4b
    move-object/from16 v18, v5

    .line 385
    invoke-static/range {v18 .. v18}, Lk21;->n(Ljava/lang/String;)V

    return-void

    :cond_4c
    move-object/from16 v18, v5

    .line 386
    invoke-static/range {v18 .. v18}, Lk21;->n(Ljava/lang/String;)V

    return-void
.end method

.method private final e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lrf1;->p:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ln25;

    .line 4
    .line 5
    iget-object v1, v0, Ln25;->p:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v0, v0, Ln25;->q:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lbp2;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object p0, p0, Lrf1;->o:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p0, Low3;

    .line 17
    .line 18
    invoke-virtual {p0}, Low3;->f()Ljava/lang/Exception;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Ljava/lang/Exception;

    .line 27
    .line 28
    invoke-interface {v0, p0}, Lbp2;->c(Ljava/lang/Exception;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    :goto_0
    monitor-exit v1

    .line 35
    return-void

    .line 36
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw p0
.end method


# virtual methods
.method public f()V
    .locals 12

    .line 1
    iget v0, p0, Lrf1;->n:I

    .line 2
    .line 3
    const-wide/16 v1, 0x1

    .line 4
    .line 5
    const/4 v3, 0x4

    .line 6
    const/4 v4, 0x0

    .line 7
    const/4 v5, 0x0

    .line 8
    const/4 v6, 0x1

    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    move v0, v4

    .line 13
    :goto_0
    :try_start_0
    iget-object v7, p0, Lrf1;->p:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v7, Lfi3;

    .line 16
    .line 17
    iget-object v7, v7, Lfi3;->o:Ljava/util/ArrayDeque;

    .line 18
    .line 19
    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 20
    if-nez v4, :cond_1

    .line 21
    .line 22
    :try_start_1
    iget-object v4, p0, Lrf1;->p:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v4, Lfi3;

    .line 25
    .line 26
    iget v8, v4, Lfi3;->p:I

    .line 27
    .line 28
    if-ne v8, v3, :cond_0

    .line 29
    .line 30
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 38
    .line 39
    .line 40
    goto :goto_2

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_5

    .line 43
    :cond_0
    :try_start_2
    iget-wide v8, v4, Lfi3;->q:J

    .line 44
    .line 45
    add-long/2addr v8, v1

    .line 46
    iput-wide v8, v4, Lfi3;->q:J

    .line 47
    .line 48
    iput v3, v4, Lfi3;->p:I

    .line 49
    .line 50
    move v4, v6

    .line 51
    :cond_1
    iget-object v8, p0, Lrf1;->p:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v8, Lfi3;

    .line 54
    .line 55
    iget-object v8, v8, Lfi3;->o:Ljava/util/ArrayDeque;

    .line 56
    .line 57
    invoke-virtual {v8}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v8

    .line 61
    check-cast v8, Ljava/lang/Runnable;

    .line 62
    .line 63
    iput-object v8, p0, Lrf1;->o:Ljava/lang/Object;

    .line 64
    .line 65
    if-nez v8, :cond_3

    .line 66
    .line 67
    iget-object p0, p0, Lrf1;->p:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast p0, Lfi3;

    .line 70
    .line 71
    iput v6, p0, Lfi3;->p:I

    .line 72
    .line 73
    monitor-exit v7

    .line 74
    if-eqz v0, :cond_2

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_2
    :goto_2
    return-void

    .line 78
    :cond_3
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 80
    .line 81
    .line 82
    move-result v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 83
    or-int/2addr v0, v7

    .line 84
    :try_start_4
    iget-object v7, p0, Lrf1;->o:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v7, Ljava/lang/Runnable;

    .line 87
    .line 88
    invoke-interface {v7}, Ljava/lang/Runnable;->run()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 89
    .line 90
    .line 91
    :goto_3
    :try_start_5
    iput-object v5, p0, Lrf1;->o:Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :catchall_1
    move-exception p0

    .line 95
    goto :goto_6

    .line 96
    :catchall_2
    move-exception v1

    .line 97
    goto :goto_4

    .line 98
    :catch_0
    move-exception v7

    .line 99
    :try_start_6
    sget-object v8, Lfi3;->s:Lq12;

    .line 100
    .line 101
    invoke-virtual {v8}, Lq12;->a()Ljava/util/logging/Logger;

    .line 102
    .line 103
    .line 104
    move-result-object v8

    .line 105
    sget-object v9, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 106
    .line 107
    new-instance v10, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    .line 112
    const-string v11, "Exception while executing runnable "

    .line 113
    .line 114
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    iget-object v11, p0, Lrf1;->o:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast v11, Ljava/lang/Runnable;

    .line 120
    .line 121
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v10

    .line 128
    invoke-virtual {v8, v9, v10, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 129
    .line 130
    .line 131
    goto :goto_3

    .line 132
    :goto_4
    :try_start_7
    iput-object v5, p0, Lrf1;->o:Ljava/lang/Object;

    .line 133
    .line 134
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 135
    :goto_5
    :try_start_8
    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 136
    :try_start_9
    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 137
    :goto_6
    if-eqz v0, :cond_4

    .line 138
    .line 139
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 144
    .line 145
    .line 146
    :cond_4
    throw p0

    .line 147
    :pswitch_0
    move v0, v4

    .line 148
    :goto_7
    :try_start_a
    iget-object v7, p0, Lrf1;->p:Ljava/lang/Object;

    .line 149
    .line 150
    check-cast v7, Lei3;

    .line 151
    .line 152
    iget-object v7, v7, Lei3;->o:Ljava/util/ArrayDeque;

    .line 153
    .line 154
    monitor-enter v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 155
    if-nez v4, :cond_6

    .line 156
    .line 157
    :try_start_b
    iget-object v4, p0, Lrf1;->p:Ljava/lang/Object;

    .line 158
    .line 159
    check-cast v4, Lei3;

    .line 160
    .line 161
    iget v8, v4, Lei3;->p:I

    .line 162
    .line 163
    if-ne v8, v3, :cond_5

    .line 164
    .line 165
    monitor-exit v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 166
    if-eqz v0, :cond_7

    .line 167
    .line 168
    :goto_8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 173
    .line 174
    .line 175
    goto :goto_9

    .line 176
    :catchall_3
    move-exception p0

    .line 177
    goto :goto_c

    .line 178
    :cond_5
    :try_start_c
    iget-wide v8, v4, Lei3;->q:J

    .line 179
    .line 180
    add-long/2addr v8, v1

    .line 181
    iput-wide v8, v4, Lei3;->q:J

    .line 182
    .line 183
    iput v3, v4, Lei3;->p:I

    .line 184
    .line 185
    move v4, v6

    .line 186
    :cond_6
    iget-object v8, p0, Lrf1;->p:Ljava/lang/Object;

    .line 187
    .line 188
    check-cast v8, Lei3;

    .line 189
    .line 190
    iget-object v8, v8, Lei3;->o:Ljava/util/ArrayDeque;

    .line 191
    .line 192
    invoke-virtual {v8}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v8

    .line 196
    check-cast v8, Ljava/lang/Runnable;

    .line 197
    .line 198
    iput-object v8, p0, Lrf1;->o:Ljava/lang/Object;

    .line 199
    .line 200
    if-nez v8, :cond_8

    .line 201
    .line 202
    iget-object p0, p0, Lrf1;->p:Ljava/lang/Object;

    .line 203
    .line 204
    check-cast p0, Lei3;

    .line 205
    .line 206
    iput v6, p0, Lei3;->p:I

    .line 207
    .line 208
    monitor-exit v7

    .line 209
    if-eqz v0, :cond_7

    .line 210
    .line 211
    goto :goto_8

    .line 212
    :cond_7
    :goto_9
    return-void

    .line 213
    :cond_8
    monitor-exit v7
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 214
    :try_start_d
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 215
    .line 216
    .line 217
    move-result v7
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 218
    or-int/2addr v0, v7

    .line 219
    :try_start_e
    iget-object v7, p0, Lrf1;->o:Ljava/lang/Object;

    .line 220
    .line 221
    check-cast v7, Ljava/lang/Runnable;

    .line 222
    .line 223
    invoke-interface {v7}, Ljava/lang/Runnable;->run()V
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 224
    .line 225
    .line 226
    :goto_a
    :try_start_f
    iput-object v5, p0, Lrf1;->o:Ljava/lang/Object;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 227
    .line 228
    goto :goto_7

    .line 229
    :catchall_4
    move-exception p0

    .line 230
    goto :goto_d

    .line 231
    :catchall_5
    move-exception v1

    .line 232
    goto :goto_b

    .line 233
    :catch_1
    move-exception v7

    .line 234
    :try_start_10
    sget-object v8, Lei3;->s:Ljava/util/logging/Logger;

    .line 235
    .line 236
    sget-object v9, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 237
    .line 238
    new-instance v10, Ljava/lang/StringBuilder;

    .line 239
    .line 240
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 241
    .line 242
    .line 243
    const-string v11, "Exception while executing runnable "

    .line 244
    .line 245
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    iget-object v11, p0, Lrf1;->o:Ljava/lang/Object;

    .line 249
    .line 250
    check-cast v11, Ljava/lang/Runnable;

    .line 251
    .line 252
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v10

    .line 259
    invoke-virtual {v8, v9, v10, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    .line 260
    .line 261
    .line 262
    goto :goto_a

    .line 263
    :goto_b
    :try_start_11
    iput-object v5, p0, Lrf1;->o:Ljava/lang/Object;

    .line 264
    .line 265
    throw v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 266
    :goto_c
    :try_start_12
    monitor-exit v7
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .line 267
    :try_start_13
    throw p0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    .line 268
    :goto_d
    if-eqz v0, :cond_9

    .line 269
    .line 270
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 275
    .line 276
    .line 277
    :cond_9
    throw p0

    .line 278
    nop

    .line 279
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method public final run()V
    .locals 11

    .line 1
    iget v0, p0, Lrf1;->n:I

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x0

    .line 7
    const/4 v5, 0x1

    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lrf1;->p:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Ln25;

    .line 14
    .line 15
    iget-object v1, v0, Ln25;->p:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v1

    .line 18
    :try_start_0
    iget-object v0, v0, Ln25;->q:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Ljp2;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object p0, p0, Lrf1;->o:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p0, Low3;

    .line 27
    .line 28
    invoke-virtual {p0}, Low3;->g()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-interface {v0, p0}, Ljp2;->h(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    :goto_0
    monitor-exit v1

    .line 39
    return-void

    .line 40
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p0

    .line 42
    :pswitch_0
    iget-object v0, p0, Lrf1;->o:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v0, Lm75;

    .line 45
    .line 46
    iget-object v0, v0, Lib0;->a:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v0, Lr45;

    .line 49
    .line 50
    invoke-virtual {v0}, Lr45;->q()Lg15;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    iget-object p0, p0, Lrf1;->p:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast p0, Ljava/lang/String;

    .line 57
    .line 58
    iget-object v2, v1, Lg15;->r:Ljava/lang/String;

    .line 59
    .line 60
    if-eqz v2, :cond_1

    .line 61
    .line 62
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-nez v2, :cond_1

    .line 67
    .line 68
    move v4, v5

    .line 69
    :cond_1
    iput-object p0, v1, Lg15;->r:Ljava/lang/String;

    .line 70
    .line 71
    if-eqz v4, :cond_2

    .line 72
    .line 73
    invoke-virtual {v0}, Lr45;->q()Lg15;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-virtual {p0}, Lg15;->A()V

    .line 78
    .line 79
    .line 80
    :cond_2
    return-void

    .line 81
    :pswitch_1
    iget-object v0, p0, Lrf1;->o:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v0, Lm75;

    .line 84
    .line 85
    invoke-virtual {v0}, Laz4;->v()V

    .line 86
    .line 87
    .line 88
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 89
    .line 90
    const/16 v2, 0x1e

    .line 91
    .line 92
    if-ge v1, v2, :cond_3

    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_3
    iget-object p0, p0, Lrf1;->p:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast p0, Ljava/util/List;

    .line 98
    .line 99
    iget-object v1, v0, Lib0;->a:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v1, Lr45;

    .line 102
    .line 103
    iget-object v1, v1, Lr45;->e:Lf35;

    .line 104
    .line 105
    invoke-static {v1}, Lr45;->j(Lib0;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1}, Lf35;->B()Landroid/util/SparseArray;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    :cond_4
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    if-eqz v2, :cond_6

    .line 121
    .line 122
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    check-cast v2, Loa5;

    .line 127
    .line 128
    iget v3, v2, Loa5;->p:I

    .line 129
    .line 130
    invoke-static {v1, v3}, Lmd4;->q(Landroid/util/SparseArray;I)Z

    .line 131
    .line 132
    .line 133
    move-result v4

    .line 134
    if-eqz v4, :cond_5

    .line 135
    .line 136
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    check-cast v3, Ljava/lang/Long;

    .line 141
    .line 142
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 143
    .line 144
    .line 145
    move-result-wide v3

    .line 146
    iget-wide v5, v2, Loa5;->o:J

    .line 147
    .line 148
    cmp-long v3, v3, v5

    .line 149
    .line 150
    if-gez v3, :cond_4

    .line 151
    .line 152
    :cond_5
    invoke-virtual {v0}, Lm75;->T()Ljava/util/PriorityQueue;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    invoke-virtual {v3, v2}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_6
    invoke-virtual {v0}, Lm75;->U()V

    .line 161
    .line 162
    .line 163
    :goto_3
    return-void

    .line 164
    :pswitch_2
    iget-object v0, p0, Lrf1;->p:Ljava/lang/Object;

    .line 165
    .line 166
    check-cast v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    .line 167
    .line 168
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->c:Lr45;

    .line 169
    .line 170
    iget-object v0, v0, Lr45;->m:Lm75;

    .line 171
    .line 172
    invoke-static {v0}, Lr45;->k(Lj05;)V

    .line 173
    .line 174
    .line 175
    iget-object p0, p0, Lrf1;->o:Ljava/lang/Object;

    .line 176
    .line 177
    check-cast p0, Lpc4;

    .line 178
    .line 179
    invoke-virtual {v0}, Laz4;->v()V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0}, Lj05;->w()V

    .line 183
    .line 184
    .line 185
    iget-object v1, v0, Lm75;->d:Lpc4;

    .line 186
    .line 187
    if-eq p0, v1, :cond_8

    .line 188
    .line 189
    if-nez v1, :cond_7

    .line 190
    .line 191
    move v4, v5

    .line 192
    :cond_7
    const-string v1, "EventInterceptor already set."

    .line 193
    .line 194
    invoke-static {v4, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    :cond_8
    iput-object p0, v0, Lm75;->d:Lpc4;

    .line 198
    .line 199
    return-void

    .line 200
    :pswitch_3
    iget-object v0, p0, Lrf1;->p:Ljava/lang/Object;

    .line 201
    .line 202
    check-cast v0, Lm75;

    .line 203
    .line 204
    iget-object v1, v0, Lib0;->a:Ljava/lang/Object;

    .line 205
    .line 206
    check-cast v1, Lr45;

    .line 207
    .line 208
    iget-object v2, v1, Lr45;->e:Lf35;

    .line 209
    .line 210
    iget-object v1, v1, Lr45;->f:La25;

    .line 211
    .line 212
    invoke-static {v2}, Lr45;->j(Lib0;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v2}, Lib0;->v()V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v2}, Lib0;->v()V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v2}, Lf35;->z()Landroid/content/SharedPreferences;

    .line 222
    .line 223
    .line 224
    move-result-object v6

    .line 225
    const-string v7, "dma_consent_settings"

    .line 226
    .line 227
    invoke-interface {v6, v7, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v3

    .line 231
    invoke-static {v3}, Lrt4;->b(Ljava/lang/String;)Lrt4;

    .line 232
    .line 233
    .line 234
    move-result-object v3

    .line 235
    iget-object p0, p0, Lrf1;->o:Ljava/lang/Object;

    .line 236
    .line 237
    check-cast p0, Lrt4;

    .line 238
    .line 239
    iget v6, p0, Lrt4;->a:I

    .line 240
    .line 241
    iget v3, v3, Lrt4;->a:I

    .line 242
    .line 243
    invoke-static {v6, v3}, Ly55;->l(II)Z

    .line 244
    .line 245
    .line 246
    move-result v3

    .line 247
    if-eqz v3, :cond_a

    .line 248
    .line 249
    invoke-virtual {v2}, Lf35;->z()Landroid/content/SharedPreferences;

    .line 250
    .line 251
    .line 252
    move-result-object v2

    .line 253
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 254
    .line 255
    .line 256
    move-result-object v2

    .line 257
    iget-object v3, p0, Lrt4;->b:Ljava/lang/String;

    .line 258
    .line 259
    invoke-interface {v2, v7, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 260
    .line 261
    .line 262
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 263
    .line 264
    .line 265
    invoke-static {v1}, Lr45;->l(Lq55;)V

    .line 266
    .line 267
    .line 268
    iget-object v1, v1, La25;->n:Lx15;

    .line 269
    .line 270
    const-string v2, "Setting DMA consent(FE)"

    .line 271
    .line 272
    invoke-virtual {v1, p0, v2}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    iget-object p0, v0, Lib0;->a:Ljava/lang/Object;

    .line 276
    .line 277
    check-cast p0, Lr45;

    .line 278
    .line 279
    invoke-virtual {p0}, Lr45;->o()Lo95;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    invoke-virtual {v0}, Lo95;->F()Z

    .line 284
    .line 285
    .line 286
    move-result v0

    .line 287
    if-eqz v0, :cond_9

    .line 288
    .line 289
    invoke-virtual {p0}, Lr45;->o()Lo95;

    .line 290
    .line 291
    .line 292
    move-result-object p0

    .line 293
    invoke-virtual {p0}, Laz4;->v()V

    .line 294
    .line 295
    .line 296
    invoke-virtual {p0}, Lj05;->w()V

    .line 297
    .line 298
    .line 299
    new-instance v0, Lh95;

    .line 300
    .line 301
    invoke-direct {v0, p0, v5}, Lh95;-><init>(Lo95;I)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {p0, v0}, Lo95;->J(Ljava/lang/Runnable;)V

    .line 305
    .line 306
    .line 307
    goto :goto_4

    .line 308
    :cond_9
    invoke-virtual {p0}, Lr45;->o()Lo95;

    .line 309
    .line 310
    .line 311
    move-result-object p0

    .line 312
    invoke-virtual {p0}, Laz4;->v()V

    .line 313
    .line 314
    .line 315
    invoke-virtual {p0}, Lj05;->w()V

    .line 316
    .line 317
    .line 318
    invoke-virtual {p0}, Lo95;->E()Z

    .line 319
    .line 320
    .line 321
    move-result v0

    .line 322
    if-eqz v0, :cond_b

    .line 323
    .line 324
    invoke-virtual {p0, v4}, Lo95;->L(Z)Lvc5;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    new-instance v1, Lq85;

    .line 329
    .line 330
    invoke-direct {v1, p0, v0}, Lq85;-><init>(Lo95;Lvc5;)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {p0, v1}, Lo95;->J(Ljava/lang/Runnable;)V

    .line 334
    .line 335
    .line 336
    goto :goto_4

    .line 337
    :cond_a
    invoke-static {v1}, Lr45;->l(Lq55;)V

    .line 338
    .line 339
    .line 340
    iget-object p0, v1, La25;->l:Lx15;

    .line 341
    .line 342
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    const-string v1, "Lower precedence consent source ignored, proposed source"

    .line 347
    .line 348
    invoke-virtual {p0, v0, v1}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    :cond_b
    :goto_4
    return-void

    .line 352
    :pswitch_4
    iget-object v0, p0, Lrf1;->p:Ljava/lang/Object;

    .line 353
    .line 354
    check-cast v0, Lm75;

    .line 355
    .line 356
    iget-object p0, p0, Lrf1;->o:Ljava/lang/Object;

    .line 357
    .line 358
    check-cast p0, Ljava/lang/Boolean;

    .line 359
    .line 360
    invoke-virtual {v0, p0, v5}, Lm75;->M(Ljava/lang/Boolean;Z)V

    .line 361
    .line 362
    .line 363
    return-void

    .line 364
    :pswitch_5
    iget-object v0, p0, Lrf1;->o:Ljava/lang/Object;

    .line 365
    .line 366
    check-cast v0, Lmw4;

    .line 367
    .line 368
    iget-object p0, p0, Lrf1;->p:Ljava/lang/Object;

    .line 369
    .line 370
    check-cast p0, Lm75;

    .line 371
    .line 372
    iget-object v4, p0, Lib0;->a:Ljava/lang/Object;

    .line 373
    .line 374
    check-cast v4, Lr45;

    .line 375
    .line 376
    iget-object v4, v4, Lr45;->h:Lia5;

    .line 377
    .line 378
    invoke-static {v4}, Lr45;->k(Lj05;)V

    .line 379
    .line 380
    .line 381
    iget-object v4, v4, Lib0;->a:Ljava/lang/Object;

    .line 382
    .line 383
    check-cast v4, Lr45;

    .line 384
    .line 385
    iget-object v5, v4, Lr45;->e:Lf35;

    .line 386
    .line 387
    iget-object v6, v4, Lr45;->e:Lf35;

    .line 388
    .line 389
    invoke-static {v5}, Lr45;->j(Lib0;)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {v5}, Lf35;->C()Ly55;

    .line 393
    .line 394
    .line 395
    move-result-object v5

    .line 396
    sget-object v7, Lx55;->p:Lx55;

    .line 397
    .line 398
    invoke-virtual {v5, v7}, Ly55;->i(Lx55;)Z

    .line 399
    .line 400
    .line 401
    move-result v5

    .line 402
    if-nez v5, :cond_d

    .line 403
    .line 404
    iget-object v1, v4, Lr45;->f:La25;

    .line 405
    .line 406
    invoke-static {v1}, Lr45;->l(Lq55;)V

    .line 407
    .line 408
    .line 409
    iget-object v1, v1, La25;->k:Lx15;

    .line 410
    .line 411
    const-string v2, "Analytics storage consent denied; will not get session id"

    .line 412
    .line 413
    invoke-virtual {v1, v2}, Lx15;->a(Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    :cond_c
    :goto_5
    move-object v1, v3

    .line 417
    goto :goto_6

    .line 418
    :cond_d
    invoke-static {v6}, Lr45;->j(Lib0;)V

    .line 419
    .line 420
    .line 421
    iget-object v4, v4, Lr45;->k:Lcom/google/android/gms/common/util/Clock;

    .line 422
    .line 423
    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 424
    .line 425
    .line 426
    move-result-wide v4

    .line 427
    invoke-virtual {v6, v4, v5}, Lf35;->E(J)Z

    .line 428
    .line 429
    .line 430
    move-result v4

    .line 431
    if-nez v4, :cond_c

    .line 432
    .line 433
    invoke-static {v6}, Lr45;->j(Lib0;)V

    .line 434
    .line 435
    .line 436
    iget-object v4, v6, Lf35;->q:Ly25;

    .line 437
    .line 438
    invoke-virtual {v4}, Ly25;->a()J

    .line 439
    .line 440
    .line 441
    move-result-wide v4

    .line 442
    cmp-long v1, v4, v1

    .line 443
    .line 444
    if-nez v1, :cond_e

    .line 445
    .line 446
    goto :goto_5

    .line 447
    :cond_e
    invoke-static {v6}, Lr45;->j(Lib0;)V

    .line 448
    .line 449
    .line 450
    iget-object v1, v6, Lf35;->q:Ly25;

    .line 451
    .line 452
    invoke-virtual {v1}, Ly25;->a()J

    .line 453
    .line 454
    .line 455
    move-result-wide v1

    .line 456
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 457
    .line 458
    .line 459
    move-result-object v1

    .line 460
    :goto_6
    if-eqz v1, :cond_f

    .line 461
    .line 462
    iget-object p0, p0, Lib0;->a:Ljava/lang/Object;

    .line 463
    .line 464
    check-cast p0, Lr45;

    .line 465
    .line 466
    iget-object p0, p0, Lr45;->i:Lac5;

    .line 467
    .line 468
    invoke-static {p0}, Lr45;->j(Lib0;)V

    .line 469
    .line 470
    .line 471
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 472
    .line 473
    .line 474
    move-result-wide v1

    .line 475
    invoke-virtual {p0, v0, v1, v2}, Lac5;->i0(Lmw4;J)V

    .line 476
    .line 477
    .line 478
    goto :goto_7

    .line 479
    :cond_f
    :try_start_1
    invoke-interface {v0, v3}, Lmw4;->i(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 480
    .line 481
    .line 482
    goto :goto_7

    .line 483
    :catch_0
    move-exception v0

    .line 484
    iget-object p0, p0, Lib0;->a:Ljava/lang/Object;

    .line 485
    .line 486
    check-cast p0, Lr45;

    .line 487
    .line 488
    iget-object p0, p0, Lr45;->f:La25;

    .line 489
    .line 490
    invoke-static {p0}, Lr45;->l(Lq55;)V

    .line 491
    .line 492
    .line 493
    iget-object p0, p0, La25;->f:Lx15;

    .line 494
    .line 495
    const-string v1, "getSessionId failed with exception"

    .line 496
    .line 497
    invoke-virtual {p0, v0, v1}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 498
    .line 499
    .line 500
    :goto_7
    return-void

    .line 501
    :pswitch_6
    invoke-direct {p0}, Lrf1;->e()V

    .line 502
    .line 503
    .line 504
    return-void

    .line 505
    :pswitch_7
    iget-object v0, p0, Lrf1;->p:Ljava/lang/Object;

    .line 506
    .line 507
    check-cast v0, Lo55;

    .line 508
    .line 509
    iget-object v1, v0, Lo55;->c:Lpb5;

    .line 510
    .line 511
    invoke-virtual {v1}, Lpb5;->V()V

    .line 512
    .line 513
    .line 514
    iget-object p0, p0, Lrf1;->o:Ljava/lang/Object;

    .line 515
    .line 516
    check-cast p0, Lfq4;

    .line 517
    .line 518
    iget-object v1, p0, Lfq4;->p:Lvb5;

    .line 519
    .line 520
    invoke-virtual {v1}, Lvb5;->Y()Ljava/lang/Object;

    .line 521
    .line 522
    .line 523
    move-result-object v1

    .line 524
    iget-object v0, v0, Lo55;->c:Lpb5;

    .line 525
    .line 526
    if-nez v1, :cond_10

    .line 527
    .line 528
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 529
    .line 530
    .line 531
    iget-object v1, p0, Lfq4;->n:Ljava/lang/String;

    .line 532
    .line 533
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    .line 535
    .line 536
    move-result-object v1

    .line 537
    check-cast v1, Ljava/lang/String;

    .line 538
    .line 539
    invoke-virtual {v0, v1}, Lpb5;->Q(Ljava/lang/String;)Lvc5;

    .line 540
    .line 541
    .line 542
    move-result-object v1

    .line 543
    if-eqz v1, :cond_11

    .line 544
    .line 545
    invoke-virtual {v0, p0, v1}, Lpb5;->a0(Lfq4;Lvc5;)V

    .line 546
    .line 547
    .line 548
    goto :goto_8

    .line 549
    :cond_10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 550
    .line 551
    .line 552
    iget-object v1, p0, Lfq4;->n:Ljava/lang/String;

    .line 553
    .line 554
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    .line 556
    .line 557
    move-result-object v1

    .line 558
    check-cast v1, Ljava/lang/String;

    .line 559
    .line 560
    invoke-virtual {v0, v1}, Lpb5;->Q(Ljava/lang/String;)Lvc5;

    .line 561
    .line 562
    .line 563
    move-result-object v1

    .line 564
    if-eqz v1, :cond_11

    .line 565
    .line 566
    invoke-virtual {v0, p0, v1}, Lpb5;->Z(Lfq4;Lvc5;)V

    .line 567
    .line 568
    .line 569
    :cond_11
    :goto_8
    return-void

    .line 570
    :pswitch_8
    invoke-direct {p0}, Lrf1;->d()V

    .line 571
    .line 572
    .line 573
    return-void

    .line 574
    :pswitch_9
    invoke-direct {p0}, Lrf1;->c()V

    .line 575
    .line 576
    .line 577
    return-void

    .line 578
    :pswitch_a
    iget-object v0, p0, Lrf1;->p:Ljava/lang/Object;

    .line 579
    .line 580
    check-cast v0, Lh35;

    .line 581
    .line 582
    iget-object v1, v0, Lh35;->b:Lk35;

    .line 583
    .line 584
    iget-object v1, v1, Lk35;->a:Lr45;

    .line 585
    .line 586
    iget-object v2, v1, Lr45;->g:Lj45;

    .line 587
    .line 588
    invoke-static {v2}, Lr45;->l(Lq55;)V

    .line 589
    .line 590
    .line 591
    invoke-virtual {v2}, Lj45;->v()V

    .line 592
    .line 593
    .line 594
    new-instance v2, Landroid/os/Bundle;

    .line 595
    .line 596
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 597
    .line 598
    .line 599
    const-string v3, "package_name"

    .line 600
    .line 601
    iget-object v0, v0, Lh35;->a:Ljava/lang/String;

    .line 602
    .line 603
    invoke-virtual {v2, v3, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    .line 605
    .line 606
    iget-object p0, p0, Lrf1;->o:Ljava/lang/Object;

    .line 607
    .line 608
    check-cast p0, Ltu4;

    .line 609
    .line 610
    :try_start_2
    check-cast p0, Lou4;

    .line 611
    .line 612
    invoke-virtual {p0}, Lgu4;->F()Landroid/os/Parcel;

    .line 613
    .line 614
    .line 615
    move-result-object v0

    .line 616
    invoke-static {v0, v2}, Lku4;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 617
    .line 618
    .line 619
    invoke-virtual {p0, v5, v0}, Lgu4;->E(ILandroid/os/Parcel;)Landroid/os/Parcel;

    .line 620
    .line 621
    .line 622
    move-result-object p0

    .line 623
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 624
    .line 625
    invoke-static {p0, v0}, Lku4;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 626
    .line 627
    .line 628
    move-result-object v0

    .line 629
    check-cast v0, Landroid/os/Bundle;

    .line 630
    .line 631
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    .line 632
    .line 633
    .line 634
    if-nez v0, :cond_12

    .line 635
    .line 636
    iget-object p0, v1, Lr45;->f:La25;

    .line 637
    .line 638
    invoke-static {p0}, Lr45;->l(Lq55;)V

    .line 639
    .line 640
    .line 641
    iget-object p0, p0, La25;->f:Lx15;

    .line 642
    .line 643
    const-string v0, "Install Referrer Service returned a null response"

    .line 644
    .line 645
    invoke-virtual {p0, v0}, Lx15;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 646
    .line 647
    .line 648
    goto :goto_9

    .line 649
    :catch_1
    move-exception p0

    .line 650
    iget-object v0, v1, Lr45;->f:La25;

    .line 651
    .line 652
    invoke-static {v0}, Lr45;->l(Lq55;)V

    .line 653
    .line 654
    .line 655
    iget-object v0, v0, La25;->f:Lx15;

    .line 656
    .line 657
    const-string v2, "Exception occurred while retrieving the Install Referrer"

    .line 658
    .line 659
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 660
    .line 661
    .line 662
    move-result-object p0

    .line 663
    invoke-virtual {v0, p0, v2}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 664
    .line 665
    .line 666
    :cond_12
    :goto_9
    iget-object p0, v1, Lr45;->g:Lj45;

    .line 667
    .line 668
    invoke-static {p0}, Lr45;->l(Lq55;)V

    .line 669
    .line 670
    .line 671
    invoke-virtual {p0}, Lj45;->v()V

    .line 672
    .line 673
    .line 674
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 675
    .line 676
    const-string v0, "Unexpected call on client side"

    .line 677
    .line 678
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 679
    .line 680
    .line 681
    throw p0

    .line 682
    :pswitch_b
    iget-object v0, p0, Lrf1;->p:Ljava/lang/Object;

    .line 683
    .line 684
    check-cast v0, Lcx4;

    .line 685
    .line 686
    :try_start_3
    iget-object v1, v0, Lcx4;->p:Leh0;

    .line 687
    .line 688
    iget-object p0, p0, Lrf1;->o:Ljava/lang/Object;

    .line 689
    .line 690
    check-cast p0, Low3;

    .line 691
    .line 692
    invoke-interface {v1, p0}, Leh0;->then(Low3;)Ljava/lang/Object;

    .line 693
    .line 694
    .line 695
    move-result-object p0

    .line 696
    check-cast p0, Low3;
    :try_end_3
    .catch Lhb3; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 697
    .line 698
    if-nez p0, :cond_13

    .line 699
    .line 700
    new-instance p0, Ljava/lang/NullPointerException;

    .line 701
    .line 702
    const-string v1, "Continuation returned null"

    .line 703
    .line 704
    invoke-direct {p0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 705
    .line 706
    .line 707
    invoke-virtual {v0, p0}, Lcx4;->c(Ljava/lang/Exception;)V

    .line 708
    .line 709
    .line 710
    goto :goto_c

    .line 711
    :cond_13
    sget-object v1, Lqw3;->b:Lgu0;

    .line 712
    .line 713
    invoke-virtual {p0, v1, v0}, Low3;->c(Ljava/util/concurrent/Executor;Ljp2;)Lef5;

    .line 714
    .line 715
    .line 716
    invoke-virtual {p0, v1, v0}, Low3;->b(Ljava/util/concurrent/Executor;Lbp2;)Lef5;

    .line 717
    .line 718
    .line 719
    invoke-virtual {p0, v1, v0}, Low3;->a(Ljava/util/concurrent/Executor;Lwo2;)Lef5;

    .line 720
    .line 721
    .line 722
    goto :goto_c

    .line 723
    :catch_2
    move-exception p0

    .line 724
    goto :goto_a

    .line 725
    :catch_3
    move-exception p0

    .line 726
    goto :goto_b

    .line 727
    :goto_a
    iget-object v0, v0, Lcx4;->q:Lef5;

    .line 728
    .line 729
    invoke-virtual {v0, p0}, Lef5;->p(Ljava/lang/Exception;)V

    .line 730
    .line 731
    .line 732
    goto :goto_c

    .line 733
    :goto_b
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 734
    .line 735
    .line 736
    move-result-object v1

    .line 737
    instance-of v1, v1, Ljava/lang/Exception;

    .line 738
    .line 739
    if-eqz v1, :cond_14

    .line 740
    .line 741
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 742
    .line 743
    .line 744
    move-result-object p0

    .line 745
    check-cast p0, Ljava/lang/Exception;

    .line 746
    .line 747
    iget-object v0, v0, Lcx4;->q:Lef5;

    .line 748
    .line 749
    invoke-virtual {v0, p0}, Lef5;->p(Ljava/lang/Exception;)V

    .line 750
    .line 751
    .line 752
    goto :goto_c

    .line 753
    :cond_14
    iget-object v0, v0, Lcx4;->q:Lef5;

    .line 754
    .line 755
    invoke-virtual {v0, p0}, Lef5;->p(Ljava/lang/Exception;)V

    .line 756
    .line 757
    .line 758
    :goto_c
    return-void

    .line 759
    :pswitch_c
    iget-object v0, p0, Lrf1;->o:Ljava/lang/Object;

    .line 760
    .line 761
    check-cast v0, Low3;

    .line 762
    .line 763
    move-object v1, v0

    .line 764
    check-cast v1, Lef5;

    .line 765
    .line 766
    iget-boolean v1, v1, Lef5;->d:Z

    .line 767
    .line 768
    iget-object v2, p0, Lrf1;->p:Ljava/lang/Object;

    .line 769
    .line 770
    check-cast v2, Lcx4;

    .line 771
    .line 772
    if-eqz v1, :cond_15

    .line 773
    .line 774
    iget-object p0, v2, Lcx4;->q:Lef5;

    .line 775
    .line 776
    invoke-virtual {p0}, Lef5;->q()V

    .line 777
    .line 778
    .line 779
    goto :goto_f

    .line 780
    :cond_15
    :try_start_4
    iget-object v1, v2, Lcx4;->p:Leh0;

    .line 781
    .line 782
    invoke-interface {v1, v0}, Leh0;->then(Low3;)Ljava/lang/Object;

    .line 783
    .line 784
    .line 785
    move-result-object v0
    :try_end_4
    .catch Lhb3; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 786
    iget-object p0, p0, Lrf1;->p:Ljava/lang/Object;

    .line 787
    .line 788
    check-cast p0, Lcx4;

    .line 789
    .line 790
    iget-object p0, p0, Lcx4;->q:Lef5;

    .line 791
    .line 792
    invoke-virtual {p0, v0}, Lef5;->n(Ljava/lang/Object;)V

    .line 793
    .line 794
    .line 795
    goto :goto_f

    .line 796
    :catch_4
    move-exception v0

    .line 797
    goto :goto_d

    .line 798
    :catch_5
    move-exception v0

    .line 799
    goto :goto_e

    .line 800
    :goto_d
    iget-object p0, p0, Lrf1;->p:Ljava/lang/Object;

    .line 801
    .line 802
    check-cast p0, Lcx4;

    .line 803
    .line 804
    iget-object p0, p0, Lcx4;->q:Lef5;

    .line 805
    .line 806
    invoke-virtual {p0, v0}, Lef5;->p(Ljava/lang/Exception;)V

    .line 807
    .line 808
    .line 809
    goto :goto_f

    .line 810
    :goto_e
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 811
    .line 812
    .line 813
    move-result-object v1

    .line 814
    instance-of v1, v1, Ljava/lang/Exception;

    .line 815
    .line 816
    iget-object p0, p0, Lrf1;->p:Ljava/lang/Object;

    .line 817
    .line 818
    check-cast p0, Lcx4;

    .line 819
    .line 820
    if-eqz v1, :cond_16

    .line 821
    .line 822
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 823
    .line 824
    .line 825
    move-result-object v0

    .line 826
    check-cast v0, Ljava/lang/Exception;

    .line 827
    .line 828
    iget-object p0, p0, Lcx4;->q:Lef5;

    .line 829
    .line 830
    invoke-virtual {p0, v0}, Lef5;->p(Ljava/lang/Exception;)V

    .line 831
    .line 832
    .line 833
    goto :goto_f

    .line 834
    :cond_16
    iget-object p0, p0, Lcx4;->q:Lef5;

    .line 835
    .line 836
    invoke-virtual {p0, v0}, Lef5;->p(Ljava/lang/Exception;)V

    .line 837
    .line 838
    .line 839
    :goto_f
    return-void

    .line 840
    :pswitch_d
    iget-object v0, p0, Lrf1;->o:Ljava/lang/Object;

    .line 841
    .line 842
    check-cast v0, Ls55;

    .line 843
    .line 844
    invoke-interface {v0}, Ls55;->b()Lpr3;

    .line 845
    .line 846
    .line 847
    invoke-static {}, Lpr3;->l()Z

    .line 848
    .line 849
    .line 850
    move-result v3

    .line 851
    if-eqz v3, :cond_17

    .line 852
    .line 853
    invoke-interface {v0}, Ls55;->d()Lj45;

    .line 854
    .line 855
    .line 856
    move-result-object v0

    .line 857
    invoke-virtual {v0, p0}, Lj45;->E(Ljava/lang/Runnable;)V

    .line 858
    .line 859
    .line 860
    goto :goto_10

    .line 861
    :cond_17
    iget-object p0, p0, Lrf1;->p:Ljava/lang/Object;

    .line 862
    .line 863
    check-cast p0, Let4;

    .line 864
    .line 865
    iget-wide v6, p0, Let4;->c:J

    .line 866
    .line 867
    cmp-long v0, v6, v1

    .line 868
    .line 869
    if-eqz v0, :cond_18

    .line 870
    .line 871
    move v4, v5

    .line 872
    :cond_18
    iput-wide v1, p0, Let4;->c:J

    .line 873
    .line 874
    if-eqz v4, :cond_19

    .line 875
    .line 876
    invoke-virtual {p0}, Let4;->a()V

    .line 877
    .line 878
    .line 879
    :cond_19
    :goto_10
    return-void

    .line 880
    :pswitch_e
    invoke-direct {p0}, Lrf1;->b()V

    .line 881
    .line 882
    .line 883
    return-void

    .line 884
    :pswitch_f
    invoke-direct {p0}, Lrf1;->a()V

    .line 885
    .line 886
    .line 887
    return-void

    .line 888
    :pswitch_10
    :try_start_5
    invoke-virtual {p0}, Lrf1;->f()V
    :try_end_5
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_6

    .line 889
    .line 890
    .line 891
    return-void

    .line 892
    :catch_6
    move-exception v0

    .line 893
    iget-object v1, p0, Lrf1;->p:Ljava/lang/Object;

    .line 894
    .line 895
    check-cast v1, Lfi3;

    .line 896
    .line 897
    iget-object v1, v1, Lfi3;->o:Ljava/util/ArrayDeque;

    .line 898
    .line 899
    monitor-enter v1

    .line 900
    :try_start_6
    iget-object p0, p0, Lrf1;->p:Ljava/lang/Object;

    .line 901
    .line 902
    check-cast p0, Lfi3;

    .line 903
    .line 904
    iput v5, p0, Lfi3;->p:I

    .line 905
    .line 906
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 907
    throw v0

    .line 908
    :catchall_1
    move-exception p0

    .line 909
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 910
    throw p0

    .line 911
    :pswitch_11
    :try_start_8
    invoke-virtual {p0}, Lrf1;->f()V
    :try_end_8
    .catch Ljava/lang/Error; {:try_start_8 .. :try_end_8} :catch_7

    .line 912
    .line 913
    .line 914
    return-void

    .line 915
    :catch_7
    move-exception v0

    .line 916
    iget-object v1, p0, Lrf1;->p:Ljava/lang/Object;

    .line 917
    .line 918
    check-cast v1, Lei3;

    .line 919
    .line 920
    iget-object v1, v1, Lei3;->o:Ljava/util/ArrayDeque;

    .line 921
    .line 922
    monitor-enter v1

    .line 923
    :try_start_9
    iget-object p0, p0, Lrf1;->p:Ljava/lang/Object;

    .line 924
    .line 925
    check-cast p0, Lei3;

    .line 926
    .line 927
    iput v5, p0, Lei3;->p:I

    .line 928
    .line 929
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 930
    throw v0

    .line 931
    :catchall_2
    move-exception p0

    .line 932
    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 933
    throw p0

    .line 934
    :pswitch_12
    iget-object v0, p0, Lrf1;->p:Ljava/lang/Object;

    .line 935
    .line 936
    check-cast v0, Lo20;

    .line 937
    .line 938
    iget-object p0, p0, Lrf1;->o:Ljava/lang/Object;

    .line 939
    .line 940
    check-cast p0, Lk31;

    .line 941
    .line 942
    invoke-virtual {v0, p0}, Lo20;->H(Lji0;)V

    .line 943
    .line 944
    .line 945
    return-void

    .line 946
    :pswitch_13
    iget-object v0, p0, Lrf1;->o:Ljava/lang/Object;

    .line 947
    .line 948
    check-cast v0, Ldb1;

    .line 949
    .line 950
    iget-object p0, p0, Lrf1;->p:Ljava/lang/Object;

    .line 951
    .line 952
    invoke-virtual {v0, p0}, Ldb1;->accept(Ljava/lang/Object;)V

    .line 953
    .line 954
    .line 955
    return-void

    .line 956
    :pswitch_14
    iget-object v0, p0, Lrf1;->p:Ljava/lang/Object;

    .line 957
    .line 958
    check-cast v0, Lej;

    .line 959
    .line 960
    iget-object p0, p0, Lrf1;->o:Ljava/lang/Object;

    .line 961
    .line 962
    iget-object v1, v0, Lej;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 963
    .line 964
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 965
    .line 966
    .line 967
    move-result v1

    .line 968
    iget-object v2, v0, Lej;->s:Lfj;

    .line 969
    .line 970
    if-eqz v1, :cond_1a

    .line 971
    .line 972
    invoke-virtual {v2, v0, p0}, Lfj;->dispatchOnCancelled(Lej;Ljava/lang/Object;)V

    .line 973
    .line 974
    .line 975
    goto :goto_11

    .line 976
    :cond_1a
    invoke-virtual {v2, v0, p0}, Lfj;->dispatchOnLoadComplete(Lej;Ljava/lang/Object;)V

    .line 977
    .line 978
    .line 979
    :goto_11
    const/4 p0, 0x3

    .line 980
    iput p0, v0, Lej;->o:I

    .line 981
    .line 982
    return-void

    .line 983
    :cond_1b
    :pswitch_15
    :try_start_b
    iget-object v0, p0, Lrf1;->o:Ljava/lang/Object;

    .line 984
    .line 985
    check-cast v0, Ljava/lang/Runnable;

    .line 986
    .line 987
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 988
    .line 989
    .line 990
    goto :goto_12

    .line 991
    :catchall_3
    move-exception v0

    .line 992
    :try_start_c
    sget-object v1, Ld01;->n:Ld01;

    .line 993
    .line 994
    invoke-static {v1, v0}, Lqj0;->N(Lhi0;Ljava/lang/Throwable;)V

    .line 995
    .line 996
    .line 997
    :goto_12
    iget-object v0, p0, Lrf1;->p:Ljava/lang/Object;

    .line 998
    .line 999
    check-cast v0, Lc32;

    .line 1000
    .line 1001
    invoke-virtual {v0}, Lc32;->r0()Ljava/lang/Runnable;

    .line 1002
    .line 1003
    .line 1004
    move-result-object v0

    .line 1005
    if-nez v0, :cond_1c

    .line 1006
    .line 1007
    goto :goto_13

    .line 1008
    :cond_1c
    iput-object v0, p0, Lrf1;->o:Ljava/lang/Object;

    .line 1009
    .line 1010
    add-int/2addr v4, v5

    .line 1011
    const/16 v0, 0x10

    .line 1012
    .line 1013
    if-lt v4, v0, :cond_1b

    .line 1014
    .line 1015
    iget-object v0, p0, Lrf1;->p:Ljava/lang/Object;

    .line 1016
    .line 1017
    check-cast v0, Lc32;

    .line 1018
    .line 1019
    iget-object v1, v0, Lc32;->q:Lji0;

    .line 1020
    .line 1021
    invoke-static {v1, v0}, Ltu0;->c(Lji0;Lhi0;)Z

    .line 1022
    .line 1023
    .line 1024
    move-result v0

    .line 1025
    if-eqz v0, :cond_1b

    .line 1026
    .line 1027
    iget-object v0, p0, Lrf1;->p:Ljava/lang/Object;

    .line 1028
    .line 1029
    check-cast v0, Lc32;

    .line 1030
    .line 1031
    iget-object v1, v0, Lc32;->q:Lji0;

    .line 1032
    .line 1033
    invoke-static {v1, v0, p0}, Ltu0;->b(Lji0;Lhi0;Ljava/lang/Runnable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 1034
    .line 1035
    .line 1036
    :goto_13
    return-void

    .line 1037
    :catchall_4
    move-exception v0

    .line 1038
    iget-object p0, p0, Lrf1;->p:Ljava/lang/Object;

    .line 1039
    .line 1040
    check-cast p0, Lc32;

    .line 1041
    .line 1042
    iget-object v1, p0, Lc32;->t:Ljava/lang/Object;

    .line 1043
    .line 1044
    monitor-enter v1

    .line 1045
    :try_start_d
    sget-object v2, Lc32;->u:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 1046
    .line 1047
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 1048
    .line 1049
    .line 1050
    monitor-exit v1

    .line 1051
    throw v0

    .line 1052
    :catchall_5
    move-exception p0

    .line 1053
    monitor-exit v1

    .line 1054
    throw p0

    .line 1055
    :pswitch_16
    invoke-static {}, Lt72;->g()Lt72;

    .line 1056
    .line 1057
    .line 1058
    move-result-object v0

    .line 1059
    sget-object v1, Lir0;->e:Ljava/lang/String;

    .line 1060
    .line 1061
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1062
    .line 1063
    const-string v3, "Scheduling work "

    .line 1064
    .line 1065
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1066
    .line 1067
    .line 1068
    iget-object v3, p0, Lrf1;->o:Ljava/lang/Object;

    .line 1069
    .line 1070
    check-cast v3, Log4;

    .line 1071
    .line 1072
    iget-object v4, v3, Log4;->a:Ljava/lang/String;

    .line 1073
    .line 1074
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1075
    .line 1076
    .line 1077
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1078
    .line 1079
    .line 1080
    move-result-object v2

    .line 1081
    invoke-virtual {v0, v1, v2}, Lt72;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    .line 1083
    .line 1084
    iget-object p0, p0, Lrf1;->p:Ljava/lang/Object;

    .line 1085
    .line 1086
    check-cast p0, Lir0;

    .line 1087
    .line 1088
    iget-object p0, p0, Lir0;->a:Lki1;

    .line 1089
    .line 1090
    filled-new-array {v3}, [Log4;

    .line 1091
    .line 1092
    .line 1093
    move-result-object v0

    .line 1094
    invoke-virtual {p0, v0}, Lki1;->c([Log4;)V

    .line 1095
    .line 1096
    .line 1097
    return-void

    .line 1098
    :pswitch_17
    iget-object v0, p0, Lrf1;->o:Ljava/lang/Object;

    .line 1099
    .line 1100
    check-cast v0, Loq0;

    .line 1101
    .line 1102
    invoke-virtual {v0}, Lnq0;->a()V

    .line 1103
    .line 1104
    .line 1105
    const/4 v0, 0x2

    .line 1106
    invoke-static {v0}, Lhd1;->G(I)Z

    .line 1107
    .line 1108
    .line 1109
    move-result v0

    .line 1110
    if-eqz v0, :cond_1d

    .line 1111
    .line 1112
    const-string v0, "FragmentManager"

    .line 1113
    .line 1114
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1115
    .line 1116
    const-string v2, "Transition for operation "

    .line 1117
    .line 1118
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1119
    .line 1120
    .line 1121
    iget-object p0, p0, Lrf1;->p:Ljava/lang/Object;

    .line 1122
    .line 1123
    check-cast p0, Lpq3;

    .line 1124
    .line 1125
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1126
    .line 1127
    .line 1128
    const-string p0, "has completed"

    .line 1129
    .line 1130
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1131
    .line 1132
    .line 1133
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1134
    .line 1135
    .line 1136
    move-result-object p0

    .line 1137
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    .line 1139
    .line 1140
    :cond_1d
    return-void

    .line 1141
    :pswitch_18
    iget-object v0, p0, Lrf1;->o:Ljava/lang/Object;

    .line 1142
    .line 1143
    check-cast v0, Landroid/view/View;

    .line 1144
    .line 1145
    iget-object p0, p0, Lrf1;->p:Ljava/lang/Object;

    .line 1146
    .line 1147
    check-cast p0, Landroid/graphics/Rect;

    .line 1148
    .line 1149
    invoke-static {v0, p0}, Lae1;->b(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1150
    .line 1151
    .line 1152
    return-void

    .line 1153
    :pswitch_19
    iget-object v0, p0, Lrf1;->o:Ljava/lang/Object;

    .line 1154
    .line 1155
    check-cast v0, Ldd1;

    .line 1156
    .line 1157
    iget-object p0, p0, Lrf1;->p:Ljava/lang/Object;

    .line 1158
    .line 1159
    check-cast p0, Landroid/graphics/Typeface;

    .line 1160
    .line 1161
    iget-object v0, v0, Ldd1;->o:Ljava/lang/Object;

    .line 1162
    .line 1163
    check-cast v0, Log;

    .line 1164
    .line 1165
    if-eqz v0, :cond_1e

    .line 1166
    .line 1167
    invoke-virtual {v0, p0}, Log;->b(Landroid/graphics/Typeface;)V

    .line 1168
    .line 1169
    .line 1170
    :cond_1e
    return-void

    .line 1171
    :pswitch_1a
    iget-object v0, p0, Lrf1;->o:Ljava/lang/Object;

    .line 1172
    .line 1173
    check-cast v0, Lr5;

    .line 1174
    .line 1175
    iget-object p0, p0, Lrf1;->p:Ljava/lang/Object;

    .line 1176
    .line 1177
    check-cast p0, Lu5;

    .line 1178
    .line 1179
    iget-object v1, p0, Lu5;->p:Lub2;

    .line 1180
    .line 1181
    if-eqz v1, :cond_20

    .line 1182
    .line 1183
    iget-object v2, v1, Lub2;->e:Lwu4;

    .line 1184
    .line 1185
    if-eqz v2, :cond_20

    .line 1186
    .line 1187
    iget-object v2, v2, Lwu4;->o:Ljava/lang/Object;

    .line 1188
    .line 1189
    check-cast v2, Landroidx/appcompat/widget/ActionMenuView;

    .line 1190
    .line 1191
    iget-object v2, v2, Landroidx/appcompat/widget/ActionMenuView;->G:Lra3;

    .line 1192
    .line 1193
    if-eqz v2, :cond_20

    .line 1194
    .line 1195
    iget-object v2, v2, Lra3;->o:Ljava/lang/Object;

    .line 1196
    .line 1197
    check-cast v2, Landroidx/appcompat/widget/Toolbar;

    .line 1198
    .line 1199
    iget-object v5, v2, Landroidx/appcompat/widget/Toolbar;->n:Landroidx/appcompat/widget/ActionMenuView;

    .line 1200
    .line 1201
    iget-object v5, v5, Landroidx/appcompat/widget/ActionMenuView;->F:Lu5;

    .line 1202
    .line 1203
    if-eqz v5, :cond_1f

    .line 1204
    .line 1205
    iget-object v5, v5, Lu5;->E:Lr5;

    .line 1206
    .line 1207
    if-eqz v5, :cond_1f

    .line 1208
    .line 1209
    invoke-virtual {v5}, Lcc2;->b()Z

    .line 1210
    .line 1211
    .line 1212
    move-result v5

    .line 1213
    if-eqz v5, :cond_1f

    .line 1214
    .line 1215
    goto :goto_15

    .line 1216
    :cond_1f
    iget-object v2, v2, Landroidx/appcompat/widget/Toolbar;->T:Lxb2;

    .line 1217
    .line 1218
    iget-object v2, v2, Lxb2;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1219
    .line 1220
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 1221
    .line 1222
    .line 1223
    move-result-object v2

    .line 1224
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1225
    .line 1226
    .line 1227
    move-result v5

    .line 1228
    if-eqz v5, :cond_20

    .line 1229
    .line 1230
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1231
    .line 1232
    .line 1233
    move-result-object v5

    .line 1234
    check-cast v5, Ljc2;

    .line 1235
    .line 1236
    check-cast v5, Lad1;

    .line 1237
    .line 1238
    iget-object v5, v5, Lad1;->a:Lhd1;

    .line 1239
    .line 1240
    invoke-virtual {v5, v1}, Lhd1;->s(Landroid/view/Menu;)Z

    .line 1241
    .line 1242
    .line 1243
    goto :goto_14

    .line 1244
    :cond_20
    :goto_15
    iget-object v1, p0, Lu5;->t:Landroidx/appcompat/widget/ActionMenuView;

    .line 1245
    .line 1246
    if-eqz v1, :cond_23

    .line 1247
    .line 1248
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 1249
    .line 1250
    .line 1251
    move-result-object v1

    .line 1252
    if-eqz v1, :cond_23

    .line 1253
    .line 1254
    invoke-virtual {v0}, Lcc2;->b()Z

    .line 1255
    .line 1256
    .line 1257
    move-result v1

    .line 1258
    if-eqz v1, :cond_21

    .line 1259
    .line 1260
    goto :goto_16

    .line 1261
    :cond_21
    iget-object v1, v0, Lcc2;->e:Landroid/view/View;

    .line 1262
    .line 1263
    if-nez v1, :cond_22

    .line 1264
    .line 1265
    goto :goto_17

    .line 1266
    :cond_22
    invoke-virtual {v0, v4, v4, v4, v4}, Lcc2;->d(IIZZ)V

    .line 1267
    .line 1268
    .line 1269
    :goto_16
    iput-object v0, p0, Lu5;->E:Lr5;

    .line 1270
    .line 1271
    :cond_23
    :goto_17
    iput-object v3, p0, Lu5;->G:Lrf1;

    .line 1272
    .line 1273
    return-void

    .line 1274
    :pswitch_1b
    iget-object v0, p0, Lrf1;->o:Ljava/lang/Object;

    .line 1275
    .line 1276
    check-cast v0, Ljava/util/ArrayList;

    .line 1277
    .line 1278
    iget-object p0, p0, Lrf1;->p:Ljava/lang/Object;

    .line 1279
    .line 1280
    check-cast p0, Lpq3;

    .line 1281
    .line 1282
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 1283
    .line 1284
    .line 1285
    move-result v1

    .line 1286
    if-eqz v1, :cond_24

    .line 1287
    .line 1288
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1289
    .line 1290
    .line 1291
    iget-object v0, p0, Lpq3;->c:Llc1;

    .line 1292
    .line 1293
    iget-object v0, v0, Llc1;->mView:Landroid/view/View;

    .line 1294
    .line 1295
    iget p0, p0, Lpq3;->a:I

    .line 1296
    .line 1297
    invoke-static {v0, p0}, Lxw1;->a(Landroid/view/View;I)V

    .line 1298
    .line 1299
    .line 1300
    :cond_24
    return-void

    .line 1301
    :pswitch_1c
    iget-object v0, p0, Lrf1;->p:Ljava/lang/Object;

    .line 1302
    .line 1303
    check-cast v0, Lpc4;

    .line 1304
    .line 1305
    iget-object p0, p0, Lrf1;->o:Ljava/lang/Object;

    .line 1306
    .line 1307
    check-cast p0, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 1308
    .line 1309
    instance-of v1, p0, Lb1;

    .line 1310
    .line 1311
    if-eqz v1, :cond_25

    .line 1312
    .line 1313
    move-object v1, p0

    .line 1314
    check-cast v1, Lb1;

    .line 1315
    .line 1316
    invoke-virtual {v1}, Lb1;->c()Ljava/lang/Throwable;

    .line 1317
    .line 1318
    .line 1319
    move-result-object v1

    .line 1320
    if-eqz v1, :cond_25

    .line 1321
    .line 1322
    invoke-virtual {v0, v1}, Lpc4;->b(Ljava/lang/Throwable;)V

    .line 1323
    .line 1324
    .line 1325
    goto/16 :goto_19

    .line 1326
    .line 1327
    :cond_25
    :try_start_e
    invoke-static {p0}, Ltf1;->b(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    :try_end_e
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_e .. :try_end_e} :catch_8
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 1328
    .line 1329
    .line 1330
    iget-object p0, v0, Lpc4;->p:Ljava/lang/Object;

    .line 1331
    .line 1332
    check-cast p0, Lm75;

    .line 1333
    .line 1334
    invoke-virtual {p0}, Laz4;->v()V

    .line 1335
    .line 1336
    .line 1337
    iget-object v1, p0, Lib0;->a:Ljava/lang/Object;

    .line 1338
    .line 1339
    check-cast v1, Lr45;

    .line 1340
    .line 1341
    iget-object v2, v1, Lr45;->e:Lf35;

    .line 1342
    .line 1343
    invoke-static {v2}, Lr45;->j(Lib0;)V

    .line 1344
    .line 1345
    .line 1346
    invoke-virtual {v2}, Lf35;->B()Landroid/util/SparseArray;

    .line 1347
    .line 1348
    .line 1349
    move-result-object v2

    .line 1350
    iget-object v0, v0, Lpc4;->o:Ljava/lang/Object;

    .line 1351
    .line 1352
    check-cast v0, Loa5;

    .line 1353
    .line 1354
    iget v3, v0, Loa5;->p:I

    .line 1355
    .line 1356
    iget-wide v6, v0, Loa5;->o:J

    .line 1357
    .line 1358
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1359
    .line 1360
    .line 1361
    move-result-object v6

    .line 1362
    invoke-virtual {v2, v3, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1363
    .line 1364
    .line 1365
    iget-object v3, v1, Lr45;->e:Lf35;

    .line 1366
    .line 1367
    invoke-static {v3}, Lr45;->j(Lib0;)V

    .line 1368
    .line 1369
    .line 1370
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 1371
    .line 1372
    .line 1373
    move-result v6

    .line 1374
    new-array v6, v6, [I

    .line 1375
    .line 1376
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 1377
    .line 1378
    .line 1379
    move-result v7

    .line 1380
    new-array v7, v7, [J

    .line 1381
    .line 1382
    move v8, v4

    .line 1383
    :goto_18
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 1384
    .line 1385
    .line 1386
    move-result v9

    .line 1387
    if-ge v8, v9, :cond_26

    .line 1388
    .line 1389
    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->keyAt(I)I

    .line 1390
    .line 1391
    .line 1392
    move-result v9

    .line 1393
    aput v9, v6, v8

    .line 1394
    .line 1395
    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 1396
    .line 1397
    .line 1398
    move-result-object v9

    .line 1399
    check-cast v9, Ljava/lang/Long;

    .line 1400
    .line 1401
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    .line 1402
    .line 1403
    .line 1404
    move-result-wide v9

    .line 1405
    aput-wide v9, v7, v8

    .line 1406
    .line 1407
    add-int/lit8 v8, v8, 0x1

    .line 1408
    .line 1409
    goto :goto_18

    .line 1410
    :cond_26
    new-instance v2, Landroid/os/Bundle;

    .line 1411
    .line 1412
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1413
    .line 1414
    .line 1415
    const-string v8, "uriSources"

    .line 1416
    .line 1417
    invoke-virtual {v2, v8, v6}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1418
    .line 1419
    .line 1420
    const-string v6, "uriTimestamps"

    .line 1421
    .line 1422
    invoke-virtual {v2, v6, v7}, Landroid/os/BaseBundle;->putLongArray(Ljava/lang/String;[J)V

    .line 1423
    .line 1424
    .line 1425
    iget-object v3, v3, Lf35;->n:Lqd1;

    .line 1426
    .line 1427
    invoke-virtual {v3, v2}, Lqd1;->N(Landroid/os/Bundle;)V

    .line 1428
    .line 1429
    .line 1430
    iput-boolean v4, p0, Lm75;->i:Z

    .line 1431
    .line 1432
    iput v5, p0, Lm75;->j:I

    .line 1433
    .line 1434
    iget-object v1, v1, Lr45;->f:La25;

    .line 1435
    .line 1436
    invoke-static {v1}, Lr45;->l(Lq55;)V

    .line 1437
    .line 1438
    .line 1439
    iget-object v1, v1, La25;->m:Lx15;

    .line 1440
    .line 1441
    iget-object v0, v0, Loa5;->n:Ljava/lang/String;

    .line 1442
    .line 1443
    const-string v2, "Successfully registered trigger URI"

    .line 1444
    .line 1445
    invoke-virtual {v1, v0, v2}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1446
    .line 1447
    .line 1448
    invoke-virtual {p0}, Lm75;->U()V

    .line 1449
    .line 1450
    .line 1451
    goto :goto_19

    .line 1452
    :catchall_6
    move-exception p0

    .line 1453
    invoke-virtual {v0, p0}, Lpc4;->b(Ljava/lang/Throwable;)V

    .line 1454
    .line 1455
    .line 1456
    goto :goto_19

    .line 1457
    :catch_8
    move-exception p0

    .line 1458
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 1459
    .line 1460
    .line 1461
    move-result-object p0

    .line 1462
    invoke-virtual {v0, p0}, Lpc4;->b(Ljava/lang/Throwable;)V

    .line 1463
    .line 1464
    .line 1465
    :goto_19
    return-void

    .line 1466
    nop

    .line 1467
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 14

    .line 1
    iget v0, p0, Lrf1;->n:I

    .line 2
    .line 3
    const-string v1, "IDLE"

    .line 4
    .line 5
    const-string v2, "QUEUING"

    .line 6
    .line 7
    const-string v3, "QUEUED"

    .line 8
    .line 9
    const-string v4, "RUNNING"

    .line 10
    .line 11
    const-string v5, "null"

    .line 12
    .line 13
    const/4 v6, 0x4

    .line 14
    const/4 v7, 0x3

    .line 15
    const/4 v8, 0x2

    .line 16
    const/4 v9, 0x1

    .line 17
    const-string v10, "SequentialExecutorWorker{state="

    .line 18
    .line 19
    const-string v11, "SequentialExecutorWorker{running="

    .line 20
    .line 21
    const-string v12, "}"

    .line 22
    .line 23
    iget-object v13, p0, Lrf1;->p:Ljava/lang/Object;

    .line 24
    .line 25
    sparse-switch v0, :sswitch_data_0

    .line 26
    .line 27
    .line 28
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :sswitch_0
    iget-object p0, p0, Lrf1;->o:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast p0, Ljava/lang/Runnable;

    .line 36
    .line 37
    if-eqz p0, :cond_0

    .line 38
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    goto :goto_1

    .line 55
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {p0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    check-cast v13, Lfi3;

    .line 61
    .line 62
    iget v0, v13, Lfi3;->p:I

    .line 63
    .line 64
    if-eq v0, v9, :cond_4

    .line 65
    .line 66
    if-eq v0, v8, :cond_3

    .line 67
    .line 68
    if-eq v0, v7, :cond_2

    .line 69
    .line 70
    if-eq v0, v6, :cond_1

    .line 71
    .line 72
    move-object v1, v5

    .line 73
    goto :goto_0

    .line 74
    :cond_1
    move-object v1, v4

    .line 75
    goto :goto_0

    .line 76
    :cond_2
    move-object v1, v3

    .line 77
    goto :goto_0

    .line 78
    :cond_3
    move-object v1, v2

    .line 79
    :cond_4
    :goto_0
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    :goto_1
    return-object p0

    .line 90
    :sswitch_1
    iget-object p0, p0, Lrf1;->o:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast p0, Ljava/lang/Runnable;

    .line 93
    .line 94
    if-eqz p0, :cond_5

    .line 95
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    goto :goto_3

    .line 112
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {p0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    check-cast v13, Lei3;

    .line 118
    .line 119
    iget v0, v13, Lei3;->p:I

    .line 120
    .line 121
    if-eq v0, v9, :cond_9

    .line 122
    .line 123
    if-eq v0, v8, :cond_8

    .line 124
    .line 125
    if-eq v0, v7, :cond_7

    .line 126
    .line 127
    if-eq v0, v6, :cond_6

    .line 128
    .line 129
    move-object v1, v5

    .line 130
    goto :goto_2

    .line 131
    :cond_6
    move-object v1, v4

    .line 132
    goto :goto_2

    .line 133
    :cond_7
    move-object v1, v3

    .line 134
    goto :goto_2

    .line 135
    :cond_8
    move-object v1, v2

    .line 136
    :cond_9
    :goto_2
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    :goto_3
    return-object p0

    .line 147
    :sswitch_2
    new-instance p0, Leh;

    .line 148
    .line 149
    const-class v0, Lrf1;

    .line 150
    .line 151
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-direct {p0, v0}, Leh;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    check-cast v13, Lpc4;

    .line 159
    .line 160
    new-instance v0, Leh;

    .line 161
    .line 162
    const/16 v1, 0x16

    .line 163
    .line 164
    const/4 v2, 0x0

    .line 165
    invoke-direct {v0, v1, v2}, Leh;-><init>(IZ)V

    .line 166
    .line 167
    .line 168
    iget-object v1, p0, Leh;->q:Ljava/lang/Object;

    .line 169
    .line 170
    check-cast v1, Leh;

    .line 171
    .line 172
    iput-object v0, v1, Leh;->q:Ljava/lang/Object;

    .line 173
    .line 174
    iput-object v0, p0, Leh;->q:Ljava/lang/Object;

    .line 175
    .line 176
    iput-object v13, v0, Leh;->p:Ljava/lang/Object;

    .line 177
    .line 178
    invoke-virtual {p0}, Leh;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    return-object p0

    .line 183
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0xb -> :sswitch_1
        0xc -> :sswitch_0
    .end sparse-switch
.end method
