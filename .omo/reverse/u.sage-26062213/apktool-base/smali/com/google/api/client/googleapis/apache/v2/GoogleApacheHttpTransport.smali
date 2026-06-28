.class public final Lcom/google/api/client/googleapis/apache/v2/GoogleApacheHttpTransport;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/googleapis/apache/v2/GoogleApacheHttpTransport$SocketFactoryRegistryHandler;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static newTrustedTransport()Lcom/google/api/client/http/apache/v2/ApacheHttpTransport;
    .locals 1

    .line 72
    invoke-static {}, Lcom/google/api/client/googleapis/mtls/MtlsUtils;->getDefaultMtlsProvider()Lcom/google/api/client/googleapis/mtls/MtlsProvider;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/client/googleapis/apache/v2/GoogleApacheHttpTransport;->newTrustedTransport(Lcom/google/api/client/googleapis/mtls/MtlsProvider;)Lcom/google/api/client/http/apache/v2/ApacheHttpTransport;

    move-result-object v0

    return-object v0
.end method

.method public static newTrustedTransport(Lcom/google/api/client/googleapis/mtls/MtlsProvider;)Lcom/google/api/client/http/apache/v2/ApacheHttpTransport;
    .locals 6

    .line 1
    new-instance v0, Lcom/google/api/client/googleapis/apache/v2/GoogleApacheHttpTransport$SocketFactoryRegistryHandler;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/api/client/googleapis/apache/v2/GoogleApacheHttpTransport$SocketFactoryRegistryHandler;-><init>(Lcom/google/api/client/googleapis/mtls/MtlsProvider;)V

    .line 4
    .line 5
    .line 6
    new-instance p0, Lax2;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/api/client/googleapis/apache/v2/GoogleApacheHttpTransport$SocketFactoryRegistryHandler;->getSocketFactoryRegistry()Ly43;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 13
    .line 14
    invoke-direct {p0, v1, v2}, Lax2;-><init>(Ly43;Ljava/util/concurrent/TimeUnit;)V

    .line 15
    .line 16
    .line 17
    const/4 v1, -0x1

    .line 18
    iget-object v3, p0, Lax2;->p:Lj00;

    .line 19
    .line 20
    iput v1, v3, Ld0;->l:I

    .line 21
    .line 22
    new-instance v1, Lol1;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v2, v1, Lol1;->i:Ljava/util/concurrent/TimeUnit;

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    iput-boolean v2, v1, Lol1;->d:Z

    .line 31
    .line 32
    const/16 v3, 0xc8

    .line 33
    .line 34
    iput v3, v1, Lol1;->g:I

    .line 35
    .line 36
    const/16 v3, 0x14

    .line 37
    .line 38
    iput v3, v1, Lol1;->h:I

    .line 39
    .line 40
    new-instance v3, Lsv3;

    .line 41
    .line 42
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    const/4 v5, 0x0

    .line 47
    invoke-direct {v3, v5, v4}, Lsv3;-><init>(Lmj1;Ljava/net/ProxySelector;)V

    .line 48
    .line 49
    .line 50
    iput-object v3, v1, Lol1;->c:Lsv3;

    .line 51
    .line 52
    iput-object p0, v1, Lol1;->b:Lax2;

    .line 53
    .line 54
    iput-boolean v2, v1, Lol1;->e:Z

    .line 55
    .line 56
    iput-boolean v2, v1, Lol1;->f:Z

    .line 57
    .line 58
    invoke-virtual {v1}, Lol1;->a()Let1;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    new-instance v1, Lcom/google/api/client/http/apache/v2/ApacheHttpTransport;

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/google/api/client/googleapis/apache/v2/GoogleApacheHttpTransport$SocketFactoryRegistryHandler;->isMtls()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    invoke-direct {v1, p0, v0}, Lcom/google/api/client/http/apache/v2/ApacheHttpTransport;-><init>(Lnl1;Z)V

    .line 69
    .line 70
    .line 71
    return-object v1
.end method
