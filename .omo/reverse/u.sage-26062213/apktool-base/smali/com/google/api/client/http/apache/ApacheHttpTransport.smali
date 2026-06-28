.class public final Lcom/google/api/client/http/apache/ApacheHttpTransport;
.super Lcom/google/api/client/http/HttpTransport;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/http/apache/ApacheHttpTransport$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final httpClient:Lnl1;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-static {}, Lcom/google/api/client/http/apache/ApacheHttpTransport;->newDefaultHttpClient()Lap0;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/api/client/http/apache/ApacheHttpTransport;-><init>(Lnl1;)V

    return-void
.end method

.method public constructor <init>(Lnl1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/api/client/http/HttpTransport;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/api/client/http/apache/ApacheHttpTransport;->httpClient:Lnl1;

    .line 5
    .line 6
    invoke-interface {p1}, Lnl1;->getParams()Lkm1;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    invoke-static {}, Lcom/google/api/client/http/apache/ApacheHttpTransport;->newDefaultHttpClient()Lap0;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Lc1;->getParams()Lkm1;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    :cond_0
    sget-object p1, Ldn1;->s:Ldn1;

    .line 21
    .line 22
    const-string v0, "HTTP parameters"

    .line 23
    .line 24
    invoke-static {p0, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string v0, "http.protocol.version"

    .line 28
    .line 29
    invoke-interface {p0, p1, v0}, Lkm1;->a(Ljava/lang/Object;Ljava/lang/String;)Lkm1;

    .line 30
    .line 31
    .line 32
    check-cast p0, Lf1;

    .line 33
    .line 34
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 35
    .line 36
    const-string v0, "http.protocol.handle-redirects"

    .line 37
    .line 38
    invoke-interface {p0, p1, v0}, Lkm1;->a(Ljava/lang/Object;Ljava/lang/String;)Lkm1;

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public static newDefaultHttpClient()Lap0;
    .locals 3

    .line 67
    invoke-static {}, Lrb3;->getSocketFactory()Lrb3;

    move-result-object v0

    invoke-static {}, Lcom/google/api/client/http/apache/ApacheHttpTransport;->newDefaultHttpParams()Lkm1;

    move-result-object v1

    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v2

    .line 68
    invoke-static {v0, v1, v2}, Lcom/google/api/client/http/apache/ApacheHttpTransport;->newDefaultHttpClient(Lrb3;Lkm1;Ljava/net/ProxySelector;)Lap0;

    move-result-object v0

    return-object v0
.end method

.method public static newDefaultHttpClient(Lrb3;Lkm1;Ljava/net/ProxySelector;)Lap0;
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
    const/16 v3, 0x50

    .line 16
    .line 17
    const-string v4, "http"

    .line 18
    .line 19
    invoke-direct {v1, v4, v2, v3}, Lfe3;-><init>(Ljava/lang/String;Lnp3;I)V

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
    const-string v2, "https"

    .line 28
    .line 29
    const/16 v3, 0x1bb

    .line 30
    .line 31
    invoke-direct {v1, v2, p0, v3}, Lfe3;-><init>(Ljava/lang/String;Lnp3;I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lje3;->b(Lfe3;)V

    .line 35
    .line 36
    .line 37
    new-instance p0, Lqy3;

    .line 38
    .line 39
    invoke-direct {p0, p1, v0}, Lqy3;-><init>(Lkm1;Lje3;)V

    .line 40
    .line 41
    .line 42
    new-instance v1, Lap0;

    .line 43
    .line 44
    invoke-direct {v1, p0, p1}, Lc1;-><init>(Lqy3;Lkm1;)V

    .line 45
    .line 46
    .line 47
    new-instance p0, Lcp0;

    .line 48
    .line 49
    const/4 p1, 0x0

    .line 50
    invoke-direct {p0, p1}, Lcp0;-><init>(I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, p0}, Lc1;->setHttpRequestRetryHandler(Lsm1;)V

    .line 54
    .line 55
    .line 56
    if-eqz p2, :cond_0

    .line 57
    .line 58
    new-instance p0, Lxh1;

    .line 59
    .line 60
    invoke-direct {p0, v0, p2}, Lxh1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, p0}, Lc1;->setRoutePlanner(Lzm1;)V

    .line 64
    .line 65
    .line 66
    :cond_0
    return-object v1
.end method

.method public static newDefaultHttpParams()Lkm1;
    .locals 3

    .line 1
    new-instance v0, Lxu;

    .line 2
    .line 3
    invoke-direct {v0}, Lxu;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "http.connection.stalecheck"

    .line 7
    .line 8
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 9
    .line 10
    invoke-virtual {v0, v2, v1}, Lxu;->a(Ljava/lang/Object;Ljava/lang/String;)Lkm1;

    .line 11
    .line 12
    .line 13
    const-string v1, "http.socket.buffer-size"

    .line 14
    .line 15
    const/16 v2, 0x2000

    .line 16
    .line 17
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-interface {v0, v2, v1}, Lkm1;->a(Ljava/lang/Object;Ljava/lang/String;)Lkm1;

    .line 22
    .line 23
    .line 24
    const-string v1, "http.conn-manager.max-total"

    .line 25
    .line 26
    const/16 v2, 0xc8

    .line 27
    .line 28
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v0, v2, v1}, Lxu;->a(Ljava/lang/Object;Ljava/lang/String;)Lkm1;

    .line 33
    .line 34
    .line 35
    new-instance v1, Lrd0;

    .line 36
    .line 37
    const/16 v2, 0x14

    .line 38
    .line 39
    invoke-direct {v1, v2}, Lrd0;-><init>(I)V

    .line 40
    .line 41
    .line 42
    const-string v2, "http.conn-manager.max-per-route"

    .line 43
    .line 44
    invoke-virtual {v0, v1, v2}, Lxu;->a(Ljava/lang/Object;Ljava/lang/String;)Lkm1;

    .line 45
    .line 46
    .line 47
    return-object v0
.end method


# virtual methods
.method public bridge synthetic buildRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/LowLevelHttpRequest;
    .locals 0

    .line 118
    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/http/apache/ApacheHttpTransport;->buildRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/apache/ApacheHttpRequest;

    move-result-object p0

    return-object p0
.end method

.method public buildRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/apache/ApacheHttpRequest;
    .locals 3

    .line 1
    const-string v0, "DELETE"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance p1, Lwl1;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-direct {p1, p2, v0}, Lwl1;-><init>(Ljava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string v0, "GET"

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x1

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    new-instance p1, Lwl1;

    .line 26
    .line 27
    invoke-direct {p1, p2, v1}, Lwl1;-><init>(Ljava/lang/String;I)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const-string v0, "HEAD"

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    const/4 v2, 0x2

    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    new-instance p1, Lwl1;

    .line 41
    .line 42
    invoke-direct {p1, p2, v2}, Lwl1;-><init>(Ljava/lang/String;I)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    const-string v0, "POST"

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    new-instance p1, Llm1;

    .line 55
    .line 56
    invoke-direct {p1, p2, v1}, Llm1;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    const-string v0, "PUT"

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_4

    .line 67
    .line 68
    new-instance p1, Llm1;

    .line 69
    .line 70
    invoke-direct {p1, p2, v2}, Llm1;-><init>(Ljava/lang/String;I)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_4
    const-string v0, "TRACE"

    .line 75
    .line 76
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_5

    .line 81
    .line 82
    new-instance p1, Lwl1;

    .line 83
    .line 84
    const/4 v0, 0x4

    .line 85
    invoke-direct {p1, p2, v0}, Lwl1;-><init>(Ljava/lang/String;I)V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_5
    const-string v0, "OPTIONS"

    .line 90
    .line 91
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_6

    .line 96
    .line 97
    new-instance p1, Lwl1;

    .line 98
    .line 99
    const/4 v0, 0x3

    .line 100
    invoke-direct {p1, p2, v0}, Lwl1;-><init>(Ljava/lang/String;I)V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_6
    new-instance v0, Lcom/google/api/client/http/apache/HttpExtensionMethod;

    .line 105
    .line 106
    invoke-direct {v0, p1, p2}, Lcom/google/api/client/http/apache/HttpExtensionMethod;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    move-object p1, v0

    .line 110
    :goto_0
    new-instance p2, Lcom/google/api/client/http/apache/ApacheHttpRequest;

    .line 111
    .line 112
    iget-object p0, p0, Lcom/google/api/client/http/apache/ApacheHttpTransport;->httpClient:Lnl1;

    .line 113
    .line 114
    invoke-direct {p2, p0, p1}, Lcom/google/api/client/http/apache/ApacheHttpRequest;-><init>(Lnl1;Lpm1;)V

    .line 115
    .line 116
    .line 117
    return-object p2
.end method

.method public getHttpClient()Lnl1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/client/http/apache/ApacheHttpTransport;->httpClient:Lnl1;

    .line 2
    .line 3
    return-object p0
.end method

.method public shutdown()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/client/http/apache/ApacheHttpTransport;->httpClient:Lnl1;

    .line 2
    .line 3
    invoke-interface {p0}, Lnl1;->getConnectionManager()Lg60;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Lg60;->shutdown()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public supportsMethod(Ljava/lang/String;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method
