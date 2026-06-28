.class public final Lcom/google/api/client/http/apache/v2/ApacheHttpTransport;
.super Lcom/google/api/client/http/HttpTransport;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field private final httpClient:Lnl1;

.field private final isMtls:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/api/client/http/apache/v2/ApacheHttpTransport;->newDefaultHttpClient()Lnl1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {p0, v0, v1}, Lcom/google/api/client/http/apache/v2/ApacheHttpTransport;-><init>(Lnl1;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lnl1;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/google/api/client/http/HttpTransport;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/google/api/client/http/apache/v2/ApacheHttpTransport;->httpClient:Lnl1;

    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcom/google/api/client/http/apache/v2/ApacheHttpTransport;->isMtls:Z

    return-void
.end method

.method public constructor <init>(Lnl1;Z)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/google/api/client/http/HttpTransport;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/google/api/client/http/apache/v2/ApacheHttpTransport;->httpClient:Lnl1;

    .line 15
    iput-boolean p2, p0, Lcom/google/api/client/http/apache/v2/ApacheHttpTransport;->isMtls:Z

    return-void
.end method

.method public static newDefaultHttpClient()Lnl1;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/api/client/http/apache/v2/ApacheHttpTransport;->newDefaultHttpClientBuilder()Lol1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lol1;->a()Let1;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public static newDefaultHttpClientBuilder()Lol1;
    .locals 7

    .line 1
    new-instance v0, Lol1;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput v1, v0, Lol1;->g:I

    .line 8
    .line 9
    iput v1, v0, Lol1;->h:I

    .line 10
    .line 11
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 12
    .line 13
    iput-object v1, v0, Lol1;->i:Ljava/util/concurrent/TimeUnit;

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    iput-boolean v2, v0, Lol1;->d:Z

    .line 17
    .line 18
    new-instance v3, Lqb3;

    .line 19
    .line 20
    invoke-static {}, Ldm0;->t()Ljavax/net/ssl/SSLContext;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    new-instance v5, Lzo0;

    .line 25
    .line 26
    invoke-static {}, Lu03;->a()Lzw2;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    invoke-direct {v5, v6}, Lzo0;-><init>(Lzw2;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {v3, v4, v5}, Lqb3;-><init>(Ljavax/net/ssl/SSLContext;Lzo0;)V

    .line 34
    .line 35
    .line 36
    iput-object v3, v0, Lol1;->a:Lqb3;

    .line 37
    .line 38
    const/16 v3, 0xc8

    .line 39
    .line 40
    iput v3, v0, Lol1;->g:I

    .line 41
    .line 42
    const/16 v3, 0x14

    .line 43
    .line 44
    iput v3, v0, Lol1;->h:I

    .line 45
    .line 46
    iput-object v1, v0, Lol1;->i:Ljava/util/concurrent/TimeUnit;

    .line 47
    .line 48
    new-instance v1, Lsv3;

    .line 49
    .line 50
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    const/4 v4, 0x0

    .line 55
    invoke-direct {v1, v4, v3}, Lsv3;-><init>(Lmj1;Ljava/net/ProxySelector;)V

    .line 56
    .line 57
    .line 58
    iput-object v1, v0, Lol1;->c:Lsv3;

    .line 59
    .line 60
    iput-boolean v2, v0, Lol1;->e:Z

    .line 61
    .line 62
    iput-boolean v2, v0, Lol1;->f:Z

    .line 63
    .line 64
    return-object v0
.end method


# virtual methods
.method public bridge synthetic buildRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/LowLevelHttpRequest;
    .locals 0

    .line 140
    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/http/apache/v2/ApacheHttpTransport;->buildRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/apache/v2/ApacheHttpRequest;

    move-result-object p0

    return-object p0
.end method

.method public buildRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/apache/v2/ApacheHttpRequest;
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
    goto/16 :goto_0

    .line 16
    .line 17
    :cond_0
    const-string v0, "GET"

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x1

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    new-instance p1, Lwl1;

    .line 27
    .line 28
    invoke-direct {p1, p2, v1}, Lwl1;-><init>(Ljava/lang/String;I)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const-string v0, "HEAD"

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    const/4 v2, 0x2

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    new-instance p1, Lwl1;

    .line 42
    .line 43
    invoke-direct {p1, p2, v2}, Lwl1;-><init>(Ljava/lang/String;I)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    const-string v0, "PATCH"

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_3

    .line 54
    .line 55
    new-instance p1, Llm1;

    .line 56
    .line 57
    invoke-direct {p1}, Llm1;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-static {p2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    invoke-virtual {p1, p2}, Lpm1;->setURI(Ljava/net/URI;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    const-string v0, "POST"

    .line 69
    .line 70
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_4

    .line 75
    .line 76
    new-instance p1, Llm1;

    .line 77
    .line 78
    invoke-direct {p1, p2, v1}, Llm1;-><init>(Ljava/lang/String;I)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_4
    const-string v0, "PUT"

    .line 83
    .line 84
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_5

    .line 89
    .line 90
    new-instance p1, Llm1;

    .line 91
    .line 92
    invoke-direct {p1, p2, v2}, Llm1;-><init>(Ljava/lang/String;I)V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_5
    const-string v0, "TRACE"

    .line 97
    .line 98
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-eqz v0, :cond_6

    .line 103
    .line 104
    new-instance p1, Lwl1;

    .line 105
    .line 106
    const/4 v0, 0x4

    .line 107
    invoke-direct {p1, p2, v0}, Lwl1;-><init>(Ljava/lang/String;I)V

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_6
    const-string v0, "OPTIONS"

    .line 112
    .line 113
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-eqz v0, :cond_7

    .line 118
    .line 119
    new-instance p1, Lwl1;

    .line 120
    .line 121
    const/4 v0, 0x3

    .line 122
    invoke-direct {p1, p2, v0}, Lwl1;-><init>(Ljava/lang/String;I)V

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_7
    new-instance v0, Lcom/google/api/client/http/apache/v2/HttpExtensionMethod;

    .line 127
    .line 128
    invoke-direct {v0, p1, p2}, Lcom/google/api/client/http/apache/v2/HttpExtensionMethod;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    move-object p1, v0

    .line 132
    :goto_0
    new-instance p2, Lcom/google/api/client/http/apache/v2/ApacheHttpRequest;

    .line 133
    .line 134
    iget-object p0, p0, Lcom/google/api/client/http/apache/v2/ApacheHttpTransport;->httpClient:Lnl1;

    .line 135
    .line 136
    invoke-direct {p2, p0, p1}, Lcom/google/api/client/http/apache/v2/ApacheHttpRequest;-><init>(Lnl1;Lpm1;)V

    .line 137
    .line 138
    .line 139
    return-object p2
.end method

.method public getHttpClient()Lnl1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/client/http/apache/v2/ApacheHttpTransport;->httpClient:Lnl1;

    .line 2
    .line 3
    return-object p0
.end method

.method public isMtls()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/api/client/http/apache/v2/ApacheHttpTransport;->isMtls:Z

    .line 2
    .line 3
    return p0
.end method

.method public shutdown()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/api/client/http/apache/v2/ApacheHttpTransport;->httpClient:Lnl1;

    .line 2
    .line 3
    instance-of v0, p0, Ls60;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p0, Ls60;

    .line 8
    .line 9
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public supportsMethod(Ljava/lang/String;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method
