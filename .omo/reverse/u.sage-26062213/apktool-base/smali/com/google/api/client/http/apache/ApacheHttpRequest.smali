.class final Lcom/google/api/client/http/apache/ApacheHttpRequest;
.super Lcom/google/api/client/http/LowLevelHttpRequest;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field private final httpClient:Lnl1;

.field private final request:Lpm1;


# direct methods
.method public constructor <init>(Lnl1;Lpm1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/api/client/http/LowLevelHttpRequest;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/api/client/http/apache/ApacheHttpRequest;->httpClient:Lnl1;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/api/client/http/apache/ApacheHttpRequest;->request:Lpm1;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/client/http/apache/ApacheHttpRequest;->request:Lpm1;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Le1;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public execute()Lcom/google/api/client/http/LowLevelHttpResponse;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/api/client/http/LowLevelHttpRequest;->getStreamingContent()Lcom/google/api/client/util/StreamingContent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/api/client/http/apache/ApacheHttpRequest;->request:Lpm1;

    .line 8
    .line 9
    instance-of v1, v0, Lzl1;

    .line 10
    .line 11
    invoke-virtual {v0}, Lpm1;->getRequestLine()Ld73;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lhv;

    .line 16
    .line 17
    iget-object v0, v0, Lhv;->o:Ljava/lang/String;

    .line 18
    .line 19
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v2, "Apache HTTP client does not support %s requests with content."

    .line 24
    .line 25
    invoke-static {v1, v2, v0}, Lcom/google/api/client/util/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    new-instance v0, Lcom/google/api/client/http/apache/ContentEntity;

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/google/api/client/http/LowLevelHttpRequest;->getContentLength()J

    .line 31
    .line 32
    .line 33
    move-result-wide v1

    .line 34
    invoke-virtual {p0}, Lcom/google/api/client/http/LowLevelHttpRequest;->getStreamingContent()Lcom/google/api/client/util/StreamingContent;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-direct {v0, v1, v2, v3}, Lcom/google/api/client/http/apache/ContentEntity;-><init>(JLcom/google/api/client/util/StreamingContent;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/google/api/client/http/LowLevelHttpRequest;->getContentEncoding()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Ld1;->setContentEncoding(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/google/api/client/http/LowLevelHttpRequest;->getContentType()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Ld1;->setContentType(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/google/api/client/http/LowLevelHttpRequest;->getContentLength()J

    .line 56
    .line 57
    .line 58
    move-result-wide v1

    .line 59
    const-wide/16 v3, -0x1

    .line 60
    .line 61
    cmp-long v1, v1, v3

    .line 62
    .line 63
    if-nez v1, :cond_0

    .line 64
    .line 65
    const/4 v1, 0x1

    .line 66
    invoke-virtual {v0, v1}, Ld1;->setChunked(Z)V

    .line 67
    .line 68
    .line 69
    :cond_0
    iget-object v1, p0, Lcom/google/api/client/http/apache/ApacheHttpRequest;->request:Lpm1;

    .line 70
    .line 71
    check-cast v1, Lzl1;

    .line 72
    .line 73
    invoke-interface {v1, v0}, Lzl1;->setEntity(Lxl1;)V

    .line 74
    .line 75
    .line 76
    :cond_1
    new-instance v0, Lcom/google/api/client/http/apache/ApacheHttpResponse;

    .line 77
    .line 78
    iget-object v1, p0, Lcom/google/api/client/http/apache/ApacheHttpRequest;->request:Lpm1;

    .line 79
    .line 80
    iget-object p0, p0, Lcom/google/api/client/http/apache/ApacheHttpRequest;->httpClient:Lnl1;

    .line 81
    .line 82
    invoke-interface {p0, v1}, Lnl1;->execute(Lan1;)Lvm1;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-direct {v0, v1, p0}, Lcom/google/api/client/http/apache/ApacheHttpResponse;-><init>(Lpm1;Lvm1;)V

    .line 87
    .line 88
    .line 89
    return-object v0
.end method

.method public setTimeout(II)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/google/api/client/http/apache/ApacheHttpRequest;->request:Lpm1;

    .line 2
    .line 3
    invoke-virtual {p0}, Le1;->getParams()Lkm1;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    int-to-long v0, p1

    .line 8
    const-string v2, "HTTP parameters"

    .line 9
    .line 10
    invoke-static {p0, v2}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    check-cast p0, Lf1;

    .line 14
    .line 15
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "http.conn-manager.timeout"

    .line 20
    .line 21
    invoke-interface {p0, v0, v1}, Lkm1;->a(Ljava/lang/Object;Ljava/lang/String;)Lkm1;

    .line 22
    .line 23
    .line 24
    const-string v0, "http.connection.timeout"

    .line 25
    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-interface {p0, p1, v0}, Lkm1;->a(Ljava/lang/Object;Ljava/lang/String;)Lkm1;

    .line 31
    .line 32
    .line 33
    const-string p1, "http.socket.timeout"

    .line 34
    .line 35
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-interface {p0, p2, p1}, Lkm1;->a(Ljava/lang/Object;Ljava/lang/String;)Lkm1;

    .line 40
    .line 41
    .line 42
    return-void
.end method
