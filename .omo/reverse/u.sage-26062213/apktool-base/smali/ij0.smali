.class public final Lij0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lbm0;

.field public final c:Lxh1;

.field public final d:J

.field public e:Lgw4;

.field public f:Lgw4;

.field public g:Ldj0;

.field public final h:Lsn1;

.field public final i:Lq51;

.field public final j:Li8;

.field public final k:Li8;

.field public final l:Laj0;

.field public final m:Ljj0;

.field public final n:Ldh1;

.field public final o:Leh;


# direct methods
.method public constructor <init>(Le61;Lsn1;Ljj0;Lbm0;Li8;Li8;Lq51;Laj0;Ldh1;Leh;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Lij0;->b:Lbm0;

    .line 5
    .line 6
    invoke-virtual {p1}, Le61;->a()V

    .line 7
    .line 8
    .line 9
    iget-object p1, p1, Le61;->a:Landroid/content/Context;

    .line 10
    .line 11
    iput-object p1, p0, Lij0;->a:Landroid/content/Context;

    .line 12
    .line 13
    iput-object p2, p0, Lij0;->h:Lsn1;

    .line 14
    .line 15
    iput-object p3, p0, Lij0;->m:Ljj0;

    .line 16
    .line 17
    iput-object p5, p0, Lij0;->j:Li8;

    .line 18
    .line 19
    iput-object p6, p0, Lij0;->k:Li8;

    .line 20
    .line 21
    iput-object p7, p0, Lij0;->i:Lq51;

    .line 22
    .line 23
    iput-object p8, p0, Lij0;->l:Laj0;

    .line 24
    .line 25
    iput-object p9, p0, Lij0;->n:Ldh1;

    .line 26
    .line 27
    iput-object p10, p0, Lij0;->o:Leh;

    .line 28
    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 30
    .line 31
    .line 32
    move-result-wide p1

    .line 33
    iput-wide p1, p0, Lij0;->d:J

    .line 34
    .line 35
    new-instance p1, Lxh1;

    .line 36
    .line 37
    const/16 p2, 0x9

    .line 38
    .line 39
    invoke-direct {p1, p2}, Lxh1;-><init>(I)V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Lij0;->c:Lxh1;

    .line 43
    .line 44
    return-void
.end method


# virtual methods
.method public final a(Led0;)V
    .locals 4

    .line 1
    invoke-static {}, Leh;->l()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Leh;->l()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lij0;->e:Lgw4;

    .line 8
    .line 9
    invoke-virtual {v0}, Lgw4;->j()V

    .line 10
    .line 11
    .line 12
    const-string v0, "FirebaseCrashlytics"

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x0

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    const-string v1, "Initialization marker file was created."

    .line 23
    .line 24
    invoke-static {v0, v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 25
    .line 26
    .line 27
    :cond_0
    :try_start_0
    iget-object v1, p0, Lij0;->j:Li8;

    .line 28
    .line 29
    new-instance v3, Lhj0;

    .line 30
    .line 31
    invoke-direct {v3, p0}, Lhj0;-><init>(Lij0;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v3}, Li8;->c(Lhj0;)V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lij0;->g:Ldj0;

    .line 38
    .line 39
    invoke-virtual {v1}, Ldj0;->g()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Led0;->e()Lmk3;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    iget-object v1, v1, Lmk3;->b:Lkk3;

    .line 47
    .line 48
    iget-boolean v1, v1, Lkk3;->a:Z

    .line 49
    .line 50
    if-eqz v1, :cond_2

    .line 51
    .line 52
    iget-object v1, p0, Lij0;->g:Ldj0;

    .line 53
    .line 54
    invoke-virtual {v1, p1}, Ldj0;->d(Led0;)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-nez v1, :cond_1

    .line 59
    .line 60
    const-string v1, "Previous sessions could not be finalized."

    .line 61
    .line 62
    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catchall_0
    move-exception p1

    .line 67
    goto :goto_2

    .line 68
    :catch_0
    move-exception p1

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    :goto_0
    iget-object v1, p0, Lij0;->g:Ldj0;

    .line 71
    .line 72
    iget-object p1, p1, Led0;->i:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast p1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    check-cast p1, Lpw3;

    .line 81
    .line 82
    iget-object p1, p1, Lpw3;->a:Lef5;

    .line 83
    .line 84
    invoke-virtual {v1, p1}, Ldj0;->h(Lef5;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Lij0;->c()V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :cond_2
    const/4 p1, 0x3

    .line 92
    :try_start_1
    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 93
    .line 94
    .line 95
    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    const-string v1, "Collection of crash reports disabled in Crashlytics settings."

    .line 97
    .line 98
    if-eqz p1, :cond_3

    .line 99
    .line 100
    :try_start_2
    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    .line 102
    .line 103
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    .line 104
    .line 105
    invoke-direct {p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 109
    :goto_1
    :try_start_3
    const-string v1, "Crashlytics encountered a problem during asynchronous initialization."

    .line 110
    .line 111
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Lij0;->c()V

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    :goto_2
    invoke-virtual {p0}, Lij0;->c()V

    .line 119
    .line 120
    .line 121
    throw p1
.end method

.method public final b(Led0;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lij0;->o:Leh;

    .line 2
    .line 3
    iget-object v0, v0, Leh;->o:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lqk0;

    .line 6
    .line 7
    iget-object v0, v0, Lqk0;->n:Ljava/util/concurrent/ExecutorService;

    .line 8
    .line 9
    new-instance v1, Lej0;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-direct {v1, p0, p1, v2}, Lej0;-><init>(Lij0;Led0;I)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const-string p1, "FirebaseCrashlytics"

    .line 20
    .line 21
    const/4 v0, 0x3

    .line 22
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    const-string v0, "Crashlytics detected incomplete initialization on previous app launch. Will initialize synchronously."

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-static {p1, v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 32
    .line 33
    .line 34
    :cond_0
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 35
    .line 36
    const-wide/16 v1, 0x3

    .line 37
    .line 38
    invoke-interface {p0, v1, v2, v0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :catch_0
    move-exception p0

    .line 43
    goto :goto_0

    .line 44
    :catch_1
    move-exception p0

    .line 45
    goto :goto_1

    .line 46
    :catch_2
    move-exception p0

    .line 47
    goto :goto_2

    .line 48
    :goto_0
    const-string v0, "Crashlytics timed out during initialization."

    .line 49
    .line 50
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    .line 52
    .line 53
    goto :goto_3

    .line 54
    :goto_1
    const-string v0, "Crashlytics encountered a problem during initialization."

    .line 55
    .line 56
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    .line 58
    .line 59
    goto :goto_3

    .line 60
    :goto_2
    const-string v0, "Crashlytics was interrupted during initialization."

    .line 61
    .line 62
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    .line 64
    .line 65
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 70
    .line 71
    .line 72
    :goto_3
    return-void
.end method

.method public final c()V
    .locals 3

    .line 1
    const-string v0, "FirebaseCrashlytics"

    .line 2
    .line 3
    invoke-static {}, Leh;->l()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object p0, p0, Lij0;->e:Lgw4;

    .line 7
    .line 8
    iget-object v1, p0, Lgw4;->p:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Lq51;

    .line 11
    .line 12
    iget-object p0, p0, Lgw4;->o:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    new-instance v2, Ljava/io/File;

    .line 20
    .line 21
    iget-object v1, v1, Lq51;->c:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v1, Ljava/io/File;

    .line 24
    .line 25
    invoke-direct {v2, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-nez p0, :cond_0

    .line 33
    .line 34
    const-string p0, "Initialization marker file was not properly removed."

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-static {v0, p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :catch_0
    move-exception p0

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    return-void

    .line 44
    :goto_0
    const-string v1, "Problem encountered deleting Crashlytics initialization marker."

    .line 45
    .line 46
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 47
    .line 48
    .line 49
    return-void
.end method
