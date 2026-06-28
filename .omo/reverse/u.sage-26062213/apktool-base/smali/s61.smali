.class public final Ls61;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:La61;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Lyc0;

.field public final d:Lyc0;

.field public final e:Lyc0;

.field public final f:Led0;

.field public final g:Lfd0;

.field public final h:Ljd0;

.field public final i:Lgw4;

.field public final j:Lqd1;


# direct methods
.method public constructor <init>(La61;Ljava/util/concurrent/Executor;Lyc0;Lyc0;Lyc0;Led0;Lfd0;Ljd0;Lgw4;Lqd1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ls61;->a:La61;

    .line 5
    .line 6
    iput-object p2, p0, Ls61;->b:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    iput-object p3, p0, Ls61;->c:Lyc0;

    .line 9
    .line 10
    iput-object p4, p0, Ls61;->d:Lyc0;

    .line 11
    .line 12
    iput-object p5, p0, Ls61;->e:Lyc0;

    .line 13
    .line 14
    iput-object p6, p0, Ls61;->f:Led0;

    .line 15
    .line 16
    iput-object p7, p0, Ls61;->g:Lfd0;

    .line 17
    .line 18
    iput-object p8, p0, Ls61;->h:Ljd0;

    .line 19
    .line 20
    iput-object p9, p0, Ls61;->i:Lgw4;

    .line 21
    .line 22
    iput-object p10, p0, Ls61;->j:Lqd1;

    .line 23
    .line 24
    return-void
.end method

.method public static f(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_1

    .line 12
    .line 13
    new-instance v2, Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    if-eqz v5, :cond_0

    .line 31
    .line 32
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    check-cast v5, Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    add-int/lit8 v1, v1, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    return-object v0
.end method


# virtual methods
.method public final a()Lef5;
    .locals 5

    .line 1
    iget-object v0, p0, Ls61;->c:Lyc0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lyc0;->b()Low3;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Ls61;->d:Lyc0;

    .line 8
    .line 9
    invoke-virtual {v1}, Lyc0;->b()Low3;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    filled-new-array {v0, v1}, [Low3;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-static {v2}, Lmt1;->Z([Low3;)Lef5;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    new-instance v3, Lgd0;

    .line 22
    .line 23
    const/4 v4, 0x3

    .line 24
    invoke-direct {v3, p0, v0, v1, v4}, Lgd0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 25
    .line 26
    .line 27
    iget-object p0, p0, Ls61;->b:Ljava/util/concurrent/Executor;

    .line 28
    .line 29
    invoke-virtual {v2, p0, v3}, Lef5;->e(Ljava/util/concurrent/Executor;Leh0;)Lef5;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method

.method public final b(Lur;)V
    .locals 1

    .line 1
    iget-object p0, p0, Ls61;->i:Lgw4;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lgw4;->o:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Ljava/util/LinkedHashSet;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lgw4;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    throw p1
.end method

.method public final c()Lef5;
    .locals 7

    .line 1
    iget-object v0, p0, Ls61;->f:Led0;

    .line 2
    .line 3
    iget-object v1, v0, Led0;->h:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Ljd0;

    .line 6
    .line 7
    iget-object v1, v1, Ljd0;->a:Landroid/content/SharedPreferences;

    .line 8
    .line 9
    const-string v2, "minimum_fetch_interval_in_seconds"

    .line 10
    .line 11
    const-wide/32 v3, 0xa8c0

    .line 12
    .line 13
    .line 14
    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    new-instance v3, Ljava/util/HashMap;

    .line 19
    .line 20
    iget-object v4, v0, Led0;->i:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v4, Ljava/util/Map;

    .line 23
    .line 24
    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 25
    .line 26
    .line 27
    const-string v4, "X-Firebase-RC-Fetch-Type"

    .line 28
    .line 29
    const-string v5, "BASE/1"

    .line 30
    .line 31
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    iget-object v4, v0, Led0;->f:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v4, Lyc0;

    .line 37
    .line 38
    invoke-virtual {v4}, Lyc0;->b()Low3;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    iget-object v5, v0, Led0;->c:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v5, Ljava/util/concurrent/Executor;

    .line 45
    .line 46
    new-instance v6, Lcd0;

    .line 47
    .line 48
    invoke-direct {v6, v0, v1, v2, v3}, Lcd0;-><init>(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4, v5, v6}, Low3;->e(Ljava/util/concurrent/Executor;Leh0;)Lef5;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    new-instance v1, Lp61;

    .line 56
    .line 57
    const/4 v2, 0x2

    .line 58
    invoke-direct {v1, v2}, Lp61;-><init>(I)V

    .line 59
    .line 60
    .line 61
    sget-object v2, Li61;->n:Li61;

    .line 62
    .line 63
    invoke-virtual {v0, v2, v1}, Lef5;->l(Ljava/util/concurrent/Executor;Lwt3;)Lef5;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    new-instance v1, Lr61;

    .line 68
    .line 69
    invoke-direct {v1, p0}, Lr61;-><init>(Ls61;)V

    .line 70
    .line 71
    .line 72
    iget-object p0, p0, Ls61;->b:Ljava/util/concurrent/Executor;

    .line 73
    .line 74
    invoke-virtual {v0, p0, v1}, Lef5;->l(Ljava/util/concurrent/Executor;Lwt3;)Lef5;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    return-object p0
.end method

.method public final d(Z)V
    .locals 4

    .line 1
    iget-object p0, p0, Ls61;->i:Lgw4;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lgw4;->p:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Lhd0;

    .line 7
    .line 8
    iget-object v1, v0, Lhd0;->r:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    :try_start_1
    iput-boolean p1, v0, Lhd0;->e:Z

    .line 12
    .line 13
    iget-object v2, v0, Lhd0;->g:Luc0;

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    iput-boolean p1, v2, Luc0;->j:Z

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    goto :goto_2

    .line 22
    :cond_0
    :goto_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 23
    .line 24
    const/16 v3, 0x1a

    .line 25
    .line 26
    if-lt v2, v3, :cond_1

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    iget-object v0, v0, Lhd0;->f:Ljava/net/HttpURLConnection;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 35
    .line 36
    .line 37
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    if-nez p1, :cond_2

    .line 39
    .line 40
    :try_start_2
    invoke-virtual {p0}, Lgw4;->e()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :catchall_1
    move-exception p1

    .line 45
    goto :goto_3

    .line 46
    :cond_2
    :goto_1
    monitor-exit p0

    .line 47
    return-void

    .line 48
    :goto_2
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 49
    :try_start_4
    throw p1

    .line 50
    :goto_3
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 51
    throw p1
.end method

.method public final e(Ljava/util/LinkedHashMap;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Ljava/util/Map$Entry;

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    instance-of v3, v2, [B

    .line 31
    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Ljava/lang/String;

    .line 39
    .line 40
    new-instance v3, Ljava/lang/String;

    .line 41
    .line 42
    check-cast v2, [B

    .line 43
    .line 44
    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    :try_start_0
    invoke-static {}, Lad0;->d()Lzc0;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    new-instance v1, Lorg/json/JSONObject;

    .line 70
    .line 71
    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 72
    .line 73
    .line 74
    iput-object v1, p1, Lzc0;->a:Lorg/json/JSONObject;

    .line 75
    .line 76
    invoke-virtual {p1}, Lzc0;->a()Lad0;

    .line 77
    .line 78
    .line 79
    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    iget-object p0, p0, Ls61;->e:Lyc0;

    .line 81
    .line 82
    invoke-virtual {p0, p1}, Lyc0;->d(Lad0;)Lef5;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    new-instance p1, Lp61;

    .line 87
    .line 88
    const/4 v0, 0x1

    .line 89
    invoke-direct {p1, v0}, Lp61;-><init>(I)V

    .line 90
    .line 91
    .line 92
    sget-object v0, Li61;->n:Li61;

    .line 93
    .line 94
    invoke-virtual {p0, v0, p1}, Lef5;->l(Ljava/util/concurrent/Executor;Lwt3;)Lef5;

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :catch_0
    move-exception p0

    .line 99
    const-string p1, "FirebaseRemoteConfig"

    .line 100
    .line 101
    const-string v0, "The provided defaults map could not be processed."

    .line 102
    .line 103
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    .line 105
    .line 106
    const/4 p0, 0x0

    .line 107
    invoke-static {p0}, Lmt1;->t(Ljava/lang/Object;)Lef5;

    .line 108
    .line 109
    .line 110
    return-void
.end method
