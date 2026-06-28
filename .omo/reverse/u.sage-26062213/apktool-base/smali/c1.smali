.class public abstract Lc1;
.super Ls60;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field private backoffManager:Liq;

.field private connManager:Lg60;

.field private connectionBackoffStrategy:Lxd0;

.field private cookieStore:Lth0;

.field private credsProvider:Lzk0;

.field private defaultParams:Lkm1;

.field private keepAliveStrategy:Lbe0;

.field private final log:Lorg/apache/commons/logging/Log;

.field private mutableProcessor:Lyu;

.field private protocolProcessor:Lfp1;

.field private proxyAuthStrategy:Lyj;

.field private redirectStrategy:Lr33;

.field private requestExec:Lqm1;

.field private retryHandler:Lsm1;

.field private reuseStrategy:Lie0;

.field private routePlanner:Lzm1;

.field private supportedAuthSchemes:Lrj;

.field private supportedCookieSpecs:Lsh0;

.field private targetAuthStrategy:Lyj;

.field private userTokenHandler:Ld94;


# direct methods
.method public constructor <init>(Lqy3;Lkm1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ls60;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lc1;->log:Lorg/apache/commons/logging/Log;

    .line 13
    .line 14
    iput-object p2, p0, Lc1;->defaultParams:Lkm1;

    .line 15
    .line 16
    iput-object p1, p0, Lc1;->connManager:Lg60;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public declared-synchronized addRequestInterceptor(Lrm1;)V
    .locals 1

    monitor-enter p0

    .line 25
    :try_start_0
    invoke-virtual {p0}, Lc1;->getHttpProcessor()Lyu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lyu;->c(Lrm1;)V

    const/4 p1, 0x0

    .line 26
    iput-object p1, p0, Lc1;->protocolProcessor:Lfp1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized addRequestInterceptor(Lrm1;I)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lc1;->getHttpProcessor()Lyu;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, v0, Lyu;->n:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Lc1;->protocolProcessor:Lfp1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    monitor-exit p0

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    throw p1
.end method

.method public declared-synchronized addResponseInterceptor(Lwm1;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lc1;->getHttpProcessor()Lyu;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, v0, Lyu;->o:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    :goto_0
    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Lc1;->protocolProcessor:Lfp1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    monitor-exit p0

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    throw p1
.end method

.method public declared-synchronized addResponseInterceptor(Lwm1;I)V
    .locals 1

    monitor-enter p0

    .line 25
    :try_start_0
    invoke-virtual {p0}, Lc1;->getHttpProcessor()Lyu;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, v0, Lyu;->o:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_0
    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Lc1;->protocolProcessor:Lfp1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized clearRequestInterceptors()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lc1;->getHttpProcessor()Lyu;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    iget-object v0, v0, Lyu;->n:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lc1;->protocolProcessor:Lfp1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    throw v0
.end method

.method public declared-synchronized clearResponseInterceptors()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lc1;->getHttpProcessor()Lyu;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    iget-object v0, v0, Lyu;->o:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lc1;->protocolProcessor:Lfp1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    throw v0
.end method

.method public close()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc1;->getConnectionManager()Lg60;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Lg60;->shutdown()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public createAuthSchemeRegistry()Lrj;
    .locals 2

    .line 1
    new-instance p0, Lrj;

    .line 2
    .line 3
    invoke-direct {p0}, Lrj;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljv;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, v1}, Ljv;-><init>(I)V

    .line 10
    .line 11
    .line 12
    const-string v1, "Basic"

    .line 13
    .line 14
    invoke-virtual {p0, v1, v0}, Lrj;->c(Ljava/lang/String;Ljv;)V

    .line 15
    .line 16
    .line 17
    new-instance v0, Ljv;

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-direct {v0, v1}, Ljv;-><init>(I)V

    .line 21
    .line 22
    .line 23
    const-string v1, "Digest"

    .line 24
    .line 25
    invoke-virtual {p0, v1, v0}, Lrj;->c(Ljava/lang/String;Ljv;)V

    .line 26
    .line 27
    .line 28
    new-instance v0, Ljv;

    .line 29
    .line 30
    const/4 v1, 0x3

    .line 31
    invoke-direct {v0, v1}, Ljv;-><init>(I)V

    .line 32
    .line 33
    .line 34
    const-string v1, "NTLM"

    .line 35
    .line 36
    invoke-virtual {p0, v1, v0}, Lrj;->c(Ljava/lang/String;Ljv;)V

    .line 37
    .line 38
    .line 39
    new-instance v0, Ljv;

    .line 40
    .line 41
    const/4 v1, 0x4

    .line 42
    invoke-direct {v0, v1}, Ljv;-><init>(I)V

    .line 43
    .line 44
    .line 45
    const-string v1, "Negotiate"

    .line 46
    .line 47
    invoke-virtual {p0, v1, v0}, Lrj;->c(Ljava/lang/String;Ljv;)V

    .line 48
    .line 49
    .line 50
    new-instance v0, Ljv;

    .line 51
    .line 52
    const/4 v1, 0x2

    .line 53
    invoke-direct {v0, v1}, Ljv;-><init>(I)V

    .line 54
    .line 55
    .line 56
    const-string v1, "Kerberos"

    .line 57
    .line 58
    invoke-virtual {p0, v1, v0}, Lrj;->c(Ljava/lang/String;Ljv;)V

    .line 59
    .line 60
    .line 61
    return-object p0
.end method

.method public createClientConnectionManager()Lg60;
    .locals 5

    .line 1
    new-instance v0, Lje3;

    .line 2
    .line 3
    invoke-direct {v0}, Lje3;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lfe3;

    .line 7
    .line 8
    new-instance v2, Lqz0;

    .line 9
    .line 10
    const/16 v3, 0x11

    .line 11
    .line 12
    invoke-direct {v2, v3}, Lqz0;-><init>(I)V

    .line 13
    .line 14
    .line 15
    const-string v3, "http"

    .line 16
    .line 17
    const/16 v4, 0x50

    .line 18
    .line 19
    invoke-direct {v1, v3, v4, v2}, Lfe3;-><init>(Ljava/lang/String;ILke3;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lje3;->b(Lfe3;)V

    .line 23
    .line 24
    .line 25
    new-instance v1, Lfe3;

    .line 26
    .line 27
    const/16 v2, 0x1bb

    .line 28
    .line 29
    invoke-static {}, Lrb3;->getSocketFactory()Lrb3;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    const-string v4, "https"

    .line 34
    .line 35
    invoke-direct {v1, v4, v2, v3}, Lfe3;-><init>(Ljava/lang/String;ILke3;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lje3;->b(Lfe3;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lc1;->getParams()Lkm1;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    const-string v1, "http.connection-manager.factory-class-name"

    .line 46
    .line 47
    invoke-interface {p0, v1}, Lkm1;->c(Ljava/lang/String;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    check-cast p0, Ljava/lang/String;

    .line 52
    .line 53
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    if-eqz p0, :cond_2

    .line 62
    .line 63
    if-eqz v1, :cond_0

    .line 64
    .line 65
    const/4 v2, 0x1

    .line 66
    :try_start_0
    invoke-static {p0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    goto :goto_0

    .line 71
    :cond_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    if-nez v1, :cond_1

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_1
    new-instance v0, Ljava/lang/ClassCastException;

    .line 83
    .line 84
    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    .line 85
    .line 86
    .line 87
    throw v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :catch_0
    move-exception p0

    .line 89
    new-instance v0, Ljava/lang/InstantiationError;

    .line 90
    .line 91
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-direct {v0, p0}, Ljava/lang/InstantiationError;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw v0

    .line 99
    :catch_1
    move-exception p0

    .line 100
    new-instance v0, Ljava/lang/IllegalAccessError;

    .line 101
    .line 102
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    invoke-direct {v0, p0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw v0

    .line 110
    :catch_2
    const-string v0, "Invalid class name: "

    .line 111
    .line 112
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    const/4 p0, 0x0

    .line 120
    return-object p0

    .line 121
    :cond_2
    :goto_1
    new-instance p0, Liu;

    .line 122
    .line 123
    invoke-direct {p0, v0}, Liu;-><init>(Lje3;)V

    .line 124
    .line 125
    .line 126
    return-object p0
.end method

.method public createClientRequestDirector(Lqm1;Lg60;Lie0;Lbe0;Lzm1;Lnm1;Lsm1;Lr33;Lxj;Lxj;Ld94;Lkm1;)Ly63;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 32
    new-instance p0, Lxp0;

    invoke-direct/range {p0 .. p12}, Lxp0;-><init>(Lqm1;Lg60;Lie0;Lbe0;Lzm1;Lnm1;Lsm1;Lr33;Lxj;Lxj;Ld94;Lkm1;)V

    return-object p0
.end method

.method public createClientRequestDirector(Lqm1;Lg60;Lie0;Lbe0;Lzm1;Lnm1;Lsm1;Lr33;Lyj;Lyj;Ld94;Lkm1;)Ly63;
    .locals 14

    .line 1
    new-instance v0, Lxp0;

    .line 2
    .line 3
    iget-object v1, p0, Lc1;->log:Lorg/apache/commons/logging/Log;

    .line 4
    .line 5
    move-object v2, p1

    .line 6
    move-object/from16 v3, p2

    .line 7
    .line 8
    move-object/from16 v4, p3

    .line 9
    .line 10
    move-object/from16 v5, p4

    .line 11
    .line 12
    move-object/from16 v6, p5

    .line 13
    .line 14
    move-object/from16 v7, p6

    .line 15
    .line 16
    move-object/from16 v8, p7

    .line 17
    .line 18
    move-object/from16 v9, p8

    .line 19
    .line 20
    move-object/from16 v10, p9

    .line 21
    .line 22
    move-object/from16 v11, p10

    .line 23
    .line 24
    move-object/from16 v12, p11

    .line 25
    .line 26
    move-object/from16 v13, p12

    .line 27
    .line 28
    invoke-direct/range {v0 .. v13}, Lxp0;-><init>(Lorg/apache/commons/logging/Log;Lqm1;Lg60;Lie0;Lbe0;Lzm1;Lnm1;Lsm1;Lr33;Lyj;Lyj;Ld94;Lkm1;)V

    .line 29
    .line 30
    .line 31
    return-object v0
.end method

.method public createConnectionKeepAliveStrategy()Lbe0;
    .locals 1

    .line 1
    new-instance p0, Lmj1;

    .line 2
    .line 3
    const/4 v0, 0x7

    .line 4
    invoke-direct {p0, v0}, Lmj1;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public createConnectionReuseStrategy()Lie0;
    .locals 1

    .line 1
    new-instance p0, Lbx3;

    .line 2
    .line 3
    const/16 v0, 0x19

    .line 4
    .line 5
    invoke-direct {p0, v0}, Lbx3;-><init>(I)V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public createCookieSpecRegistry()Lsh0;
    .locals 2

    .line 1
    new-instance p0, Lsh0;

    .line 2
    .line 3
    invoke-direct {p0}, Lsh0;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lyv;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, v1}, Lyv;-><init>(I)V

    .line 10
    .line 11
    .line 12
    const-string v1, "default"

    .line 13
    .line 14
    invoke-virtual {p0, v1, v0}, Lsh0;->b(Ljava/lang/String;Lph0;)V

    .line 15
    .line 16
    .line 17
    new-instance v0, Lyv;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-direct {v0, v1}, Lyv;-><init>(I)V

    .line 21
    .line 22
    .line 23
    const-string v1, "best-match"

    .line 24
    .line 25
    invoke-virtual {p0, v1, v0}, Lsh0;->b(Ljava/lang/String;Lph0;)V

    .line 26
    .line 27
    .line 28
    new-instance v0, Lyv;

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    invoke-direct {v0, v1}, Lyv;-><init>(I)V

    .line 32
    .line 33
    .line 34
    const-string v1, "compatibility"

    .line 35
    .line 36
    invoke-virtual {p0, v1, v0}, Lsh0;->b(Ljava/lang/String;Lph0;)V

    .line 37
    .line 38
    .line 39
    new-instance v0, Lyv;

    .line 40
    .line 41
    const/4 v1, 0x2

    .line 42
    invoke-direct {v0, v1}, Lyv;-><init>(I)V

    .line 43
    .line 44
    .line 45
    const-string v1, "netscape"

    .line 46
    .line 47
    invoke-virtual {p0, v1, v0}, Lsh0;->b(Ljava/lang/String;Lph0;)V

    .line 48
    .line 49
    .line 50
    new-instance v0, Lyv;

    .line 51
    .line 52
    const/4 v1, 0x3

    .line 53
    invoke-direct {v0, v1}, Lyv;-><init>(I)V

    .line 54
    .line 55
    .line 56
    const-string v1, "rfc2109"

    .line 57
    .line 58
    invoke-virtual {p0, v1, v0}, Lsh0;->b(Ljava/lang/String;Lph0;)V

    .line 59
    .line 60
    .line 61
    new-instance v0, Lyv;

    .line 62
    .line 63
    const/4 v1, 0x4

    .line 64
    invoke-direct {v0, v1}, Lyv;-><init>(I)V

    .line 65
    .line 66
    .line 67
    const-string v1, "rfc2965"

    .line 68
    .line 69
    invoke-virtual {p0, v1, v0}, Lsh0;->b(Ljava/lang/String;Lph0;)V

    .line 70
    .line 71
    .line 72
    new-instance v0, Lxn1;

    .line 73
    .line 74
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 75
    .line 76
    .line 77
    const-string v1, "ignoreCookies"

    .line 78
    .line 79
    invoke-virtual {p0, v1, v0}, Lsh0;->b(Ljava/lang/String;Lph0;)V

    .line 80
    .line 81
    .line 82
    return-object p0
.end method

.method public createCookieStore()Lth0;
    .locals 0

    .line 1
    new-instance p0, Lmu;

    .line 2
    .line 3
    invoke-direct {p0}, Lmu;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public createCredentialsProvider()Lzk0;
    .locals 0

    .line 1
    new-instance p0, Lnu;

    .line 2
    .line 3
    invoke-direct {p0}, Lnu;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public createHttpContext()Lul1;
    .locals 3

    .line 1
    new-instance v0, Lvu;

    .line 2
    .line 3
    invoke-direct {v0}, Lvu;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lc1;->getConnectionManager()Lg60;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Lg60;->d()Lje3;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, "http.scheme-registry"

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Lvu;->z(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v1, "http.authscheme-registry"

    .line 20
    .line 21
    invoke-virtual {p0}, Lc1;->getAuthSchemes()Lrj;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v0, v2, v1}, Lvu;->z(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v1, "http.cookiespec-registry"

    .line 29
    .line 30
    invoke-virtual {p0}, Lc1;->getCookieSpecs()Lsh0;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v0, v2, v1}, Lvu;->z(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string v1, "http.cookie-store"

    .line 38
    .line 39
    invoke-virtual {p0}, Lc1;->getCookieStore()Lth0;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v0, v2, v1}, Lvu;->z(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string v1, "http.auth.credentials-provider"

    .line 47
    .line 48
    invoke-virtual {p0}, Lc1;->getCredentialsProvider()Lzk0;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {v0, p0, v1}, Lvu;->z(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-object v0
.end method

.method public abstract createHttpParams()Lkm1;
.end method

.method public abstract createHttpProcessor()Lyu;
.end method

.method public createHttpRequestRetryHandler()Lsm1;
    .locals 1

    .line 1
    new-instance p0, Lcp0;

    .line 2
    .line 3
    const/4 v0, 0x3

    .line 4
    invoke-direct {p0, v0}, Lcp0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public createHttpRoutePlanner()Lzm1;
    .locals 2

    .line 1
    new-instance v0, Ldh1;

    .line 2
    .line 3
    invoke-virtual {p0}, Lc1;->getConnectionManager()Lg60;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Lg60;->d()Lje3;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v1, "Scheme registry"

    .line 15
    .line 16
    invoke-static {p0, v1}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iput-object p0, v0, Ldh1;->n:Ljava/lang/Object;

    .line 20
    .line 21
    return-object v0
.end method

.method public createProxyAuthenticationHandler()Lxj;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p0, Lup0;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0}, Lup0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public createProxyAuthenticationStrategy()Lyj;
    .locals 0

    .line 1
    new-instance p0, Lo03;

    .line 2
    .line 3
    invoke-direct {p0}, Lo03;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public createRedirectHandler()Lp33;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p0, Lvp0;

    .line 2
    .line 3
    invoke-direct {p0}, Lvp0;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public createRequestExecutor()Lqm1;
    .locals 0

    .line 1
    new-instance p0, Lqm1;

    .line 2
    .line 3
    invoke-direct {p0}, Lqm1;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public createTargetAuthenticationHandler()Lxj;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p0, Lup0;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, v0}, Lup0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public createTargetAuthenticationStrategy()Lyj;
    .locals 0

    .line 1
    new-instance p0, Lkw3;

    .line 2
    .line 3
    invoke-direct {p0}, Lkw3;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public createUserTokenHandler()Ld94;
    .locals 1

    .line 1
    new-instance p0, Lmj1;

    .line 2
    .line 3
    const/16 v0, 0x9

    .line 4
    .line 5
    invoke-direct {p0, v0}, Lmj1;-><init>(I)V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public determineParams(Lom1;)Lkm1;
    .locals 1

    .line 1
    new-instance v0, Ln60;

    .line 2
    .line 3
    invoke-virtual {p0}, Lc1;->getParams()Lkm1;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p1}, Lim1;->getParams()Lkm1;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-direct {v0, p0, p1}, Ln60;-><init>(Lkm1;Lkm1;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public final doExecute(Lem1;Lom1;Lul1;)Lt60;
    .locals 15

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    move-object/from16 v2, p3

    .line 4
    .line 5
    const-string v3, "HTTP request"

    .line 6
    .line 7
    invoke-static {v0, v3}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    monitor-enter p0

    .line 11
    :try_start_0
    invoke-virtual {p0}, Lc1;->createHttpContext()Lul1;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    move-object v14, v3

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance v4, Lwq0;

    .line 20
    .line 21
    invoke-direct {v4, v2, v3}, Lwq0;-><init>(Lul1;Lul1;)V

    .line 22
    .line 23
    .line 24
    move-object v14, v4

    .line 25
    :goto_0
    invoke-virtual {p0, v0}, Lc1;->determineParams(Lom1;)Lkm1;

    .line 26
    .line 27
    .line 28
    move-result-object v13

    .line 29
    sget-object v2, Lv63;->D:Lv63;

    .line 30
    .line 31
    invoke-static {v13, v2}, Ldm0;->x(Lkm1;Lv63;)Lv63;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    const-string v3, "http.request-config"

    .line 36
    .line 37
    invoke-interface {v14, v2, v3}, Lul1;->z(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lc1;->getRequestExecutor()Lqm1;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {p0}, Lc1;->getConnectionManager()Lg60;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {p0}, Lc1;->getConnectionReuseStrategy()Lie0;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {p0}, Lc1;->getConnectionKeepAliveStrategy()Lbe0;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    invoke-virtual {p0}, Lc1;->getRoutePlanner()Lzm1;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    invoke-virtual {p0}, Lc1;->j()Lfp1;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    invoke-virtual {p0}, Lc1;->getHttpRequestRetryHandler()Lsm1;

    .line 65
    .line 66
    .line 67
    move-result-object v8

    .line 68
    invoke-virtual {p0}, Lc1;->getRedirectStrategy()Lr33;

    .line 69
    .line 70
    .line 71
    move-result-object v9

    .line 72
    invoke-virtual {p0}, Lc1;->getTargetAuthenticationStrategy()Lyj;

    .line 73
    .line 74
    .line 75
    move-result-object v10

    .line 76
    invoke-virtual {p0}, Lc1;->getProxyAuthenticationStrategy()Lyj;

    .line 77
    .line 78
    .line 79
    move-result-object v11

    .line 80
    invoke-virtual {p0}, Lc1;->getUserTokenHandler()Ld94;

    .line 81
    .line 82
    .line 83
    move-result-object v12

    .line 84
    move-object v1, p0

    .line 85
    invoke-virtual/range {v1 .. v13}, Lc1;->createClientRequestDirector(Lqm1;Lg60;Lie0;Lbe0;Lzm1;Lnm1;Lsm1;Lr33;Lyj;Lyj;Ld94;Lkm1;)Ly63;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {p0}, Lc1;->getRoutePlanner()Lzm1;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Lc1;->getConnectionBackoffStrategy()Lxd0;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Lc1;->getBackoffManager()Liq;

    .line 96
    .line 97
    .line 98
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    move-object/from16 v1, p1

    .line 100
    .line 101
    :try_start_1
    invoke-interface {v2, v1, v0, v14}, Ly63;->execute(Lem1;Lom1;Lul1;)Lvm1;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-static {v0}, Lu60;->a(Lvm1;)Lt60;

    .line 106
    .line 107
    .line 108
    move-result-object v0
    :try_end_1
    .catch Lcm1; {:try_start_1 .. :try_end_1} :catch_0

    .line 109
    return-object v0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    new-instance v1, Lo60;

    .line 112
    .line 113
    invoke-direct {v1, v0}, Lo60;-><init>(Lcm1;)V

    .line 114
    .line 115
    .line 116
    throw v1

    .line 117
    :catchall_0
    move-exception v0

    .line 118
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 119
    throw v0
.end method

.method public final declared-synchronized getAuthSchemes()Lrj;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lc1;->supportedAuthSchemes:Lrj;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lc1;->createAuthSchemeRegistry()Lrj;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lc1;->supportedAuthSchemes:Lrj;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    :goto_0
    iget-object v0, p0, Lc1;->supportedAuthSchemes:Lrj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    monitor-exit p0

    .line 18
    return-object v0

    .line 19
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    throw v0
.end method

.method public final declared-synchronized getBackoffManager()Liq;
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    monitor-exit p0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0
.end method

.method public final declared-synchronized getConnectionBackoffStrategy()Lxd0;
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    monitor-exit p0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0
.end method

.method public final declared-synchronized getConnectionKeepAliveStrategy()Lbe0;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lc1;->keepAliveStrategy:Lbe0;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lc1;->createConnectionKeepAliveStrategy()Lbe0;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lc1;->keepAliveStrategy:Lbe0;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    :goto_0
    iget-object v0, p0, Lc1;->keepAliveStrategy:Lbe0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    monitor-exit p0

    .line 18
    return-object v0

    .line 19
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    throw v0
.end method

.method public final declared-synchronized getConnectionManager()Lg60;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lc1;->connManager:Lg60;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lc1;->createClientConnectionManager()Lg60;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lc1;->connManager:Lg60;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    :goto_0
    iget-object v0, p0, Lc1;->connManager:Lg60;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    monitor-exit p0

    .line 18
    return-object v0

    .line 19
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    throw v0
.end method

.method public final declared-synchronized getConnectionReuseStrategy()Lie0;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lc1;->reuseStrategy:Lie0;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lc1;->createConnectionReuseStrategy()Lie0;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lc1;->reuseStrategy:Lie0;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    :goto_0
    iget-object v0, p0, Lc1;->reuseStrategy:Lie0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    monitor-exit p0

    .line 18
    return-object v0

    .line 19
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    throw v0
.end method

.method public final declared-synchronized getCookieSpecs()Lsh0;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lc1;->supportedCookieSpecs:Lsh0;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lc1;->createCookieSpecRegistry()Lsh0;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lc1;->supportedCookieSpecs:Lsh0;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    :goto_0
    iget-object v0, p0, Lc1;->supportedCookieSpecs:Lsh0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    monitor-exit p0

    .line 18
    return-object v0

    .line 19
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    throw v0
.end method

.method public final declared-synchronized getCookieStore()Lth0;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lc1;->cookieStore:Lth0;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lc1;->createCookieStore()Lth0;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lc1;->cookieStore:Lth0;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    :goto_0
    iget-object v0, p0, Lc1;->cookieStore:Lth0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    monitor-exit p0

    .line 18
    return-object v0

    .line 19
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    throw v0
.end method

.method public final declared-synchronized getCredentialsProvider()Lzk0;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lc1;->credsProvider:Lzk0;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lc1;->createCredentialsProvider()Lzk0;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lc1;->credsProvider:Lzk0;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    :goto_0
    iget-object v0, p0, Lc1;->credsProvider:Lzk0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    monitor-exit p0

    .line 18
    return-object v0

    .line 19
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    throw v0
.end method

.method public final declared-synchronized getHttpProcessor()Lyu;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lc1;->mutableProcessor:Lyu;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lc1;->createHttpProcessor()Lyu;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lc1;->mutableProcessor:Lyu;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    :goto_0
    iget-object v0, p0, Lc1;->mutableProcessor:Lyu;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    monitor-exit p0

    .line 18
    return-object v0

    .line 19
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    throw v0
.end method

.method public final declared-synchronized getHttpRequestRetryHandler()Lsm1;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lc1;->retryHandler:Lsm1;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lc1;->createHttpRequestRetryHandler()Lsm1;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lc1;->retryHandler:Lsm1;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    :goto_0
    iget-object v0, p0, Lc1;->retryHandler:Lsm1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    monitor-exit p0

    .line 18
    return-object v0

    .line 19
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    throw v0
.end method

.method public final declared-synchronized getParams()Lkm1;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lc1;->defaultParams:Lkm1;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lc1;->createHttpParams()Lkm1;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lc1;->defaultParams:Lkm1;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    :goto_0
    iget-object v0, p0, Lc1;->defaultParams:Lkm1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    monitor-exit p0

    .line 18
    return-object v0

    .line 19
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    throw v0
.end method

.method public final declared-synchronized getProxyAuthenticationHandler()Lxj;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lc1;->createProxyAuthenticationHandler()Lxj;

    .line 3
    .line 4
    .line 5
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    .line 7
    return-object v0

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    throw v0
.end method

.method public final declared-synchronized getProxyAuthenticationStrategy()Lyj;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lc1;->proxyAuthStrategy:Lyj;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lc1;->createProxyAuthenticationStrategy()Lyj;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lc1;->proxyAuthStrategy:Lyj;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    :goto_0
    iget-object v0, p0, Lc1;->proxyAuthStrategy:Lyj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    monitor-exit p0

    .line 18
    return-object v0

    .line 19
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    throw v0
.end method

.method public final declared-synchronized getRedirectHandler()Lp33;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lc1;->createRedirectHandler()Lp33;

    .line 3
    .line 4
    .line 5
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    .line 7
    return-object v0

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    throw v0
.end method

.method public final declared-synchronized getRedirectStrategy()Lr33;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lc1;->redirectStrategy:Lr33;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lwp0;

    .line 7
    .line 8
    invoke-direct {v0}, Lwp0;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lc1;->redirectStrategy:Lr33;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    :goto_0
    iget-object v0, p0, Lc1;->redirectStrategy:Lr33;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    monitor-exit p0

    .line 19
    return-object v0

    .line 20
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    throw v0
.end method

.method public final declared-synchronized getRequestExecutor()Lqm1;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lc1;->requestExec:Lqm1;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lc1;->createRequestExecutor()Lqm1;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lc1;->requestExec:Lqm1;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    :goto_0
    iget-object v0, p0, Lc1;->requestExec:Lqm1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    monitor-exit p0

    .line 18
    return-object v0

    .line 19
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    throw v0
.end method

.method public declared-synchronized getRequestInterceptor(I)Lrm1;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lc1;->getHttpProcessor()Lyu;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    iget-object v0, v0, Lyu;->n:Ljava/util/ArrayList;

    .line 7
    .line 8
    if-ltz p1, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-lt p1, v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lrm1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 25
    :goto_1
    monitor-exit p0

    .line 26
    return-object p1

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    throw p1
.end method

.method public declared-synchronized getRequestInterceptorCount()I
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lc1;->getHttpProcessor()Lyu;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    iget-object v0, v0, Lyu;->n:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit p0

    .line 13
    return v0

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    throw v0
.end method

.method public declared-synchronized getResponseInterceptor(I)Lwm1;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lc1;->getHttpProcessor()Lyu;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    iget-object v0, v0, Lyu;->o:Ljava/util/ArrayList;

    .line 7
    .line 8
    if-ltz p1, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-lt p1, v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lwm1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 25
    :goto_1
    monitor-exit p0

    .line 26
    return-object p1

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    throw p1
.end method

.method public declared-synchronized getResponseInterceptorCount()I
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lc1;->getHttpProcessor()Lyu;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    iget-object v0, v0, Lyu;->o:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit p0

    .line 13
    return v0

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    throw v0
.end method

.method public final declared-synchronized getRoutePlanner()Lzm1;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lc1;->routePlanner:Lzm1;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lc1;->createHttpRoutePlanner()Lzm1;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lc1;->routePlanner:Lzm1;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    :goto_0
    iget-object v0, p0, Lc1;->routePlanner:Lzm1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    monitor-exit p0

    .line 18
    return-object v0

    .line 19
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    throw v0
.end method

.method public final declared-synchronized getTargetAuthenticationHandler()Lxj;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lc1;->createTargetAuthenticationHandler()Lxj;

    .line 3
    .line 4
    .line 5
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    .line 7
    return-object v0

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    throw v0
.end method

.method public final declared-synchronized getTargetAuthenticationStrategy()Lyj;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lc1;->targetAuthStrategy:Lyj;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lc1;->createTargetAuthenticationStrategy()Lyj;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lc1;->targetAuthStrategy:Lyj;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    :goto_0
    iget-object v0, p0, Lc1;->targetAuthStrategy:Lyj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    monitor-exit p0

    .line 18
    return-object v0

    .line 19
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    throw v0
.end method

.method public final declared-synchronized getUserTokenHandler()Ld94;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lc1;->userTokenHandler:Ld94;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lc1;->createUserTokenHandler()Ld94;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lc1;->userTokenHandler:Ld94;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    :goto_0
    iget-object v0, p0, Lc1;->userTokenHandler:Ld94;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    monitor-exit p0

    .line 18
    return-object v0

    .line 19
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    throw v0
.end method

.method public final declared-synchronized j()Lfp1;
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lc1;->protocolProcessor:Lfp1;

    .line 3
    .line 4
    if-nez v0, :cond_6

    .line 5
    .line 6
    invoke-virtual {p0}, Lc1;->getHttpProcessor()Lyu;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, v0, Lyu;->n:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    new-array v2, v1, [Lrm1;

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    move v4, v3

    .line 20
    :goto_0
    const/4 v5, 0x0

    .line 21
    if-ge v4, v1, :cond_2

    .line 22
    .line 23
    iget-object v6, v0, Lyu;->n:Ljava/util/ArrayList;

    .line 24
    .line 25
    if-ltz v4, :cond_1

    .line 26
    .line 27
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 28
    .line 29
    .line 30
    move-result v7

    .line 31
    if-lt v4, v7, :cond_0

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    check-cast v5, Lrm1;

    .line 39
    .line 40
    :cond_1
    :goto_1
    aput-object v5, v2, v4

    .line 41
    .line 42
    add-int/lit8 v4, v4, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception v0

    .line 46
    goto :goto_5

    .line 47
    :cond_2
    iget-object v1, v0, Lyu;->o:Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    new-array v4, v1, [Lwm1;

    .line 54
    .line 55
    :goto_2
    if-ge v3, v1, :cond_5

    .line 56
    .line 57
    iget-object v6, v0, Lyu;->o:Ljava/util/ArrayList;

    .line 58
    .line 59
    if-ltz v3, :cond_4

    .line 60
    .line 61
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 62
    .line 63
    .line 64
    move-result v7

    .line 65
    if-lt v3, v7, :cond_3

    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_3
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    check-cast v6, Lwm1;

    .line 73
    .line 74
    goto :goto_4

    .line 75
    :cond_4
    :goto_3
    move-object v6, v5

    .line 76
    :goto_4
    aput-object v6, v4, v3

    .line 77
    .line 78
    add-int/lit8 v3, v3, 0x1

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_5
    new-instance v0, Lfp1;

    .line 82
    .line 83
    invoke-direct {v0, v2, v4}, Lfp1;-><init>([Lrm1;[Lwm1;)V

    .line 84
    .line 85
    .line 86
    iput-object v0, p0, Lc1;->protocolProcessor:Lfp1;

    .line 87
    .line 88
    :cond_6
    iget-object v0, p0, Lc1;->protocolProcessor:Lfp1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    .line 90
    monitor-exit p0

    .line 91
    return-object v0

    .line 92
    :goto_5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    throw v0
.end method

.method public declared-synchronized removeRequestInterceptorByClass(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lrm1;",
            ">;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lc1;->getHttpProcessor()Lyu;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    iget-object v0, v0, Lyu;->n:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 p1, 0x0

    .line 37
    iput-object p1, p0, Lc1;->protocolProcessor:Lfp1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    monitor-exit p0

    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    throw p1
.end method

.method public declared-synchronized removeResponseInterceptorByClass(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lwm1;",
            ">;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lc1;->getHttpProcessor()Lyu;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    iget-object v0, v0, Lyu;->o:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 p1, 0x0

    .line 37
    iput-object p1, p0, Lc1;->protocolProcessor:Lfp1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    monitor-exit p0

    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    throw p1
.end method

.method public declared-synchronized setAuthSchemes(Lrj;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lc1;->supportedAuthSchemes:Lrj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw p1
.end method

.method public declared-synchronized setBackoffManager(Liq;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    monitor-exit p0

    .line 3
    return-void
.end method

.method public declared-synchronized setConnectionBackoffStrategy(Lxd0;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    monitor-exit p0

    .line 3
    return-void
.end method

.method public declared-synchronized setCookieSpecs(Lsh0;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lc1;->supportedCookieSpecs:Lsh0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw p1
.end method

.method public declared-synchronized setCookieStore(Lth0;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lc1;->cookieStore:Lth0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw p1
.end method

.method public declared-synchronized setCredentialsProvider(Lzk0;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lc1;->credsProvider:Lzk0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw p1
.end method

.method public declared-synchronized setHttpRequestRetryHandler(Lsm1;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lc1;->retryHandler:Lsm1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw p1
.end method

.method public declared-synchronized setKeepAliveStrategy(Lbe0;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lc1;->keepAliveStrategy:Lbe0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw p1
.end method

.method public declared-synchronized setParams(Lkm1;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lc1;->defaultParams:Lkm1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw p1
.end method

.method public declared-synchronized setProxyAuthenticationHandler(Lxj;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Lzj;

    .line 3
    .line 4
    invoke-direct {v0, p1}, Lzj;-><init>(Lxj;)V

    .line 5
    .line 6
    .line 7
    iput-object v0, p0, Lc1;->proxyAuthStrategy:Lyj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    throw p1
.end method

.method public declared-synchronized setProxyAuthenticationStrategy(Lyj;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lc1;->proxyAuthStrategy:Lyj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw p1
.end method

.method public declared-synchronized setRedirectHandler(Lp33;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ldh1;

    .line 3
    .line 4
    invoke-direct {v0, p1}, Ldh1;-><init>(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iput-object v0, p0, Lc1;->redirectStrategy:Lr33;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    throw p1
.end method

.method public declared-synchronized setRedirectStrategy(Lr33;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lc1;->redirectStrategy:Lr33;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw p1
.end method

.method public declared-synchronized setReuseStrategy(Lie0;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lc1;->reuseStrategy:Lie0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw p1
.end method

.method public declared-synchronized setRoutePlanner(Lzm1;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lc1;->routePlanner:Lzm1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw p1
.end method

.method public declared-synchronized setTargetAuthenticationHandler(Lxj;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Lzj;

    .line 3
    .line 4
    invoke-direct {v0, p1}, Lzj;-><init>(Lxj;)V

    .line 5
    .line 6
    .line 7
    iput-object v0, p0, Lc1;->targetAuthStrategy:Lyj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    throw p1
.end method

.method public declared-synchronized setTargetAuthenticationStrategy(Lyj;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lc1;->targetAuthStrategy:Lyj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw p1
.end method

.method public declared-synchronized setUserTokenHandler(Ld94;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lc1;->userTokenHandler:Ld94;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw p1
.end method
