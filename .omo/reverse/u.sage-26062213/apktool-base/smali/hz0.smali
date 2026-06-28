.class public final Lhz0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final j:Ljava/lang/Object;

.field public static volatile k:Lhz0;


# instance fields
.field public final a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field public final b:Lfi;

.field public volatile c:I

.field public final d:Landroid/os/Handler;

.field public final e:Lj8;

.field public final f:Lgz0;

.field public final g:Lqv3;

.field public final h:I

.field public final i:Lvo0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lhz0;->j:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lbb1;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lhz0;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    iput v1, p0, Lhz0;->c:I

    .line 13
    .line 14
    iget-object v1, p1, Ldz0;->b:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v1, Lgz0;

    .line 17
    .line 18
    iput-object v1, p0, Lhz0;->f:Lgz0;

    .line 19
    .line 20
    iget v2, p1, Ldz0;->a:I

    .line 21
    .line 22
    iput v2, p0, Lhz0;->h:I

    .line 23
    .line 24
    iget-object p1, p1, Ldz0;->c:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p1, Lvo0;

    .line 27
    .line 28
    iput-object p1, p0, Lhz0;->i:Lvo0;

    .line 29
    .line 30
    new-instance p1, Landroid/os/Handler;

    .line 31
    .line 32
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-direct {p1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Lhz0;->d:Landroid/os/Handler;

    .line 40
    .line 41
    new-instance p1, Lfi;

    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    invoke-direct {p1, v3}, Lfi;-><init>(I)V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Lhz0;->b:Lfi;

    .line 48
    .line 49
    new-instance p1, Lqv3;

    .line 50
    .line 51
    const/16 v4, 0x1d

    .line 52
    .line 53
    invoke-direct {p1, v4}, Lqv3;-><init>(I)V

    .line 54
    .line 55
    .line 56
    iput-object p1, p0, Lhz0;->g:Lqv3;

    .line 57
    .line 58
    new-instance p1, Lj8;

    .line 59
    .line 60
    invoke-direct {p1, p0}, Lj8;-><init>(Lhz0;)V

    .line 61
    .line 62
    .line 63
    iput-object p1, p0, Lhz0;->e:Lj8;

    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 70
    .line 71
    .line 72
    if-nez v2, :cond_0

    .line 73
    .line 74
    :try_start_0
    iput v3, p0, Lhz0;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :catchall_0
    move-exception p1

    .line 78
    iget-object p0, p0, Lhz0;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 79
    .line 80
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 85
    .line 86
    .line 87
    throw p1

    .line 88
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Lhz0;->b()I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-nez v0, :cond_1

    .line 100
    .line 101
    :try_start_1
    new-instance v0, Lcz0;

    .line 102
    .line 103
    invoke-direct {v0, p1}, Lcz0;-><init>(Lj8;)V

    .line 104
    .line 105
    .line 106
    invoke-interface {v1, v0}, Lgz0;->a(Lix;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :catchall_1
    move-exception p1

    .line 111
    invoke-virtual {p0, p1}, Lhz0;->e(Ljava/lang/Throwable;)V

    .line 112
    .line 113
    .line 114
    :cond_1
    return-void
.end method

.method public static a()Lhz0;
    .locals 4

    .line 1
    sget-object v0, Lhz0;->j:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lhz0;->k:Lhz0;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v2, 0x0

    .line 11
    :goto_0
    const-string v3, "EmojiCompat is not initialized.\n\nYou must initialize EmojiCompat prior to referencing the EmojiCompat instance.\n\nThe most likely cause of this error is disabling the EmojiCompatInitializer\neither explicitly in AndroidManifest.xml, or by including\nandroidx.emoji2:emoji2-bundled.\n\nAutomatic initialization is typically performed by EmojiCompatInitializer. If\nyou are not expecting to initialize EmojiCompat manually in your application,\nplease check to ensure it has not been removed from your APK\'s manifest. You can\ndo this in Android Studio using Build > Analyze APK.\n\nIn the APK Analyzer, ensure that the startup entry for\nEmojiCompatInitializer and InitializationProvider is present in\n AndroidManifest.xml. If it is missing or contains tools:node=\"remove\", and you\nintend to use automatic configuration, verify:\n\n  1. Your application does not include emoji2-bundled\n  2. All modules do not contain an exclusion manifest rule for\n     EmojiCompatInitializer or InitializationProvider. For more information\n     about manifest exclusions see the documentation for the androidx startup\n     library.\n\nIf you intend to use emoji2-bundled, please call EmojiCompat.init. You can\nlearn more in the documentation for BundledEmojiCompatConfig.\n\nIf you intended to perform manual configuration, it is recommended that you call\nEmojiCompat.init immediately on application startup.\n\nIf you still cannot resolve this issue, please open a bug with your specific\nconfiguration to help improve error message."

    .line 12
    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    monitor-exit v0

    .line 16
    return-object v1

    .line 17
    :catchall_0
    move-exception v1

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw v1

    .line 25
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw v1
.end method

.method public static c()Z
    .locals 1

    .line 1
    sget-object v0, Lhz0;->k:Lhz0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method


# virtual methods
.method public final b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lhz0;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget v0, p0, Lhz0;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    iget-object p0, p0, Lhz0;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 19
    .line 20
    .line 21
    return v0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    iget-object p0, p0, Lhz0;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 30
    .line 31
    .line 32
    throw v0
.end method

.method public final d()V
    .locals 3

    .line 1
    iget v0, p0, Lhz0;->h:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne v0, v2, :cond_0

    .line 6
    .line 7
    move v0, v2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v0, v1

    .line 10
    :goto_0
    if-eqz v0, :cond_3

    .line 11
    .line 12
    invoke-virtual {p0}, Lhz0;->b()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-ne v0, v2, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    iget-object v0, p0, Lhz0;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 26
    .line 27
    .line 28
    :try_start_0
    iget v0, p0, Lhz0;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 29
    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    iget-object p0, p0, Lhz0;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_2
    :try_start_1
    iput v1, p0, Lhz0;->c:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 43
    .line 44
    iget-object v0, p0, Lhz0;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 51
    .line 52
    .line 53
    iget-object p0, p0, Lhz0;->e:Lj8;

    .line 54
    .line 55
    iget-object v0, p0, Lj8;->a:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v0, Lhz0;

    .line 58
    .line 59
    :try_start_2
    new-instance v1, Lcz0;

    .line 60
    .line 61
    invoke-direct {v1, p0}, Lcz0;-><init>(Lj8;)V

    .line 62
    .line 63
    .line 64
    iget-object p0, v0, Lhz0;->f:Lgz0;

    .line 65
    .line 66
    invoke-interface {p0, v1}, Lgz0;->a(Lix;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :catchall_0
    move-exception p0

    .line 71
    invoke-virtual {v0, p0}, Lhz0;->e(Ljava/lang/Throwable;)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :catchall_1
    move-exception v0

    .line 76
    iget-object p0, p0, Lhz0;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 77
    .line 78
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 83
    .line 84
    .line 85
    throw v0

    .line 86
    :cond_3
    const-string p0, "Set metadataLoadStrategy to LOAD_STRATEGY_MANUAL to execute manual loading"

    .line 87
    .line 88
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method public final e(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lhz0;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    :try_start_0
    iput v1, p0, Lhz0;->c:I

    .line 17
    .line 18
    iget-object v1, p0, Lhz0;->b:Lfi;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lhz0;->b:Lfi;

    .line 24
    .line 25
    invoke-virtual {v1}, Lfi;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lhz0;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lhz0;->d:Landroid/os/Handler;

    .line 38
    .line 39
    new-instance v2, Lfz0;

    .line 40
    .line 41
    iget p0, p0, Lhz0;->c:I

    .line 42
    .line 43
    invoke-direct {v2, v0, p0, p1}, Lfz0;-><init>(Ljava/util/List;ILjava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    iget-object p0, p0, Lhz0;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 52
    .line 53
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 58
    .line 59
    .line 60
    throw p1
.end method

.method public final f(IIILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 11

    .line 1
    invoke-virtual {p0}, Lhz0;->b()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-ne v0, v2, :cond_0

    .line 8
    .line 9
    move v0, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v1

    .line 12
    :goto_0
    const/4 v3, 0x0

    .line 13
    if-eqz v0, :cond_19

    .line 14
    .line 15
    if-ltz p1, :cond_18

    .line 16
    .line 17
    if-ltz p2, :cond_17

    .line 18
    .line 19
    if-gt p1, p2, :cond_1

    .line 20
    .line 21
    move v0, v2

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move v0, v1

    .line 24
    :goto_1
    if-eqz v0, :cond_16

    .line 25
    .line 26
    if-nez p4, :cond_2

    .line 27
    .line 28
    return-object v3

    .line 29
    :cond_2
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-gt p1, v0, :cond_3

    .line 34
    .line 35
    move v0, v2

    .line 36
    goto :goto_2

    .line 37
    :cond_3
    move v0, v1

    .line 38
    :goto_2
    if-eqz v0, :cond_15

    .line 39
    .line 40
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-gt p2, v0, :cond_4

    .line 45
    .line 46
    move v0, v2

    .line 47
    goto :goto_3

    .line 48
    :cond_4
    move v0, v1

    .line 49
    :goto_3
    if-eqz v0, :cond_14

    .line 50
    .line 51
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_5

    .line 56
    .line 57
    if-ne p1, p2, :cond_6

    .line 58
    .line 59
    :cond_5
    move-object v5, p4

    .line 60
    goto/16 :goto_d

    .line 61
    .line 62
    :cond_6
    if-eq p3, v2, :cond_7

    .line 63
    .line 64
    move v9, v1

    .line 65
    goto :goto_4

    .line 66
    :cond_7
    move v9, v2

    .line 67
    :goto_4
    iget-object p0, p0, Lhz0;->e:Lj8;

    .line 68
    .line 69
    iget-object p0, p0, Lj8;->b:Ljava/lang/Object;

    .line 70
    .line 71
    move-object v4, p0

    .line 72
    check-cast v4, Leh;

    .line 73
    .line 74
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    instance-of p0, p4, Llq3;

    .line 78
    .line 79
    if-eqz p0, :cond_8

    .line 80
    .line 81
    move-object p3, p4

    .line 82
    check-cast p3, Llq3;

    .line 83
    .line 84
    invoke-virtual {p3}, Llq3;->a()V

    .line 85
    .line 86
    .line 87
    :cond_8
    const-class p3, La54;

    .line 88
    .line 89
    if-nez p0, :cond_a

    .line 90
    .line 91
    :try_start_0
    instance-of v0, p4, Landroid/text/Spannable;

    .line 92
    .line 93
    if-eqz v0, :cond_9

    .line 94
    .line 95
    goto :goto_6

    .line 96
    :cond_9
    instance-of v0, p4, Landroid/text/Spanned;

    .line 97
    .line 98
    if-eqz v0, :cond_b

    .line 99
    .line 100
    move-object v0, p4

    .line 101
    check-cast v0, Landroid/text/Spanned;

    .line 102
    .line 103
    add-int/lit8 v2, p1, -0x1

    .line 104
    .line 105
    add-int/lit8 v5, p2, 0x1

    .line 106
    .line 107
    invoke-interface {v0, v2, v5, p3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-gt v0, p2, :cond_b

    .line 112
    .line 113
    new-instance v3, La74;

    .line 114
    .line 115
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 116
    .line 117
    .line 118
    iput-boolean v1, v3, La74;->n:Z

    .line 119
    .line 120
    new-instance v0, Landroid/text/SpannableString;

    .line 121
    .line 122
    invoke-direct {v0, p4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 123
    .line 124
    .line 125
    iput-object v0, v3, La74;->o:Landroid/text/Spannable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    .line 127
    goto :goto_7

    .line 128
    :goto_5
    move-object v5, p4

    .line 129
    goto/16 :goto_c

    .line 130
    .line 131
    :catchall_0
    move-exception v0

    .line 132
    move-object p1, v0

    .line 133
    goto :goto_5

    .line 134
    :cond_a
    :goto_6
    :try_start_1
    new-instance v3, La74;

    .line 135
    .line 136
    move-object v0, p4

    .line 137
    check-cast v0, Landroid/text/Spannable;

    .line 138
    .line 139
    invoke-direct {v3, v0}, La74;-><init>(Landroid/text/Spannable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 140
    .line 141
    .line 142
    :cond_b
    :goto_7
    if-eqz v3, :cond_d

    .line 143
    .line 144
    :try_start_2
    iget-object v0, v3, La74;->o:Landroid/text/Spannable;

    .line 145
    .line 146
    invoke-interface {v0, p1, p2, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object p3

    .line 150
    check-cast p3, [La54;

    .line 151
    .line 152
    if-eqz p3, :cond_d

    .line 153
    .line 154
    array-length v0, p3

    .line 155
    if-lez v0, :cond_d

    .line 156
    .line 157
    array-length v0, p3

    .line 158
    :goto_8
    if-ge v1, v0, :cond_d

    .line 159
    .line 160
    aget-object v2, p3, v1

    .line 161
    .line 162
    iget-object v5, v3, La74;->o:Landroid/text/Spannable;

    .line 163
    .line 164
    invoke-interface {v5, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 165
    .line 166
    .line 167
    move-result v5

    .line 168
    iget-object v6, v3, La74;->o:Landroid/text/Spannable;

    .line 169
    .line 170
    invoke-interface {v6, v2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 171
    .line 172
    .line 173
    move-result v6

    .line 174
    if-eq v5, p2, :cond_c

    .line 175
    .line 176
    invoke-virtual {v3, v2}, La74;->removeSpan(Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    :cond_c
    invoke-static {v5, p1}, Ljava/lang/Math;->min(II)I

    .line 180
    .line 181
    .line 182
    move-result p1

    .line 183
    invoke-static {v6, p2}, Ljava/lang/Math;->max(II)I

    .line 184
    .line 185
    .line 186
    move-result p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 187
    add-int/lit8 v1, v1, 0x1

    .line 188
    .line 189
    goto :goto_8

    .line 190
    :cond_d
    move v6, p1

    .line 191
    move v7, p2

    .line 192
    if-eq v6, v7, :cond_e

    .line 193
    .line 194
    :try_start_3
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    .line 195
    .line 196
    .line 197
    move-result p1

    .line 198
    if-lt v6, p1, :cond_f

    .line 199
    .line 200
    :cond_e
    move-object v5, p4

    .line 201
    goto :goto_b

    .line 202
    :cond_f
    new-instance v10, Lgw4;

    .line 203
    .line 204
    iget-object p1, v4, Leh;->o:Ljava/lang/Object;

    .line 205
    .line 206
    check-cast p1, Lqv3;

    .line 207
    .line 208
    const/16 p2, 0x17

    .line 209
    .line 210
    invoke-direct {v10, p2, v3, p1}, Lgw4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 211
    .line 212
    .line 213
    const v8, 0x7fffffff

    .line 214
    .line 215
    .line 216
    move-object v5, p4

    .line 217
    :try_start_4
    invoke-virtual/range {v4 .. v10}, Leh;->E(Ljava/lang/CharSequence;IIIZLsz0;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    check-cast p1, La74;

    .line 222
    .line 223
    if-eqz p1, :cond_11

    .line 224
    .line 225
    iget-object p1, p1, La74;->o:Landroid/text/Spannable;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 226
    .line 227
    if-eqz p0, :cond_10

    .line 228
    .line 229
    move-object p4, v5

    .line 230
    check-cast p4, Llq3;

    .line 231
    .line 232
    invoke-virtual {p4}, Llq3;->b()V

    .line 233
    .line 234
    .line 235
    :cond_10
    return-object p1

    .line 236
    :catchall_1
    move-exception v0

    .line 237
    :goto_9
    move-object p1, v0

    .line 238
    goto :goto_c

    .line 239
    :cond_11
    if-eqz p0, :cond_13

    .line 240
    .line 241
    :goto_a
    move-object p4, v5

    .line 242
    check-cast p4, Llq3;

    .line 243
    .line 244
    invoke-virtual {p4}, Llq3;->b()V

    .line 245
    .line 246
    .line 247
    return-object v5

    .line 248
    :catchall_2
    move-exception v0

    .line 249
    move-object v5, p4

    .line 250
    goto :goto_9

    .line 251
    :goto_b
    if-eqz p0, :cond_13

    .line 252
    .line 253
    goto :goto_a

    .line 254
    :goto_c
    if-eqz p0, :cond_12

    .line 255
    .line 256
    move-object p4, v5

    .line 257
    check-cast p4, Llq3;

    .line 258
    .line 259
    invoke-virtual {p4}, Llq3;->b()V

    .line 260
    .line 261
    .line 262
    :cond_12
    throw p1

    .line 263
    :cond_13
    :goto_d
    return-object v5

    .line 264
    :cond_14
    const-string p0, "end should be < than charSequence length"

    .line 265
    .line 266
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    return-object v3

    .line 270
    :cond_15
    const-string p0, "start should be < than charSequence length"

    .line 271
    .line 272
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    return-object v3

    .line 276
    :cond_16
    const-string p0, "start should be <= than end"

    .line 277
    .line 278
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    return-object v3

    .line 282
    :cond_17
    const-string p0, "end cannot be negative"

    .line 283
    .line 284
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    return-object v3

    .line 288
    :cond_18
    const-string p0, "start cannot be negative"

    .line 289
    .line 290
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    return-object v3

    .line 294
    :cond_19
    const-string p0, "Not initialized yet"

    .line 295
    .line 296
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    return-object v3
.end method

.method public final g(Lez0;)V
    .locals 4

    .line 1
    const-string v0, "initCallback cannot be null"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lbi4;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lhz0;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 13
    .line 14
    .line 15
    :try_start_0
    iget v0, p0, Lhz0;->c:I

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    if-eq v0, v1, :cond_1

    .line 19
    .line 20
    iget v0, p0, Lhz0;->c:I

    .line 21
    .line 22
    const/4 v1, 0x2

    .line 23
    if-ne v0, v1, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Lhz0;->b:Lfi;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Lfi;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    goto :goto_2

    .line 34
    :cond_1
    :goto_0
    iget-object v0, p0, Lhz0;->d:Landroid/os/Handler;

    .line 35
    .line 36
    new-instance v1, Lfz0;

    .line 37
    .line 38
    iget v2, p0, Lhz0;->c:I

    .line 39
    .line 40
    filled-new-array {p1}, [Lez0;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const/4 v3, 0x0

    .line 49
    invoke-direct {v1, p1, v2, v3}, Lfz0;-><init>(Ljava/util/List;ILjava/lang/Throwable;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    .line 55
    :goto_1
    iget-object p0, p0, Lhz0;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 56
    .line 57
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :goto_2
    iget-object p0, p0, Lhz0;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 66
    .line 67
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 72
    .line 73
    .line 74
    throw p1
.end method
