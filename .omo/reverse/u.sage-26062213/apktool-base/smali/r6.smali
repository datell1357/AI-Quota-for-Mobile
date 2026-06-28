.class public final synthetic Lr6;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lf6;
.implements Lxo2;
.implements Lwt3;
.implements Lon2;
.implements Lxq0;
.implements Laa0;
.implements Leh0;
.implements Ltq3;
.implements Ljp2;
.implements Lmv3;
.implements Llu3;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lr6;->n:I

    .line 2
    .line 3
    iput-object p2, p0, Lr6;->o:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Ln03;)V
    .locals 7

    .line 1
    iget v0, p0, Lr6;->n:I

    .line 2
    .line 3
    const-string v1, "FirebaseCrashlytics"

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    const/4 v3, 0x0

    .line 7
    iget-object p0, p0, Lr6;->o:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p0, Lkj0;

    .line 13
    .line 14
    invoke-interface {p1}, Ln03;->get()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lw61;

    .line 19
    .line 20
    check-cast p1, Ls53;

    .line 21
    .line 22
    invoke-virtual {p1}, Ls53;->a()Ls61;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iget-object p1, p1, Ls61;->j:Lqd1;

    .line 27
    .line 28
    iget-object v0, p1, Lqd1;->r:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v0, Ljava/util/Set;

    .line 31
    .line 32
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    iget-object v0, p1, Lqd1;->o:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v0, Lyc0;

    .line 38
    .line 39
    invoke-virtual {v0}, Lyc0;->b()Low3;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget-object v4, p1, Lqd1;->q:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v4, Ljava/util/concurrent/Executor;

    .line 46
    .line 47
    new-instance v5, Lgd0;

    .line 48
    .line 49
    const/4 v6, 0x5

    .line 50
    invoke-direct {v5, p1, v0, p0, v6}, Lgd0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v4, v5}, Low3;->c(Ljava/util/concurrent/Executor;Ljp2;)Lef5;

    .line 54
    .line 55
    .line 56
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    if-eqz p0, :cond_0

    .line 61
    .line 62
    const-string p0, "Registering RemoteConfig Rollouts subscriber"

    .line 63
    .line 64
    invoke-static {v1, p0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    .line 66
    .line 67
    :cond_0
    return-void

    .line 68
    :pswitch_0
    check-cast p0, Ljj0;

    .line 69
    .line 70
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_1

    .line 75
    .line 76
    const-string v0, "Crashlytics native component now available."

    .line 77
    .line 78
    invoke-static {v1, v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    .line 80
    .line 81
    :cond_1
    iget-object p0, p0, Ljj0;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 82
    .line 83
    invoke-interface {p1}, Ln03;->get()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    check-cast p1, Ljj0;

    .line 88
    .line 89
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public b()Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Lr6;->n:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object p0, p0, Lr6;->o:Ljava/lang/Object;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p0, Lqd1;

    .line 10
    .line 11
    iget-object v0, p0, Lqd1;->p:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lob3;

    .line 14
    .line 15
    new-instance v2, Lq73;

    .line 16
    .line 17
    const/4 v3, 0x4

    .line 18
    invoke-direct {v2, v3}, Lq73;-><init>(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v2}, Lob3;->r(Lmb3;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Ljava/lang/Iterable;

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Lhp;

    .line 42
    .line 43
    iget-object v3, p0, Lqd1;->q:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v3, Leh;

    .line 46
    .line 47
    const/4 v4, 0x1

    .line 48
    const/4 v5, 0x0

    .line 49
    invoke-virtual {v3, v2, v4, v5}, Leh;->F(Lhp;IZ)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    return-object v1

    .line 54
    :pswitch_0
    check-cast p0, Led0;

    .line 55
    .line 56
    iget-object p0, p0, Led0;->i:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast p0, Lob3;

    .line 59
    .line 60
    invoke-virtual {p0}, Lob3;->b()Landroid/database/sqlite/SQLiteDatabase;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 65
    .line 66
    .line 67
    :try_start_0
    const-string v2, "DELETE FROM log_event_dropped"

    .line 68
    .line 69
    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 74
    .line 75
    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string v3, "UPDATE global_log_event_state SET last_metrics_upload_ms="

    .line 79
    .line 80
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-object p0, p0, Lob3;->o:Lpr3;

    .line 84
    .line 85
    invoke-virtual {p0}, Lpr3;->i()J

    .line 86
    .line 87
    .line 88
    move-result-wide v3

    .line 89
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-virtual {v0, p0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 107
    .line 108
    .line 109
    return-object v1

    .line 110
    :catchall_0
    move-exception p0

    .line 111
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 112
    .line 113
    .line 114
    throw p0

    .line 115
    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method

.method public c()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lr6;->o:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lu/sage/MainActivity;

    .line 4
    .line 5
    iget-object p0, p0, Lu/sage/MainActivity;->t:Lwr3;

    .line 6
    .line 7
    invoke-virtual {p0}, Lwr3;->getValue()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return p0
.end method

.method public d()Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lr6;->n:I

    .line 2
    .line 3
    iget-object p0, p0, Lr6;->o:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Ljava/lang/Class;

    .line 9
    .line 10
    :try_start_0
    sget-object v0, Lh74;->a:Lh74;

    .line 11
    .line 12
    invoke-virtual {v0, p0}, Lh74;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    return-object p0

    .line 17
    :catch_0
    move-exception v0

    .line 18
    new-instance v1, Ljava/lang/RuntimeException;

    .line 19
    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v3, "Unable to create instance of "

    .line 23
    .line 24
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string p0, ". Registering an InstanceCreator or a TypeAdapter for this type, or adding a no-args constructor may fix this problem."

    .line 31
    .line 32
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    throw v1

    .line 43
    :pswitch_0
    check-cast p0, Ljava/lang/reflect/Constructor;

    .line 44
    .line 45
    const-string v0, "\' with no args"

    .line 46
    .line 47
    const-string v1, "Failed to invoke constructor \'"

    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    :try_start_1
    invoke-virtual {p0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    .line 54
    goto :goto_0

    .line 55
    :catch_1
    move-exception p0

    .line 56
    sget-object v0, Lc43;->a:Lnt1;

    .line 57
    .line 58
    const-string v0, "Unexpected IllegalAccessException occurred (Gson 2.14.0). Certain ReflectionAccessFilter features require Java >= 9 to work correctly. If you are not using ReflectionAccessFilter, report this to the Gson maintainers."

    .line 59
    .line 60
    invoke-static {v0, p0}, Lk21;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catch_2
    move-exception v3

    .line 65
    new-instance v4, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-static {p0}, Lc43;->b(Ljava/lang/reflect/Constructor;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-static {p0, v0}, Lk21;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    .line 90
    .line 91
    :goto_0
    return-object v2

    .line 92
    :catch_3
    move-exception v2

    .line 93
    new-instance v3, Ljava/lang/RuntimeException;

    .line 94
    .line 95
    invoke-static {p0}, Lc43;->b(Ljava/lang/reflect/Constructor;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    new-instance v4, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    invoke-direct {v3, p0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 115
    .line 116
    .line 117
    throw v3

    .line 118
    nop

    .line 119
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public e(Leh;)Lh30;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v0, v0, Lr6;->o:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Li30;

    .line 8
    .line 9
    iget-object v2, v1, Leh;->o:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Ljava/net/URL;

    .line 12
    .line 13
    const-string v3, "CctTransportBackend"

    .line 14
    .line 15
    invoke-static {v3}, Lqj0;->M(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    const/4 v5, 0x4

    .line 20
    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 21
    .line 22
    .line 23
    move-result v6

    .line 24
    if-eqz v6, :cond_0

    .line 25
    .line 26
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    const-string v7, "Making request to: %s"

    .line 31
    .line 32
    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Ljava/net/HttpURLConnection;

    .line 44
    .line 45
    const/16 v4, 0x7530

    .line 46
    .line 47
    invoke-virtual {v2, v4}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 48
    .line 49
    .line 50
    iget v4, v0, Li30;->g:I

    .line 51
    .line 52
    invoke-virtual {v2, v4}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 53
    .line 54
    .line 55
    const/4 v4, 0x1

    .line 56
    invoke-virtual {v2, v4}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 57
    .line 58
    .line 59
    const/4 v4, 0x0

    .line 60
    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 61
    .line 62
    .line 63
    const-string v4, "POST"

    .line 64
    .line 65
    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const-string v4, "User-Agent"

    .line 69
    .line 70
    const-string v6, "datatransport/3.3.0 android/"

    .line 71
    .line 72
    invoke-virtual {v2, v4, v6}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    const-string v4, "Content-Encoding"

    .line 76
    .line 77
    const-string v6, "gzip"

    .line 78
    .line 79
    invoke-virtual {v2, v4, v6}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    const-string v7, "application/json"

    .line 83
    .line 84
    const-string v8, "Content-Type"

    .line 85
    .line 86
    invoke-virtual {v2, v8, v7}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    const-string v7, "Accept-Encoding"

    .line 90
    .line 91
    invoke-virtual {v2, v7, v6}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget-object v7, v1, Leh;->q:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast v7, Ljava/lang/String;

    .line 97
    .line 98
    if-eqz v7, :cond_1

    .line 99
    .line 100
    const-string v9, "X-Goog-Api-Key"

    .line 101
    .line 102
    invoke-virtual {v2, v9, v7}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    :cond_1
    :try_start_0
    invoke-virtual {v2}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 106
    .line 107
    .line 108
    move-result-object v10
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lp01; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :try_start_1
    new-instance v11, Ljava/util/zip/GZIPOutputStream;

    .line 110
    .line 111
    invoke-direct {v11, v10}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 112
    .line 113
    .line 114
    :try_start_2
    iget-object v0, v0, Li30;->a:Ldd1;

    .line 115
    .line 116
    iget-object v1, v1, Leh;->p:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast v1, Ljm;

    .line 119
    .line 120
    new-instance v13, Ljava/io/BufferedWriter;

    .line 121
    .line 122
    new-instance v12, Ljava/io/OutputStreamWriter;

    .line 123
    .line 124
    invoke-direct {v12, v11}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 125
    .line 126
    .line 127
    invoke-direct {v13, v12}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 128
    .line 129
    .line 130
    new-instance v12, Lax1;

    .line 131
    .line 132
    iget-object v0, v0, Ldd1;->o:Ljava/lang/Object;

    .line 133
    .line 134
    check-cast v0, Ltv1;

    .line 135
    .line 136
    iget-object v14, v0, Ltv1;->a:Ljava/util/HashMap;

    .line 137
    .line 138
    iget-object v7, v0, Ltv1;->b:Ljava/util/HashMap;

    .line 139
    .line 140
    iget-object v9, v0, Ltv1;->c:Lqv1;

    .line 141
    .line 142
    iget-boolean v0, v0, Ltv1;->d:Z

    .line 143
    .line 144
    move/from16 v17, v0

    .line 145
    .line 146
    move-object v15, v7

    .line 147
    move-object/from16 v16, v9

    .line 148
    .line 149
    invoke-direct/range {v12 .. v17}, Lax1;-><init>(Ljava/io/Writer;Ljava/util/HashMap;Ljava/util/HashMap;Lqv1;Z)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v12, v1}, Lax1;->h(Ljava/lang/Object;)Lax1;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v12}, Lax1;->j()V

    .line 156
    .line 157
    .line 158
    iget-object v0, v12, Lax1;->b:Landroid/util/JsonWriter;

    .line 159
    .line 160
    invoke-virtual {v0}, Landroid/util/JsonWriter;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 161
    .line 162
    .line 163
    :try_start_3
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 164
    .line 165
    .line 166
    if-eqz v10, :cond_2

    .line 167
    .line 168
    :try_start_4
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/net/ConnectException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lp01; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 169
    .line 170
    .line 171
    goto :goto_1

    .line 172
    :catch_0
    move-exception v0

    .line 173
    goto/16 :goto_d

    .line 174
    .line 175
    :catch_1
    move-exception v0

    .line 176
    goto/16 :goto_d

    .line 177
    .line 178
    :catch_2
    move-exception v0

    .line 179
    :goto_0
    const-wide/16 v4, 0x0

    .line 180
    .line 181
    const/4 v6, 0x0

    .line 182
    goto/16 :goto_e

    .line 183
    .line 184
    :catch_3
    move-exception v0

    .line 185
    goto :goto_0

    .line 186
    :cond_2
    :goto_1
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    invoke-static {v3}, Lqj0;->M(Ljava/lang/String;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v7

    .line 198
    invoke-static {v7, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 199
    .line 200
    .line 201
    move-result v5

    .line 202
    if-eqz v5, :cond_3

    .line 203
    .line 204
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    const-string v5, "Status Code: %d"

    .line 209
    .line 210
    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    invoke-static {v7, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    .line 216
    .line 217
    :cond_3
    const-string v1, "Content-Type: %s"

    .line 218
    .line 219
    invoke-virtual {v2, v8}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v5

    .line 223
    invoke-static {v5, v3, v1}, Lqj0;->C(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    const-string v1, "Content-Encoding: %s"

    .line 227
    .line 228
    invoke-virtual {v2, v4}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v5

    .line 232
    invoke-static {v5, v3, v1}, Lqj0;->C(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    const/16 v1, 0x12e

    .line 236
    .line 237
    if-eq v0, v1, :cond_b

    .line 238
    .line 239
    const/16 v1, 0x12d

    .line 240
    .line 241
    if-eq v0, v1, :cond_b

    .line 242
    .line 243
    const/16 v1, 0x133

    .line 244
    .line 245
    if-ne v0, v1, :cond_4

    .line 246
    .line 247
    goto :goto_7

    .line 248
    :cond_4
    const/16 v1, 0xc8

    .line 249
    .line 250
    if-eq v0, v1, :cond_5

    .line 251
    .line 252
    new-instance v1, Lh30;

    .line 253
    .line 254
    const-wide/16 v2, 0x0

    .line 255
    .line 256
    const/4 v4, 0x0

    .line 257
    invoke-direct {v1, v0, v4, v2, v3}, Lh30;-><init>(ILjava/net/URL;J)V

    .line 258
    .line 259
    .line 260
    return-object v1

    .line 261
    :cond_5
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    :try_start_5
    invoke-virtual {v2, v4}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v2

    .line 269
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    move-result v2

    .line 273
    if-eqz v2, :cond_6

    .line 274
    .line 275
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    .line 276
    .line 277
    invoke-direct {v2, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 278
    .line 279
    .line 280
    goto :goto_2

    .line 281
    :cond_6
    move-object v2, v1

    .line 282
    :goto_2
    :try_start_6
    new-instance v3, Ljava/io/BufferedReader;

    .line 283
    .line 284
    new-instance v4, Ljava/io/InputStreamReader;

    .line 285
    .line 286
    invoke-direct {v4, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 287
    .line 288
    .line 289
    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 290
    .line 291
    .line 292
    invoke-static {v3}, Lpo;->a(Ljava/io/BufferedReader;)Lpo;

    .line 293
    .line 294
    .line 295
    move-result-object v3

    .line 296
    iget-wide v3, v3, Lpo;->a:J

    .line 297
    .line 298
    new-instance v5, Lh30;

    .line 299
    .line 300
    const/4 v6, 0x0

    .line 301
    invoke-direct {v5, v0, v6, v3, v4}, Lh30;-><init>(ILjava/net/URL;J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 302
    .line 303
    .line 304
    if-eqz v2, :cond_7

    .line 305
    .line 306
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 307
    .line 308
    .line 309
    goto :goto_3

    .line 310
    :catchall_0
    move-exception v0

    .line 311
    move-object v2, v0

    .line 312
    goto :goto_5

    .line 313
    :cond_7
    :goto_3
    if-eqz v1, :cond_8

    .line 314
    .line 315
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 316
    .line 317
    .line 318
    :cond_8
    return-object v5

    .line 319
    :catchall_1
    move-exception v0

    .line 320
    move-object v3, v0

    .line 321
    if-eqz v2, :cond_9

    .line 322
    .line 323
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 324
    .line 325
    .line 326
    goto :goto_4

    .line 327
    :catchall_2
    move-exception v0

    .line 328
    :try_start_9
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 329
    .line 330
    .line 331
    :cond_9
    :goto_4
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 332
    :goto_5
    if-eqz v1, :cond_a

    .line 333
    .line 334
    :try_start_a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 335
    .line 336
    .line 337
    goto :goto_6

    .line 338
    :catchall_3
    move-exception v0

    .line 339
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 340
    .line 341
    .line 342
    :cond_a
    :goto_6
    throw v2

    .line 343
    :cond_b
    :goto_7
    const-string v1, "Location"

    .line 344
    .line 345
    invoke-virtual {v2, v1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v1

    .line 349
    new-instance v2, Lh30;

    .line 350
    .line 351
    new-instance v3, Ljava/net/URL;

    .line 352
    .line 353
    invoke-direct {v3, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    const-wide/16 v4, 0x0

    .line 357
    .line 358
    invoke-direct {v2, v0, v3, v4, v5}, Lh30;-><init>(ILjava/net/URL;J)V

    .line 359
    .line 360
    .line 361
    return-object v2

    .line 362
    :catchall_4
    move-exception v0

    .line 363
    move-object v1, v0

    .line 364
    goto :goto_b

    .line 365
    :goto_8
    move-object v1, v0

    .line 366
    goto :goto_9

    .line 367
    :catchall_5
    move-exception v0

    .line 368
    goto :goto_8

    .line 369
    :goto_9
    :try_start_b
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 370
    .line 371
    .line 372
    goto :goto_a

    .line 373
    :catchall_6
    move-exception v0

    .line 374
    :try_start_c
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 375
    .line 376
    .line 377
    :goto_a
    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 378
    :goto_b
    if-eqz v10, :cond_c

    .line 379
    .line 380
    :try_start_d
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 381
    .line 382
    .line 383
    goto :goto_c

    .line 384
    :catchall_7
    move-exception v0

    .line 385
    :try_start_e
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 386
    .line 387
    .line 388
    :cond_c
    :goto_c
    throw v1
    :try_end_e
    .catch Ljava/net/ConnectException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_e .. :try_end_e} :catch_2
    .catch Lp01; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0

    .line 389
    :goto_d
    const-string v1, "Couldn\'t encode request, returning with 400"

    .line 390
    .line 391
    invoke-static {v3, v1, v0}, Lqj0;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 392
    .line 393
    .line 394
    new-instance v0, Lh30;

    .line 395
    .line 396
    const/16 v1, 0x190

    .line 397
    .line 398
    const-wide/16 v4, 0x0

    .line 399
    .line 400
    const/4 v6, 0x0

    .line 401
    invoke-direct {v0, v1, v6, v4, v5}, Lh30;-><init>(ILjava/net/URL;J)V

    .line 402
    .line 403
    .line 404
    goto :goto_f

    .line 405
    :goto_e
    const-string v1, "Couldn\'t open connection, returning with 500"

    .line 406
    .line 407
    invoke-static {v3, v1, v0}, Lqj0;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 408
    .line 409
    .line 410
    new-instance v0, Lh30;

    .line 411
    .line 412
    const/16 v1, 0x1f4

    .line 413
    .line 414
    invoke-direct {v0, v1, v6, v4, v5}, Lh30;-><init>(ILjava/net/URL;J)V

    .line 415
    .line 416
    .line 417
    :goto_f
    return-object v0
.end method

.method public f(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lr6;->o:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lpg2;

    .line 4
    .line 5
    invoke-interface {p0}, Ltr3;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lpe1;

    .line 10
    .line 11
    invoke-interface {p0, p1}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public g()V
    .locals 8

    .line 1
    iget-object p0, p0, Lr6;->o:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ldf1;

    .line 4
    .line 5
    sget-object v0, Lwo3;->c:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lwo3;->h:Ljava/util/List;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    new-instance v2, Ljava/util/ArrayList;

    .line 14
    .line 15
    const/16 v3, 0xa

    .line 16
    .line 17
    invoke-static {v1, v3}, Lp70;->a0(Ljava/lang/Iterable;I)I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 22
    .line 23
    .line 24
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const/4 v3, 0x0

    .line 29
    move v4, v3

    .line 30
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    if-eqz v5, :cond_2

    .line 35
    .line 36
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    const/4 v6, 0x1

    .line 41
    if-nez v4, :cond_1

    .line 42
    .line 43
    invoke-static {v5, p0}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v7

    .line 47
    if-eqz v7, :cond_1

    .line 48
    .line 49
    move v4, v6

    .line 50
    move v6, v3

    .line 51
    :cond_1
    if-eqz v6, :cond_0

    .line 52
    .line 53
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    sput-object v2, Lwo3;->h:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    monitor-exit v0

    .line 60
    return-void

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    monitor-exit v0

    .line 63
    throw p0
.end method

.method public h(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lr6;->n:I

    .line 2
    .line 3
    iget-object p0, p0, Lr6;->o:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lh92;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    sget v0, Lu/sage/MainActivity;->C:I

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lh92;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    sget v0, Lu/sage/MainActivity;->C:I

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lh92;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method public i(Llq1;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 1

    .line 1
    iget-object p0, p0, Lr6;->o:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lg40;

    .line 4
    .line 5
    new-instance v0, Lvq3;

    .line 6
    .line 7
    invoke-direct {v0, p1, p2, p0}, Lvq3;-><init>(Llq1;Ljava/lang/CharSequence;Lg40;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public j(Lhg;)Ljava/lang/Object;
    .locals 54

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v0, v0, Lr6;->o:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;

    .line 8
    .line 9
    sget v2, Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;->d:I

    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    const-class v4, Le61;

    .line 16
    .line 17
    invoke-virtual {v1, v4}, Lhg;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    move-object v6, v4

    .line 22
    check-cast v6, Le61;

    .line 23
    .line 24
    const-class v4, Ln61;

    .line 25
    .line 26
    invoke-virtual {v1, v4}, Lhg;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    check-cast v4, Ln61;

    .line 31
    .line 32
    const-class v5, Ljj0;

    .line 33
    .line 34
    invoke-virtual {v1, v5}, Lhg;->o(Ljava/lang/Class;)Ldr2;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    const-class v7, Lg8;

    .line 39
    .line 40
    invoke-virtual {v1, v7}, Lhg;->o(Ljava/lang/Class;)Ldr2;

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    const-class v8, Lw61;

    .line 45
    .line 46
    invoke-virtual {v1, v8}, Lhg;->o(Ljava/lang/Class;)Ldr2;

    .line 47
    .line 48
    .line 49
    move-result-object v8

    .line 50
    iget-object v9, v0, Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;->a:Lz03;

    .line 51
    .line 52
    invoke-virtual {v1, v9}, Lhg;->l(Lz03;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v9

    .line 56
    check-cast v9, Ljava/util/concurrent/ExecutorService;

    .line 57
    .line 58
    iget-object v10, v0, Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;->b:Lz03;

    .line 59
    .line 60
    invoke-virtual {v1, v10}, Lhg;->l(Lz03;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v10

    .line 64
    check-cast v10, Ljava/util/concurrent/ExecutorService;

    .line 65
    .line 66
    iget-object v0, v0, Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;->c:Lz03;

    .line 67
    .line 68
    invoke-virtual {v1, v0}, Lhg;->l(Lz03;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Ljava/util/concurrent/ExecutorService;

    .line 73
    .line 74
    const-string v1, ""

    .line 75
    .line 76
    const-string v11, "FirebaseCrashlytics"

    .line 77
    .line 78
    invoke-virtual {v6}, Le61;->a()V

    .line 79
    .line 80
    .line 81
    iget-object v12, v6, Le61;->a:Landroid/content/Context;

    .line 82
    .line 83
    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v13

    .line 87
    new-instance v14, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    const-string v15, "Initializing Firebase Crashlytics 20.0.6 for "

    .line 90
    .line 91
    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v14

    .line 101
    const/4 v15, 0x0

    .line 102
    invoke-static {v11, v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    .line 104
    .line 105
    move-object v14, v15

    .line 106
    new-instance v15, Leh;

    .line 107
    .line 108
    invoke-direct {v15, v9, v10}, Leh;-><init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)V

    .line 109
    .line 110
    .line 111
    new-instance v9, Lq51;

    .line 112
    .line 113
    invoke-direct {v9, v12}, Lq51;-><init>(Landroid/content/Context;)V

    .line 114
    .line 115
    .line 116
    new-instance v10, Lbm0;

    .line 117
    .line 118
    invoke-direct {v10, v6}, Lbm0;-><init>(Le61;)V

    .line 119
    .line 120
    .line 121
    new-instance v14, Lsn1;

    .line 122
    .line 123
    invoke-direct {v14, v12, v13, v4, v10}, Lsn1;-><init>(Landroid/content/Context;Ljava/lang/String;Ln61;Lbm0;)V

    .line 124
    .line 125
    .line 126
    new-instance v4, Ljj0;

    .line 127
    .line 128
    invoke-direct {v4, v5}, Ljj0;-><init>(Ldr2;)V

    .line 129
    .line 130
    .line 131
    new-instance v5, Lj8;

    .line 132
    .line 133
    invoke-direct {v5, v7}, Lj8;-><init>(Ldr2;)V

    .line 134
    .line 135
    .line 136
    new-instance v13, Laj0;

    .line 137
    .line 138
    invoke-direct {v13, v10, v9}, Laj0;-><init>(Lbm0;Lq51;)V

    .line 139
    .line 140
    .line 141
    sget-object v7, Lf71;->a:Lf71;

    .line 142
    .line 143
    const-string v7, "Subscriber "

    .line 144
    .line 145
    move-wide/from16 v26, v2

    .line 146
    .line 147
    const-string v2, "FirebaseSessions"

    .line 148
    .line 149
    sget-object v3, Lck3;->n:Lck3;

    .line 150
    .line 151
    sget-object v16, Lf71;->a:Lf71;

    .line 152
    .line 153
    move-object/from16 p1, v4

    .line 154
    .line 155
    invoke-static {v3}, Lf71;->a(Lck3;)Ld71;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    move-object/from16 v16, v6

    .line 160
    .line 161
    iget-object v6, v4, Ld71;->b:Laj0;

    .line 162
    .line 163
    if-eqz v6, :cond_0

    .line 164
    .line 165
    new-instance v4, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    const-string v3, " already registered."

    .line 174
    .line 175
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    .line 184
    .line 185
    :goto_0
    move-object/from16 v21, v14

    .line 186
    .line 187
    goto :goto_1

    .line 188
    :cond_0
    iput-object v13, v4, Ld71;->b:Laj0;

    .line 189
    .line 190
    new-instance v6, Ljava/lang/StringBuilder;

    .line 191
    .line 192
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    const-string v3, " registered."

    .line 199
    .line 200
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    .line 209
    .line 210
    iget-object v2, v4, Ld71;->a:Ljava/util/concurrent/CountDownLatch;

    .line 211
    .line 212
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 213
    .line 214
    .line 215
    goto :goto_0

    .line 216
    :goto_1
    new-instance v14, Ldh1;

    .line 217
    .line 218
    invoke-direct {v14, v8}, Ldh1;-><init>(Ljava/lang/Object;)V

    .line 219
    .line 220
    .line 221
    new-instance v2, Lij0;

    .line 222
    .line 223
    move-object v3, v12

    .line 224
    move-object v12, v9

    .line 225
    move-object v9, v10

    .line 226
    new-instance v10, Li8;

    .line 227
    .line 228
    invoke-direct {v10, v5}, Li8;-><init>(Lj8;)V

    .line 229
    .line 230
    .line 231
    move-object v4, v11

    .line 232
    new-instance v11, Li8;

    .line 233
    .line 234
    invoke-direct {v11, v5}, Li8;-><init>(Lj8;)V

    .line 235
    .line 236
    .line 237
    move-object/from16 v8, p1

    .line 238
    .line 239
    move-object v5, v2

    .line 240
    move-object/from16 v6, v16

    .line 241
    .line 242
    move-object/from16 v7, v21

    .line 243
    .line 244
    const/4 v2, 0x0

    .line 245
    invoke-direct/range {v5 .. v15}, Lij0;-><init>(Le61;Lsn1;Ljj0;Lbm0;Li8;Li8;Lq51;Laj0;Ldh1;Leh;)V

    .line 246
    .line 247
    .line 248
    iget-object v7, v5, Lij0;->o:Leh;

    .line 249
    .line 250
    invoke-virtual {v6}, Le61;->a()V

    .line 251
    .line 252
    .line 253
    iget-object v6, v6, Le61;->c:Lq61;

    .line 254
    .line 255
    iget-object v6, v6, Lq61;->b:Ljava/lang/String;

    .line 256
    .line 257
    const-string v8, "com.google.firebase.crashlytics.mapping_file_id"

    .line 258
    .line 259
    const-string v10, "string"

    .line 260
    .line 261
    invoke-static {v3, v8, v10}, Lw80;->x(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    .line 263
    .line 264
    move-result v8

    .line 265
    if-nez v8, :cond_1

    .line 266
    .line 267
    const-string v8, "com.crashlytics.android.build_id"

    .line 268
    .line 269
    invoke-static {v3, v8, v10}, Lw80;->x(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    .line 271
    .line 272
    move-result v8

    .line 273
    :cond_1
    if-eqz v8, :cond_2

    .line 274
    .line 275
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 276
    .line 277
    .line 278
    move-result-object v10

    .line 279
    invoke-virtual {v10, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v8

    .line 283
    goto :goto_2

    .line 284
    :cond_2
    move-object v8, v2

    .line 285
    :goto_2
    new-instance v10, Ljava/util/ArrayList;

    .line 286
    .line 287
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 288
    .line 289
    .line 290
    const-string v11, "com.google.firebase.crashlytics.build_ids_lib"

    .line 291
    .line 292
    const-string v13, "array"

    .line 293
    .line 294
    invoke-static {v3, v11, v13}, Lw80;->x(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    .line 296
    .line 297
    move-result v11

    .line 298
    const-string v14, "com.google.firebase.crashlytics.build_ids_arch"

    .line 299
    .line 300
    invoke-static {v3, v14, v13}, Lw80;->x(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    .line 302
    .line 303
    move-result v14

    .line 304
    const-string v2, "com.google.firebase.crashlytics.build_ids_build_id"

    .line 305
    .line 306
    invoke-static {v3, v2, v13}, Lw80;->x(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    .line 308
    .line 309
    move-result v2

    .line 310
    if-eqz v11, :cond_3

    .line 311
    .line 312
    if-eqz v14, :cond_3

    .line 313
    .line 314
    if-nez v2, :cond_4

    .line 315
    .line 316
    :cond_3
    move-object/from16 v38, v5

    .line 317
    .line 318
    move-object/from16 v29, v6

    .line 319
    .line 320
    move-object/from16 v37, v7

    .line 321
    .line 322
    goto/16 :goto_6

    .line 323
    .line 324
    :cond_4
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 325
    .line 326
    .line 327
    move-result-object v13

    .line 328
    invoke-virtual {v13, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v11

    .line 332
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 333
    .line 334
    .line 335
    move-result-object v13

    .line 336
    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v13

    .line 340
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 341
    .line 342
    .line 343
    move-result-object v14

    .line 344
    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v2

    .line 348
    array-length v14, v11

    .line 349
    move-object/from16 v29, v6

    .line 350
    .line 351
    array-length v6, v2

    .line 352
    if-ne v14, v6, :cond_5

    .line 353
    .line 354
    array-length v6, v13

    .line 355
    array-length v14, v2

    .line 356
    if-eq v6, v14, :cond_6

    .line 357
    .line 358
    :cond_5
    move-object/from16 v38, v5

    .line 359
    .line 360
    move-object/from16 v37, v7

    .line 361
    .line 362
    goto :goto_5

    .line 363
    :cond_6
    const/4 v6, 0x0

    .line 364
    :goto_3
    array-length v14, v2

    .line 365
    if-ge v6, v14, :cond_7

    .line 366
    .line 367
    new-instance v14, Ljz;

    .line 368
    .line 369
    move/from16 v16, v6

    .line 370
    .line 371
    aget-object v6, v11, v16

    .line 372
    .line 373
    move-object/from16 v37, v7

    .line 374
    .line 375
    aget-object v7, v13, v16

    .line 376
    .line 377
    move-object/from16 v38, v5

    .line 378
    .line 379
    aget-object v5, v2, v16

    .line 380
    .line 381
    invoke-direct {v14, v6, v7, v5}, Ljz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    .line 386
    .line 387
    add-int/lit8 v6, v16, 0x1

    .line 388
    .line 389
    move-object/from16 v7, v37

    .line 390
    .line 391
    move-object/from16 v5, v38

    .line 392
    .line 393
    goto :goto_3

    .line 394
    :cond_7
    move-object/from16 v38, v5

    .line 395
    .line 396
    move-object/from16 v37, v7

    .line 397
    .line 398
    :cond_8
    :goto_4
    const/4 v5, 0x3

    .line 399
    :cond_9
    const/4 v14, 0x0

    .line 400
    goto :goto_7

    .line 401
    :goto_5
    const-string v5, "Lengths did not match: %d %d %d"

    .line 402
    .line 403
    array-length v6, v11

    .line 404
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 405
    .line 406
    .line 407
    move-result-object v6

    .line 408
    array-length v7, v13

    .line 409
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 410
    .line 411
    .line 412
    move-result-object v7

    .line 413
    array-length v2, v2

    .line 414
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 415
    .line 416
    .line 417
    move-result-object v2

    .line 418
    filled-new-array {v6, v7, v2}, [Ljava/lang/Object;

    .line 419
    .line 420
    .line 421
    move-result-object v2

    .line 422
    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v2

    .line 426
    const/4 v5, 0x3

    .line 427
    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 428
    .line 429
    .line 430
    move-result v6

    .line 431
    if-eqz v6, :cond_8

    .line 432
    .line 433
    const/4 v14, 0x0

    .line 434
    invoke-static {v4, v2, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 435
    .line 436
    .line 437
    goto :goto_4

    .line 438
    :goto_6
    const-string v5, "Could not find resources: %d %d %d"

    .line 439
    .line 440
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 441
    .line 442
    .line 443
    move-result-object v6

    .line 444
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 445
    .line 446
    .line 447
    move-result-object v7

    .line 448
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 449
    .line 450
    .line 451
    move-result-object v2

    .line 452
    filled-new-array {v6, v7, v2}, [Ljava/lang/Object;

    .line 453
    .line 454
    .line 455
    move-result-object v2

    .line 456
    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v2

    .line 460
    const/4 v5, 0x3

    .line 461
    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 462
    .line 463
    .line 464
    move-result v6

    .line 465
    if-eqz v6, :cond_9

    .line 466
    .line 467
    const/4 v14, 0x0

    .line 468
    invoke-static {v4, v2, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 469
    .line 470
    .line 471
    :goto_7
    const-string v2, "Mapping file ID is: "

    .line 472
    .line 473
    invoke-static {v2, v8}, Ldi0;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object v2

    .line 477
    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 478
    .line 479
    .line 480
    move-result v6

    .line 481
    if-eqz v6, :cond_a

    .line 482
    .line 483
    invoke-static {v4, v2, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 484
    .line 485
    .line 486
    :cond_a
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 487
    .line 488
    .line 489
    move-result v2

    .line 490
    const/4 v5, 0x0

    .line 491
    :goto_8
    if-ge v5, v2, :cond_c

    .line 492
    .line 493
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 494
    .line 495
    .line 496
    move-result-object v6

    .line 497
    add-int/lit8 v5, v5, 0x1

    .line 498
    .line 499
    check-cast v6, Ljz;

    .line 500
    .line 501
    iget-object v7, v6, Ljz;->a:Ljava/lang/String;

    .line 502
    .line 503
    iget-object v11, v6, Ljz;->b:Ljava/lang/String;

    .line 504
    .line 505
    iget-object v6, v6, Ljz;->c:Ljava/lang/String;

    .line 506
    .line 507
    const-string v13, "Build id for "

    .line 508
    .line 509
    const-string v14, " on "

    .line 510
    .line 511
    move/from16 v16, v2

    .line 512
    .line 513
    const-string v2, ": "

    .line 514
    .line 515
    invoke-static {v13, v7, v14, v11, v2}, Ldi0;->B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    .line 517
    .line 518
    move-result-object v2

    .line 519
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    .line 521
    .line 522
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 523
    .line 524
    .line 525
    move-result-object v2

    .line 526
    const/4 v6, 0x3

    .line 527
    invoke-static {v4, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 528
    .line 529
    .line 530
    move-result v7

    .line 531
    if-eqz v7, :cond_b

    .line 532
    .line 533
    const/4 v14, 0x0

    .line 534
    invoke-static {v4, v2, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 535
    .line 536
    .line 537
    :cond_b
    move/from16 v2, v16

    .line 538
    .line 539
    goto :goto_8

    .line 540
    :cond_c
    new-instance v2, Lgw4;

    .line 541
    .line 542
    const/16 v5, 0x14

    .line 543
    .line 544
    invoke-direct {v2, v5, v3}, Lgw4;-><init>(ILjava/lang/Object;)V

    .line 545
    .line 546
    .line 547
    :try_start_0
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 548
    .line 549
    .line 550
    move-result-object v5

    .line 551
    invoke-virtual/range {v21 .. v21}, Lsn1;->d()Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    move-result-object v32

    .line 555
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 556
    .line 557
    .line 558
    move-result-object v6

    .line 559
    const/4 v7, 0x0

    .line 560
    invoke-virtual {v6, v5, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 561
    .line 562
    .line 563
    move-result-object v6

    .line 564
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 565
    .line 566
    const/16 v11, 0x1c

    .line 567
    .line 568
    if-lt v7, v11, :cond_d

    .line 569
    .line 570
    invoke-static {v6}, Lx2;->c(Landroid/content/pm/PackageInfo;)J

    .line 571
    .line 572
    .line 573
    move-result-wide v13

    .line 574
    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 575
    .line 576
    .line 577
    move-result-object v7

    .line 578
    :goto_9
    move-object/from16 v34, v7

    .line 579
    .line 580
    goto :goto_a

    .line 581
    :cond_d
    iget v7, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 582
    .line 583
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 584
    .line 585
    .line 586
    move-result-object v7

    .line 587
    goto :goto_9

    .line 588
    :goto_a
    iget-object v6, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 589
    .line 590
    if-nez v6, :cond_e

    .line 591
    .line 592
    const-string v6, "0.0"

    .line 593
    .line 594
    :cond_e
    move-object/from16 v35, v6

    .line 595
    .line 596
    new-instance v45, Ldh;

    .line 597
    .line 598
    move-object/from16 v36, v2

    .line 599
    .line 600
    move-object/from16 v33, v5

    .line 601
    .line 602
    move-object/from16 v30, v8

    .line 603
    .line 604
    move-object/from16 v31, v10

    .line 605
    .line 606
    move-object/from16 v28, v45

    .line 607
    .line 608
    invoke-direct/range {v28 .. v36}, Ldh;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lgw4;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 609
    .line 610
    .line 611
    move-object/from16 v8, v28

    .line 612
    .line 613
    move-object/from16 v2, v29

    .line 614
    .line 615
    move-object/from16 v5, v32

    .line 616
    .line 617
    move-object/from16 v7, v34

    .line 618
    .line 619
    move-object/from16 v6, v35

    .line 620
    .line 621
    const-string v10, "Installer package name is: "

    .line 622
    .line 623
    invoke-static {v10, v5}, Ldi0;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 624
    .line 625
    .line 626
    move-result-object v5

    .line 627
    const/4 v10, 0x2

    .line 628
    invoke-static {v4, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 629
    .line 630
    .line 631
    move-result v11

    .line 632
    if-eqz v11, :cond_f

    .line 633
    .line 634
    const/4 v14, 0x0

    .line 635
    invoke-static {v4, v5, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 636
    .line 637
    .line 638
    :cond_f
    new-instance v5, Lb21;

    .line 639
    .line 640
    const/4 v11, 0x6

    .line 641
    invoke-direct {v5, v11}, Lb21;-><init>(I)V

    .line 642
    .line 643
    .line 644
    invoke-virtual/range {v21 .. v21}, Lsn1;->d()Ljava/lang/String;

    .line 645
    .line 646
    .line 647
    move-result-object v11

    .line 648
    new-instance v13, Lls3;

    .line 649
    .line 650
    const/4 v14, 0x4

    .line 651
    invoke-direct {v13, v14}, Lls3;-><init>(I)V

    .line 652
    .line 653
    .line 654
    new-instance v14, Lra3;

    .line 655
    .line 656
    invoke-direct {v14, v10, v13}, Lra3;-><init>(ILjava/lang/Object;)V

    .line 657
    .line 658
    .line 659
    new-instance v10, Lwu4;

    .line 660
    .line 661
    invoke-direct {v10, v12}, Lwu4;-><init>(Lq51;)V

    .line 662
    .line 663
    .line 664
    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 665
    .line 666
    const-string v12, "https://firebase-settings.crashlytics.com/spi/v2/platforms/android/gmp/"

    .line 667
    .line 668
    move-object/from16 v17, v11

    .line 669
    .line 670
    const-string v11, "/settings"

    .line 671
    .line 672
    invoke-static {v12, v2, v11}, Ldi0;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 673
    .line 674
    .line 675
    move-result-object v11

    .line 676
    new-instance v12, Lbc5;

    .line 677
    .line 678
    invoke-direct {v12, v11, v5}, Lbc5;-><init>(Ljava/lang/String;Lb21;)V

    .line 679
    .line 680
    .line 681
    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 682
    .line 683
    sget-object v11, Lsn1;->h:Ljava/lang/String;

    .line 684
    .line 685
    move-object/from16 v29, v4

    .line 686
    .line 687
    const-string v4, ""

    .line 688
    .line 689
    invoke-virtual {v5, v11, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 690
    .line 691
    .line 692
    move-result-object v4

    .line 693
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 694
    .line 695
    move-object/from16 v42, v8

    .line 696
    .line 697
    const-string v8, ""

    .line 698
    .line 699
    invoke-virtual {v5, v11, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 700
    .line 701
    .line 702
    move-result-object v5

    .line 703
    new-instance v8, Ljava/lang/StringBuilder;

    .line 704
    .line 705
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 706
    .line 707
    .line 708
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 709
    .line 710
    .line 711
    const-string v4, "/"

    .line 712
    .line 713
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    .line 715
    .line 716
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    .line 718
    .line 719
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 720
    .line 721
    .line 722
    move-result-object v18

    .line 723
    sget-object v4, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 724
    .line 725
    const-string v5, ""

    .line 726
    .line 727
    invoke-virtual {v4, v11, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 728
    .line 729
    .line 730
    move-result-object v19

    .line 731
    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 732
    .line 733
    const-string v5, ""

    .line 734
    .line 735
    invoke-virtual {v4, v11, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 736
    .line 737
    .line 738
    move-result-object v20

    .line 739
    const-string v4, "com.google.firebase.crashlytics.mapping_file_id"

    .line 740
    .line 741
    const-string v5, "string"

    .line 742
    .line 743
    invoke-static {v3, v4, v5}, Lw80;->x(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    .line 745
    .line 746
    move-result v4

    .line 747
    if-nez v4, :cond_10

    .line 748
    .line 749
    const-string v4, "com.crashlytics.android.build_id"

    .line 750
    .line 751
    invoke-static {v3, v4, v5}, Lw80;->x(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    .line 753
    .line 754
    move-result v4

    .line 755
    :cond_10
    if-eqz v4, :cond_11

    .line 756
    .line 757
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 758
    .line 759
    .line 760
    move-result-object v5

    .line 761
    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 762
    .line 763
    .line 764
    move-result-object v4

    .line 765
    goto :goto_b

    .line 766
    :cond_11
    const/4 v4, 0x0

    .line 767
    :goto_b
    filled-new-array {v4, v2, v6, v7}, [Ljava/lang/String;

    .line 768
    .line 769
    .line 770
    move-result-object v4

    .line 771
    new-instance v5, Ljava/util/ArrayList;

    .line 772
    .line 773
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 774
    .line 775
    .line 776
    const/4 v8, 0x0

    .line 777
    :goto_c
    const/4 v11, 0x4

    .line 778
    if-ge v8, v11, :cond_13

    .line 779
    .line 780
    aget-object v11, v4, v8

    .line 781
    .line 782
    move-object/from16 v22, v2

    .line 783
    .line 784
    if-eqz v11, :cond_12

    .line 785
    .line 786
    const-string v2, "-"

    .line 787
    .line 788
    invoke-virtual {v11, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 789
    .line 790
    .line 791
    move-result-object v2

    .line 792
    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 793
    .line 794
    invoke-virtual {v2, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 795
    .line 796
    .line 797
    move-result-object v2

    .line 798
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 799
    .line 800
    .line 801
    :cond_12
    add-int/lit8 v8, v8, 0x1

    .line 802
    .line 803
    move-object/from16 v2, v22

    .line 804
    .line 805
    goto :goto_c

    .line 806
    :cond_13
    move-object/from16 v22, v2

    .line 807
    .line 808
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 809
    .line 810
    .line 811
    new-instance v2, Ljava/lang/StringBuilder;

    .line 812
    .line 813
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 814
    .line 815
    .line 816
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 817
    .line 818
    .line 819
    move-result v4

    .line 820
    const/4 v8, 0x0

    .line 821
    :goto_d
    if-ge v8, v4, :cond_14

    .line 822
    .line 823
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 824
    .line 825
    .line 826
    move-result-object v11

    .line 827
    add-int/lit8 v8, v8, 0x1

    .line 828
    .line 829
    check-cast v11, Ljava/lang/String;

    .line 830
    .line 831
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    .line 833
    .line 834
    goto :goto_d

    .line 835
    :cond_14
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 836
    .line 837
    .line 838
    move-result-object v2

    .line 839
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 840
    .line 841
    .line 842
    move-result v4

    .line 843
    if-lez v4, :cond_15

    .line 844
    .line 845
    invoke-static {v2}, Lw80;->V(Ljava/lang/String;)Ljava/lang/String;

    .line 846
    .line 847
    .line 848
    move-result-object v2

    .line 849
    move-object/from16 v53, v22

    .line 850
    .line 851
    move-object/from16 v22, v2

    .line 852
    .line 853
    move-object/from16 v2, v53

    .line 854
    .line 855
    goto :goto_e

    .line 856
    :cond_15
    move-object/from16 v2, v22

    .line 857
    .line 858
    const/16 v22, 0x0

    .line 859
    .line 860
    :goto_e
    const/4 v4, 0x1

    .line 861
    if-eqz v17, :cond_16

    .line 862
    .line 863
    const/16 v16, 0x4

    .line 864
    .line 865
    goto :goto_f

    .line 866
    :cond_16
    move/from16 v16, v4

    .line 867
    .line 868
    :goto_f
    invoke-static/range {v16 .. v16}, Ldi0;->j(I)I

    .line 869
    .line 870
    .line 871
    move-result v25

    .line 872
    new-instance v16, Ltk3;

    .line 873
    .line 874
    move-object/from16 v17, v2

    .line 875
    .line 876
    move-object/from16 v23, v6

    .line 877
    .line 878
    move-object/from16 v24, v7

    .line 879
    .line 880
    invoke-direct/range {v16 .. v25}, Ltk3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsn1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 881
    .line 882
    .line 883
    move-object/from16 v2, v16

    .line 884
    .line 885
    new-instance v5, Led0;

    .line 886
    .line 887
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 888
    .line 889
    .line 890
    new-instance v6, Ljava/util/concurrent/atomic/AtomicReference;

    .line 891
    .line 892
    invoke-direct {v6}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 893
    .line 894
    .line 895
    iput-object v6, v5, Led0;->h:Ljava/lang/Object;

    .line 896
    .line 897
    new-instance v7, Ljava/util/concurrent/atomic/AtomicReference;

    .line 898
    .line 899
    new-instance v8, Lpw3;

    .line 900
    .line 901
    invoke-direct {v8}, Lpw3;-><init>()V

    .line 902
    .line 903
    .line 904
    invoke-direct {v7, v8}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 905
    .line 906
    .line 907
    iput-object v7, v5, Led0;->i:Ljava/lang/Object;

    .line 908
    .line 909
    iput-object v3, v5, Led0;->a:Ljava/lang/Object;

    .line 910
    .line 911
    iput-object v2, v5, Led0;->b:Ljava/lang/Object;

    .line 912
    .line 913
    iput-object v13, v5, Led0;->d:Ljava/lang/Object;

    .line 914
    .line 915
    iput-object v14, v5, Led0;->c:Ljava/lang/Object;

    .line 916
    .line 917
    iput-object v10, v5, Led0;->e:Ljava/lang/Object;

    .line 918
    .line 919
    iput-object v12, v5, Led0;->f:Ljava/lang/Object;

    .line 920
    .line 921
    iput-object v9, v5, Led0;->g:Ljava/lang/Object;

    .line 922
    .line 923
    invoke-static {v13}, Lqv3;->n(Lls3;)Lmk3;

    .line 924
    .line 925
    .line 926
    move-result-object v2

    .line 927
    invoke-virtual {v6, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 928
    .line 929
    .line 930
    iget-object v2, v5, Led0;->i:Ljava/lang/Object;

    .line 931
    .line 932
    check-cast v2, Ljava/util/concurrent/atomic/AtomicReference;

    .line 933
    .line 934
    iget-object v3, v5, Led0;->h:Ljava/lang/Object;

    .line 935
    .line 936
    check-cast v3, Ljava/util/concurrent/atomic/AtomicReference;

    .line 937
    .line 938
    iget-object v6, v5, Led0;->a:Ljava/lang/Object;

    .line 939
    .line 940
    check-cast v6, Landroid/content/Context;

    .line 941
    .line 942
    const-string v7, "com.google.firebase.crashlytics"

    .line 943
    .line 944
    const/4 v8, 0x0

    .line 945
    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 946
    .line 947
    .line 948
    move-result-object v6

    .line 949
    const-string v7, "existing_instance_identifier"

    .line 950
    .line 951
    invoke-interface {v6, v7, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 952
    .line 953
    .line 954
    move-result-object v1

    .line 955
    iget-object v6, v5, Led0;->b:Ljava/lang/Object;

    .line 956
    .line 957
    check-cast v6, Ltk3;

    .line 958
    .line 959
    iget-object v6, v6, Ltk3;->f:Ljava/lang/String;

    .line 960
    .line 961
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 962
    .line 963
    .line 964
    move-result v1

    .line 965
    if-eqz v1, :cond_17

    .line 966
    .line 967
    invoke-virtual {v5, v4}, Led0;->d(I)Lmk3;

    .line 968
    .line 969
    .line 970
    move-result-object v1

    .line 971
    if-eqz v1, :cond_17

    .line 972
    .line 973
    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 974
    .line 975
    .line 976
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 977
    .line 978
    .line 979
    move-result-object v2

    .line 980
    check-cast v2, Lpw3;

    .line 981
    .line 982
    invoke-virtual {v2, v1}, Lpw3;->d(Ljava/lang/Object;)V

    .line 983
    .line 984
    .line 985
    const/4 v14, 0x0

    .line 986
    invoke-static {v14}, Lmt1;->t(Ljava/lang/Object;)Lef5;

    .line 987
    .line 988
    .line 989
    move-result-object v1

    .line 990
    goto :goto_10

    .line 991
    :cond_17
    const/4 v6, 0x3

    .line 992
    invoke-virtual {v5, v6}, Led0;->d(I)Lmk3;

    .line 993
    .line 994
    .line 995
    move-result-object v1

    .line 996
    if-eqz v1, :cond_18

    .line 997
    .line 998
    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 999
    .line 1000
    .line 1001
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 1002
    .line 1003
    .line 1004
    move-result-object v2

    .line 1005
    check-cast v2, Lpw3;

    .line 1006
    .line 1007
    invoke-virtual {v2, v1}, Lpw3;->d(Ljava/lang/Object;)V

    .line 1008
    .line 1009
    .line 1010
    :cond_18
    iget-object v1, v5, Led0;->g:Ljava/lang/Object;

    .line 1011
    .line 1012
    check-cast v1, Lbm0;

    .line 1013
    .line 1014
    iget-object v2, v1, Lbm0;->f:Lpw3;

    .line 1015
    .line 1016
    iget-object v2, v2, Lpw3;->a:Lef5;

    .line 1017
    .line 1018
    iget-object v3, v1, Lbm0;->b:Ljava/lang/Object;

    .line 1019
    .line 1020
    monitor-enter v3

    .line 1021
    :try_start_1
    iget-object v1, v1, Lbm0;->c:Lpw3;

    .line 1022
    .line 1023
    iget-object v1, v1, Lpw3;->a:Lef5;

    .line 1024
    .line 1025
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1026
    invoke-static {v2, v1}, Ln44;->G0(Low3;Low3;)Lef5;

    .line 1027
    .line 1028
    .line 1029
    move-result-object v1

    .line 1030
    iget-object v2, v15, Leh;->o:Ljava/lang/Object;

    .line 1031
    .line 1032
    check-cast v2, Lqk0;

    .line 1033
    .line 1034
    new-instance v3, Lxh1;

    .line 1035
    .line 1036
    const/4 v7, 0x0

    .line 1037
    invoke-direct {v3, v5, v15, v7}, Lxh1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 1038
    .line 1039
    .line 1040
    invoke-virtual {v1, v2, v3}, Lef5;->l(Ljava/util/concurrent/Executor;Lwt3;)Lef5;

    .line 1041
    .line 1042
    .line 1043
    move-result-object v1

    .line 1044
    :goto_10
    new-instance v2, Lmk0;

    .line 1045
    .line 1046
    const/16 v3, 0x1d

    .line 1047
    .line 1048
    invoke-direct {v2, v3}, Lmk0;-><init>(I)V

    .line 1049
    .line 1050
    .line 1051
    invoke-virtual {v1, v0, v2}, Lef5;->b(Ljava/util/concurrent/Executor;Lbp2;)Lef5;

    .line 1052
    .line 1053
    .line 1054
    move-object/from16 v1, v38

    .line 1055
    .line 1056
    iget-object v0, v1, Lij0;->i:Lq51;

    .line 1057
    .line 1058
    const-string v2, "The Crashlytics build ID is missing. This occurs when the Crashlytics Gradle plugin is missing from your app\'s build configuration. Please review the Firebase Crashlytics onboarding instructions at https://firebase.google.com/docs/crashlytics/get-started?platform=android#add-plugin"

    .line 1059
    .line 1060
    iget-object v3, v1, Lij0;->a:Landroid/content/Context;

    .line 1061
    .line 1062
    const-string v6, "com.crashlytics.RequireBuildId"

    .line 1063
    .line 1064
    if-eqz v3, :cond_1a

    .line 1065
    .line 1066
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1067
    .line 1068
    .line 1069
    move-result-object v7

    .line 1070
    if-eqz v7, :cond_1a

    .line 1071
    .line 1072
    const-string v8, "bool"

    .line 1073
    .line 1074
    invoke-static {v3, v6, v8}, Lw80;->x(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    .line 1076
    .line 1077
    move-result v8

    .line 1078
    if-lez v8, :cond_19

    .line 1079
    .line 1080
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 1081
    .line 1082
    .line 1083
    move-result v6

    .line 1084
    :goto_11
    move-object/from16 v8, v42

    .line 1085
    .line 1086
    goto :goto_12

    .line 1087
    :cond_19
    const-string v7, "string"

    .line 1088
    .line 1089
    invoke-static {v3, v6, v7}, Lw80;->x(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    .line 1091
    .line 1092
    move-result v6

    .line 1093
    if-lez v6, :cond_1a

    .line 1094
    .line 1095
    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1096
    .line 1097
    .line 1098
    move-result-object v6

    .line 1099
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 1100
    .line 1101
    .line 1102
    move-result v6

    .line 1103
    goto :goto_11

    .line 1104
    :cond_1a
    move v6, v4

    .line 1105
    goto :goto_11

    .line 1106
    :goto_12
    iget-object v7, v8, Ldh;->b:Ljava/lang/Object;

    .line 1107
    .line 1108
    check-cast v7, Ljava/lang/String;

    .line 1109
    .line 1110
    const-string v9, "."

    .line 1111
    .line 1112
    const-string v10, ".     |  |"

    .line 1113
    .line 1114
    if-nez v6, :cond_1b

    .line 1115
    .line 1116
    const-string v2, "Configured not to require a build ID."

    .line 1117
    .line 1118
    move-object/from16 v6, v29

    .line 1119
    .line 1120
    const/4 v7, 0x2

    .line 1121
    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 1122
    .line 1123
    .line 1124
    move-result v7

    .line 1125
    if-eqz v7, :cond_1c

    .line 1126
    .line 1127
    const/4 v14, 0x0

    .line 1128
    invoke-static {v6, v2, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1129
    .line 1130
    .line 1131
    goto :goto_13

    .line 1132
    :cond_1b
    move-object/from16 v6, v29

    .line 1133
    .line 1134
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1135
    .line 1136
    .line 1137
    move-result v7

    .line 1138
    if-nez v7, :cond_21

    .line 1139
    .line 1140
    :cond_1c
    :goto_13
    new-instance v2, Li00;

    .line 1141
    .line 1142
    invoke-direct {v2}, Li00;-><init>()V

    .line 1143
    .line 1144
    .line 1145
    iget-object v2, v2, Li00;->a:Ljava/lang/String;

    .line 1146
    .line 1147
    :try_start_2
    new-instance v7, Lgw4;

    .line 1148
    .line 1149
    const-string v9, "crash_marker"

    .line 1150
    .line 1151
    const/16 v10, 0x10

    .line 1152
    .line 1153
    invoke-direct {v7, v10, v9, v0}, Lgw4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1154
    .line 1155
    .line 1156
    iput-object v7, v1, Lij0;->f:Lgw4;

    .line 1157
    .line 1158
    new-instance v7, Lgw4;

    .line 1159
    .line 1160
    const-string v9, "initialization_marker"

    .line 1161
    .line 1162
    invoke-direct {v7, v10, v9, v0}, Lgw4;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1163
    .line 1164
    .line 1165
    iput-object v7, v1, Lij0;->e:Lgw4;

    .line 1166
    .line 1167
    new-instance v7, Lq51;

    .line 1168
    .line 1169
    move-object/from16 v9, v37

    .line 1170
    .line 1171
    invoke-direct {v7, v2, v0, v9}, Lq51;-><init>(Ljava/lang/String;Lq51;Leh;)V

    .line 1172
    .line 1173
    .line 1174
    new-instance v10, Lgw4;

    .line 1175
    .line 1176
    invoke-direct {v10, v0}, Lgw4;-><init>(Lq51;)V

    .line 1177
    .line 1178
    .line 1179
    new-instance v0, Lxh1;

    .line 1180
    .line 1181
    new-instance v11, Lqz0;

    .line 1182
    .line 1183
    const/16 v12, 0x18

    .line 1184
    .line 1185
    invoke-direct {v11, v12}, Lqz0;-><init>(I)V

    .line 1186
    .line 1187
    .line 1188
    new-array v12, v4, [Lhr3;

    .line 1189
    .line 1190
    const/4 v13, 0x0

    .line 1191
    aput-object v11, v12, v13

    .line 1192
    .line 1193
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 1194
    .line 1195
    .line 1196
    iput-object v12, v0, Lxh1;->n:Ljava/lang/Object;

    .line 1197
    .line 1198
    new-instance v11, Lqz0;

    .line 1199
    .line 1200
    const/16 v12, 0xd

    .line 1201
    .line 1202
    invoke-direct {v11, v12}, Lqz0;-><init>(I)V

    .line 1203
    .line 1204
    .line 1205
    iput-object v11, v0, Lxh1;->o:Ljava/lang/Object;

    .line 1206
    .line 1207
    iget-object v11, v1, Lij0;->n:Ldh1;

    .line 1208
    .line 1209
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1210
    .line 1211
    .line 1212
    new-instance v12, Lkj0;

    .line 1213
    .line 1214
    invoke-direct {v12, v7}, Lkj0;-><init>(Lq51;)V

    .line 1215
    .line 1216
    .line 1217
    iget-object v11, v11, Ldh1;->n:Ljava/lang/Object;

    .line 1218
    .line 1219
    check-cast v11, Ldr2;

    .line 1220
    .line 1221
    new-instance v13, Lr6;

    .line 1222
    .line 1223
    const/16 v14, 0xe

    .line 1224
    .line 1225
    invoke-direct {v13, v14, v12}, Lr6;-><init>(ILjava/lang/Object;)V

    .line 1226
    .line 1227
    .line 1228
    invoke-virtual {v11, v13}, Ldr2;->a(Lxq0;)V

    .line 1229
    .line 1230
    .line 1231
    iget-object v11, v1, Lij0;->a:Landroid/content/Context;

    .line 1232
    .line 1233
    iget-object v12, v1, Lij0;->h:Lsn1;

    .line 1234
    .line 1235
    iget-object v13, v1, Lij0;->i:Lq51;

    .line 1236
    .line 1237
    iget-object v14, v1, Lij0;->c:Lxh1;

    .line 1238
    .line 1239
    iget-object v15, v1, Lij0;->l:Laj0;

    .line 1240
    .line 1241
    iget-object v4, v1, Lij0;->o:Leh;

    .line 1242
    .line 1243
    move-object/from16 v45, v0

    .line 1244
    .line 1245
    move-object/from16 v49, v4

    .line 1246
    .line 1247
    move-object/from16 v46, v5

    .line 1248
    .line 1249
    move-object/from16 v44, v7

    .line 1250
    .line 1251
    move-object/from16 v42, v8

    .line 1252
    .line 1253
    move-object/from16 v43, v10

    .line 1254
    .line 1255
    move-object/from16 v39, v11

    .line 1256
    .line 1257
    move-object/from16 v40, v12

    .line 1258
    .line 1259
    move-object/from16 v41, v13

    .line 1260
    .line 1261
    move-object/from16 v47, v14

    .line 1262
    .line 1263
    move-object/from16 v48, v15

    .line 1264
    .line 1265
    invoke-static/range {v39 .. v49}, Lga0;->i(Landroid/content/Context;Lsn1;Lq51;Ldh;Lgw4;Lq51;Lxh1;Led0;Lxh1;Laj0;Leh;)Lga0;

    .line 1266
    .line 1267
    .line 1268
    move-result-object v48

    .line 1269
    move-object/from16 v8, v42

    .line 1270
    .line 1271
    move-object/from16 v47, v43

    .line 1272
    .line 1273
    move-object/from16 v0, v46

    .line 1274
    .line 1275
    move-object/from16 v46, v44

    .line 1276
    .line 1277
    new-instance v39, Ldj0;

    .line 1278
    .line 1279
    iget-object v4, v1, Lij0;->a:Landroid/content/Context;

    .line 1280
    .line 1281
    iget-object v5, v1, Lij0;->h:Lsn1;

    .line 1282
    .line 1283
    iget-object v7, v1, Lij0;->b:Lbm0;

    .line 1284
    .line 1285
    iget-object v10, v1, Lij0;->i:Lq51;

    .line 1286
    .line 1287
    iget-object v11, v1, Lij0;->f:Lgw4;

    .line 1288
    .line 1289
    iget-object v12, v1, Lij0;->m:Ljj0;

    .line 1290
    .line 1291
    iget-object v13, v1, Lij0;->k:Li8;

    .line 1292
    .line 1293
    iget-object v14, v1, Lij0;->l:Laj0;

    .line 1294
    .line 1295
    iget-object v15, v1, Lij0;->o:Leh;

    .line 1296
    .line 1297
    move-object/from16 v40, v4

    .line 1298
    .line 1299
    move-object/from16 v41, v5

    .line 1300
    .line 1301
    move-object/from16 v42, v7

    .line 1302
    .line 1303
    move-object/from16 v45, v8

    .line 1304
    .line 1305
    move-object/from16 v43, v10

    .line 1306
    .line 1307
    move-object/from16 v44, v11

    .line 1308
    .line 1309
    move-object/from16 v49, v12

    .line 1310
    .line 1311
    move-object/from16 v50, v13

    .line 1312
    .line 1313
    move-object/from16 v51, v14

    .line 1314
    .line 1315
    move-object/from16 v52, v15

    .line 1316
    .line 1317
    invoke-direct/range {v39 .. v52}, Ldj0;-><init>(Landroid/content/Context;Lsn1;Lbm0;Lq51;Lgw4;Ldh;Lq51;Lgw4;Lga0;Ljj0;Lk8;Laj0;Leh;)V

    .line 1318
    .line 1319
    .line 1320
    move-object/from16 v4, v39

    .line 1321
    .line 1322
    iput-object v4, v1, Lij0;->g:Ldj0;

    .line 1323
    .line 1324
    iget-object v4, v1, Lij0;->e:Lgw4;

    .line 1325
    .line 1326
    iget-object v5, v4, Lgw4;->p:Ljava/lang/Object;

    .line 1327
    .line 1328
    check-cast v5, Lq51;

    .line 1329
    .line 1330
    iget-object v4, v4, Lgw4;->o:Ljava/lang/Object;

    .line 1331
    .line 1332
    check-cast v4, Ljava/lang/String;

    .line 1333
    .line 1334
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1335
    .line 1336
    .line 1337
    new-instance v7, Ljava/io/File;

    .line 1338
    .line 1339
    iget-object v5, v5, Lq51;->c:Ljava/lang/Object;

    .line 1340
    .line 1341
    check-cast v5, Ljava/io/File;

    .line 1342
    .line 1343
    invoke-direct {v7, v5, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1344
    .line 1345
    .line 1346
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    .line 1347
    .line 1348
    .line 1349
    move-result v4

    .line 1350
    iget-object v5, v9, Leh;->o:Ljava/lang/Object;

    .line 1351
    .line 1352
    check-cast v5, Lqk0;

    .line 1353
    .line 1354
    iget-object v5, v5, Lqk0;->n:Ljava/util/concurrent/ExecutorService;

    .line 1355
    .line 1356
    new-instance v7, Lvc0;

    .line 1357
    .line 1358
    const/4 v8, 0x1

    .line 1359
    invoke-direct {v7, v8, v1}, Lvc0;-><init>(ILjava/lang/Object;)V

    .line 1360
    .line 1361
    .line 1362
    invoke-interface {v5, v7}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 1363
    .line 1364
    .line 1365
    move-result-object v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1366
    :try_start_3
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1367
    .line 1368
    const-wide/16 v10, 0x3

    .line 1369
    .line 1370
    invoke-interface {v5, v10, v11, v7}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 1371
    .line 1372
    .line 1373
    move-result-object v5

    .line 1374
    check-cast v5, Ljava/lang/Boolean;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1375
    .line 1376
    :try_start_4
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1377
    .line 1378
    invoke-virtual {v7, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 1379
    .line 1380
    .line 1381
    :catch_0
    iget-object v5, v1, Lij0;->g:Ldj0;

    .line 1382
    .line 1383
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 1384
    .line 1385
    .line 1386
    move-result-object v7

    .line 1387
    iget-object v8, v5, Ldj0;->e:Leh;

    .line 1388
    .line 1389
    iget-object v8, v8, Leh;->o:Ljava/lang/Object;

    .line 1390
    .line 1391
    check-cast v8, Lqk0;

    .line 1392
    .line 1393
    new-instance v10, Lh7;

    .line 1394
    .line 1395
    const/16 v11, 0x9

    .line 1396
    .line 1397
    invoke-direct {v10, v11, v5, v2}, Lh7;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1398
    .line 1399
    .line 1400
    invoke-virtual {v8, v10}, Lqk0;->a(Ljava/lang/Runnable;)Lef5;

    .line 1401
    .line 1402
    .line 1403
    new-instance v2, Lwu4;

    .line 1404
    .line 1405
    const/16 v8, 0x11

    .line 1406
    .line 1407
    invoke-direct {v2, v8, v5}, Lwu4;-><init>(ILjava/lang/Object;)V

    .line 1408
    .line 1409
    .line 1410
    new-instance v8, Lpk0;

    .line 1411
    .line 1412
    iget-object v10, v5, Ldj0;->j:Ljj0;

    .line 1413
    .line 1414
    invoke-direct {v8, v2, v0, v7, v10}, Lpk0;-><init>(Lwu4;Led0;Ljava/lang/Thread$UncaughtExceptionHandler;Ljj0;)V

    .line 1415
    .line 1416
    .line 1417
    iput-object v8, v5, Ldj0;->n:Lpk0;

    .line 1418
    .line 1419
    invoke-static {v8}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 1420
    .line 1421
    .line 1422
    if-eqz v4, :cond_1f

    .line 1423
    .line 1424
    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    .line 1425
    .line 1426
    invoke-virtual {v3, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 1427
    .line 1428
    .line 1429
    move-result v2

    .line 1430
    if-nez v2, :cond_1d

    .line 1431
    .line 1432
    const-string v2, "connectivity"

    .line 1433
    .line 1434
    invoke-virtual {v3, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 1435
    .line 1436
    .line 1437
    move-result-object v2

    .line 1438
    check-cast v2, Landroid/net/ConnectivityManager;

    .line 1439
    .line 1440
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 1441
    .line 1442
    .line 1443
    move-result-object v2

    .line 1444
    if-eqz v2, :cond_1f

    .line 1445
    .line 1446
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    .line 1447
    .line 1448
    .line 1449
    move-result v2

    .line 1450
    if-eqz v2, :cond_1f

    .line 1451
    .line 1452
    :cond_1d
    const-string v2, "Crashlytics did not finish previous background initialization. Initializing synchronously."

    .line 1453
    .line 1454
    const/4 v5, 0x3

    .line 1455
    invoke-static {v6, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 1456
    .line 1457
    .line 1458
    move-result v3

    .line 1459
    if-eqz v3, :cond_1e

    .line 1460
    .line 1461
    const/4 v14, 0x0

    .line 1462
    invoke-static {v6, v2, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1463
    .line 1464
    .line 1465
    :cond_1e
    invoke-virtual {v1, v0}, Lij0;->b(Led0;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 1466
    .line 1467
    .line 1468
    goto :goto_15

    .line 1469
    :catch_1
    move-exception v0

    .line 1470
    goto :goto_14

    .line 1471
    :cond_1f
    const-string v2, "Successfully configured exception handler."

    .line 1472
    .line 1473
    const/4 v5, 0x3

    .line 1474
    invoke-static {v6, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 1475
    .line 1476
    .line 1477
    move-result v3

    .line 1478
    if-eqz v3, :cond_20

    .line 1479
    .line 1480
    const/4 v14, 0x0

    .line 1481
    invoke-static {v6, v2, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1482
    .line 1483
    .line 1484
    :cond_20
    iget-object v2, v9, Leh;->o:Ljava/lang/Object;

    .line 1485
    .line 1486
    check-cast v2, Lqk0;

    .line 1487
    .line 1488
    new-instance v3, Lej0;

    .line 1489
    .line 1490
    const/4 v7, 0x0

    .line 1491
    invoke-direct {v3, v1, v0, v7}, Lej0;-><init>(Lij0;Led0;I)V

    .line 1492
    .line 1493
    .line 1494
    invoke-virtual {v2, v3}, Lqk0;->a(Ljava/lang/Runnable;)Lef5;

    .line 1495
    .line 1496
    .line 1497
    goto :goto_15

    .line 1498
    :goto_14
    const-string v2, "Crashlytics was not started due to an exception during initialization"

    .line 1499
    .line 1500
    invoke-static {v6, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1501
    .line 1502
    .line 1503
    const/4 v14, 0x0

    .line 1504
    iput-object v14, v1, Lij0;->g:Ldj0;

    .line 1505
    .line 1506
    :goto_15
    new-instance v15, Lf61;

    .line 1507
    .line 1508
    invoke-direct {v15, v1}, Lf61;-><init>(Lij0;)V

    .line 1509
    .line 1510
    .line 1511
    goto :goto_16

    .line 1512
    :cond_21
    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    .line 1514
    .line 1515
    const-string v0, ".     |  | "

    .line 1516
    .line 1517
    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    .line 1519
    .line 1520
    invoke-static {v6, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    .line 1522
    .line 1523
    invoke-static {v6, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    .line 1525
    .line 1526
    const-string v0, ".   \\ |  | /"

    .line 1527
    .line 1528
    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    .line 1530
    .line 1531
    const-string v0, ".    \\    /"

    .line 1532
    .line 1533
    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    .line 1535
    .line 1536
    const-string v0, ".     \\  /"

    .line 1537
    .line 1538
    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    .line 1540
    .line 1541
    const-string v0, ".      \\/"

    .line 1542
    .line 1543
    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    .line 1545
    .line 1546
    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    .line 1548
    .line 1549
    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    .line 1551
    .line 1552
    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    .line 1554
    .line 1555
    const-string v0, ".      /\\"

    .line 1556
    .line 1557
    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    .line 1559
    .line 1560
    const-string v0, ".     /  \\"

    .line 1561
    .line 1562
    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    .line 1564
    .line 1565
    const-string v0, ".    /    \\"

    .line 1566
    .line 1567
    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    .line 1569
    .line 1570
    const-string v0, ".   / |  | \\"

    .line 1571
    .line 1572
    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    .line 1574
    .line 1575
    invoke-static {v6, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    .line 1577
    .line 1578
    invoke-static {v6, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    .line 1580
    .line 1581
    invoke-static {v6, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    .line 1583
    .line 1584
    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    .line 1586
    .line 1587
    invoke-static {v2}, Lk21;->n(Ljava/lang/String;)V

    .line 1588
    .line 1589
    .line 1590
    const/4 v14, 0x0

    .line 1591
    return-object v14

    .line 1592
    :catchall_0
    move-exception v0

    .line 1593
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1594
    throw v0

    .line 1595
    :catch_2
    move-exception v0

    .line 1596
    move-object v6, v4

    .line 1597
    const-string v1, "Error retrieving app package info."

    .line 1598
    .line 1599
    invoke-static {v6, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1600
    .line 1601
    .line 1602
    const/4 v15, 0x0

    .line 1603
    :goto_16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1604
    .line 1605
    .line 1606
    move-result-wide v0

    .line 1607
    sub-long v0, v0, v26

    .line 1608
    .line 1609
    const-wide/16 v2, 0x10

    .line 1610
    .line 1611
    cmp-long v2, v0, v2

    .line 1612
    .line 1613
    if-lez v2, :cond_22

    .line 1614
    .line 1615
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1616
    .line 1617
    const-string v3, "Initializing Crashlytics blocked main for "

    .line 1618
    .line 1619
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1620
    .line 1621
    .line 1622
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1623
    .line 1624
    .line 1625
    const-string v0, " ms"

    .line 1626
    .line 1627
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1628
    .line 1629
    .line 1630
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1631
    .line 1632
    .line 1633
    move-result-object v0

    .line 1634
    const/4 v5, 0x3

    .line 1635
    invoke-static {v6, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 1636
    .line 1637
    .line 1638
    move-result v1

    .line 1639
    if-eqz v1, :cond_22

    .line 1640
    .line 1641
    const/4 v14, 0x0

    .line 1642
    invoke-static {v6, v0, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1643
    .line 1644
    .line 1645
    :cond_22
    return-object v15
.end method

.method public onComplete(Low3;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lr6;->o:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lxr;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    sget-object v0, Lez3;->a:Lra3;

    .line 9
    .line 10
    invoke-virtual {p1}, Low3;->j()Z

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    new-array p1, p1, [Ljava/lang/Object;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Lra3;->h([Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    sget-object p1, Lzu0;->a:Lzp0;

    .line 23
    .line 24
    sget-object p1, Llp0;->p:Llp0;

    .line 25
    .line 26
    invoke-static {p1}, Ldm0;->c(Lhi0;)Lbh0;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    new-instance v0, Lsr;

    .line 31
    .line 32
    const/4 v1, 0x1

    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-direct {v0, p0, v2, v1}, Lsr;-><init>(Lxr;Ldh0;I)V

    .line 35
    .line 36
    .line 37
    const/4 p0, 0x3

    .line 38
    invoke-static {p1, v2, v2, v0, p0}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public p(Lpv1;)Lmu3;
    .locals 6

    .line 1
    iget-object p0, p0, Lr6;->o:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v1, p0

    .line 4
    check-cast v1, Landroid/content/Context;

    .line 5
    .line 6
    iget-object v2, p1, Lpv1;->b:Ljava/lang/String;

    .line 7
    .line 8
    iget-object p0, p1, Lpv1;->f:Ljava/lang/Object;

    .line 9
    .line 10
    move-object v3, p0

    .line 11
    check-cast v3, Ld90;

    .line 12
    .line 13
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    new-instance v0, Lje1;

    .line 25
    .line 26
    const/4 v4, 0x1

    .line 27
    move v5, v4

    .line 28
    invoke-direct/range {v0 .. v5}, Lje1;-><init>(Landroid/content/Context;Ljava/lang/String;Ld90;ZZ)V

    .line 29
    .line 30
    .line 31
    return-object v0

    .line 32
    :cond_0
    const-string p0, "Must set a non-null database name to a configuration that uses the no backup directory."

    .line 33
    .line 34
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const/4 p0, 0x0

    .line 38
    return-object p0
.end method

.method public then(Low3;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget p1, p0, Lr6;->n:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iget-object p0, p0, Lr6;->o:Ljava/lang/Object;

    .line 5
    .line 6
    packed-switch p1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p0, Ljava/util/concurrent/CountDownLatch;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 12
    .line 13
    .line 14
    return-object v0

    .line 15
    :pswitch_0
    check-cast p0, Ljava/lang/Runnable;

    .line 16
    .line 17
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lmt1;->t(Ljava/lang/Object;)Lef5;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :pswitch_1
    check-cast p0, Ljava/util/concurrent/Callable;

    .line 26
    .line 27
    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Low3;

    .line 32
    .line 33
    return-object p0

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public then(Ljava/lang/Object;)Low3;
    .locals 0

    iget-object p0, p0, Lr6;->o:Ljava/lang/Object;

    check-cast p0, Ldd0;

    check-cast p1, Lad0;

    .line 35
    invoke-static {p0}, Lmt1;->t(Ljava/lang/Object;)Lef5;

    move-result-object p0

    return-object p0
.end method
