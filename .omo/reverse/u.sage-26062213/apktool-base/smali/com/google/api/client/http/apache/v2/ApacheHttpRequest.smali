.class final Lcom/google/api/client/http/apache/v2/ApacheHttpRequest;
.super Lcom/google/api/client/http/LowLevelHttpRequest;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field private final httpClient:Lnl1;

.field private final request:Lpm1;

.field private requestConfig:Lu63;


# direct methods
.method public constructor <init>(Lnl1;Lpm1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/api/client/http/LowLevelHttpRequest;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/api/client/http/apache/v2/ApacheHttpRequest;->httpClient:Lnl1;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/api/client/http/apache/v2/ApacheHttpRequest;->request:Lpm1;

    .line 7
    .line 8
    new-instance p1, Lu63;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    const/16 p2, 0x32

    .line 14
    .line 15
    iput p2, p1, Lu63;->d:I

    .line 16
    .line 17
    const/4 p2, 0x1

    .line 18
    iput-boolean p2, p1, Lu63;->c:Z

    .line 19
    .line 20
    iput-boolean p2, p1, Lu63;->e:Z

    .line 21
    .line 22
    const/4 p2, -0x1

    .line 23
    iput p2, p1, Lu63;->f:I

    .line 24
    .line 25
    iput p2, p1, Lu63;->g:I

    .line 26
    .line 27
    iput p2, p1, Lu63;->h:I

    .line 28
    .line 29
    const/4 p2, 0x0

    .line 30
    iput-boolean p2, p1, Lu63;->b:Z

    .line 31
    .line 32
    iput-boolean p2, p1, Lu63;->i:Z

    .line 33
    .line 34
    iput-boolean p2, p1, Lu63;->a:Z

    .line 35
    .line 36
    iput-object p1, p0, Lcom/google/api/client/http/apache/v2/ApacheHttpRequest;->requestConfig:Lu63;

    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/client/http/apache/v2/ApacheHttpRequest;->request:Lpm1;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Le1;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public execute()Lcom/google/api/client/http/LowLevelHttpResponse;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/api/client/http/LowLevelHttpRequest;->getStreamingContent()Lcom/google/api/client/util/StreamingContent;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    iget-object v1, v0, Lcom/google/api/client/http/apache/v2/ApacheHttpRequest;->request:Lpm1;

    .line 10
    .line 11
    instance-of v2, v1, Lzl1;

    .line 12
    .line 13
    invoke-virtual {v1}, Lpm1;->getRequestLine()Ld73;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lhv;

    .line 18
    .line 19
    iget-object v1, v1, Lhv;->o:Ljava/lang/String;

    .line 20
    .line 21
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v3, "Apache HTTP client does not support %s requests with content."

    .line 26
    .line 27
    invoke-static {v2, v3, v1}, Lcom/google/api/client/util/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    new-instance v1, Lcom/google/api/client/http/apache/v2/ContentEntity;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/google/api/client/http/LowLevelHttpRequest;->getContentLength()J

    .line 33
    .line 34
    .line 35
    move-result-wide v2

    .line 36
    invoke-virtual {v0}, Lcom/google/api/client/http/LowLevelHttpRequest;->getStreamingContent()Lcom/google/api/client/util/StreamingContent;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-direct {v1, v2, v3, v4}, Lcom/google/api/client/http/apache/v2/ContentEntity;-><init>(JLcom/google/api/client/util/StreamingContent;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/google/api/client/http/LowLevelHttpRequest;->getContentEncoding()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v1, v2}, Ld1;->setContentEncoding(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/google/api/client/http/LowLevelHttpRequest;->getContentType()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v1, v2}, Ld1;->setContentType(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/google/api/client/http/LowLevelHttpRequest;->getContentLength()J

    .line 58
    .line 59
    .line 60
    move-result-wide v2

    .line 61
    const-wide/16 v4, -0x1

    .line 62
    .line 63
    cmp-long v2, v2, v4

    .line 64
    .line 65
    if-nez v2, :cond_0

    .line 66
    .line 67
    const/4 v2, 0x1

    .line 68
    invoke-virtual {v1, v2}, Ld1;->setChunked(Z)V

    .line 69
    .line 70
    .line 71
    :cond_0
    iget-object v2, v0, Lcom/google/api/client/http/apache/v2/ApacheHttpRequest;->request:Lpm1;

    .line 72
    .line 73
    check-cast v2, Lzl1;

    .line 74
    .line 75
    invoke-interface {v2, v1}, Lzl1;->setEntity(Lxl1;)V

    .line 76
    .line 77
    .line 78
    :cond_1
    iget-object v1, v0, Lcom/google/api/client/http/apache/v2/ApacheHttpRequest;->request:Lpm1;

    .line 79
    .line 80
    iget-object v2, v0, Lcom/google/api/client/http/apache/v2/ApacheHttpRequest;->requestConfig:Lu63;

    .line 81
    .line 82
    new-instance v3, Lv63;

    .line 83
    .line 84
    iget-boolean v7, v2, Lu63;->a:Z

    .line 85
    .line 86
    iget-boolean v9, v2, Lu63;->b:Z

    .line 87
    .line 88
    iget-boolean v10, v2, Lu63;->c:Z

    .line 89
    .line 90
    iget v12, v2, Lu63;->d:I

    .line 91
    .line 92
    iget-boolean v13, v2, Lu63;->e:Z

    .line 93
    .line 94
    iget v4, v2, Lu63;->f:I

    .line 95
    .line 96
    iget v5, v2, Lu63;->g:I

    .line 97
    .line 98
    iget v6, v2, Lu63;->h:I

    .line 99
    .line 100
    iget-boolean v2, v2, Lu63;->i:Z

    .line 101
    .line 102
    move/from16 v16, v4

    .line 103
    .line 104
    const/4 v4, 0x0

    .line 105
    move/from16 v17, v5

    .line 106
    .line 107
    const/4 v5, 0x0

    .line 108
    move/from16 v18, v6

    .line 109
    .line 110
    const/4 v6, 0x0

    .line 111
    const/4 v8, 0x0

    .line 112
    const/4 v11, 0x0

    .line 113
    const/4 v14, 0x0

    .line 114
    const/4 v15, 0x0

    .line 115
    move/from16 v19, v2

    .line 116
    .line 117
    invoke-direct/range {v3 .. v19}, Lv63;-><init>(ZLem1;Ljava/net/InetAddress;ZLjava/lang/String;ZZZIZLjava/util/Collection;Ljava/util/Collection;IIIZ)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, v3}, Lpm1;->setConfig(Lv63;)V

    .line 121
    .line 122
    .line 123
    new-instance v1, Lcom/google/api/client/http/apache/v2/ApacheHttpResponse;

    .line 124
    .line 125
    iget-object v2, v0, Lcom/google/api/client/http/apache/v2/ApacheHttpRequest;->request:Lpm1;

    .line 126
    .line 127
    iget-object v0, v0, Lcom/google/api/client/http/apache/v2/ApacheHttpRequest;->httpClient:Lnl1;

    .line 128
    .line 129
    invoke-interface {v0, v2}, Lnl1;->execute(Lan1;)Lvm1;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-direct {v1, v2, v0}, Lcom/google/api/client/http/apache/v2/ApacheHttpResponse;-><init>(Lpm1;Lvm1;)V

    .line 134
    .line 135
    .line 136
    return-object v1
.end method

.method public setTimeout(II)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/client/http/apache/v2/ApacheHttpRequest;->requestConfig:Lu63;

    .line 2
    .line 3
    iput p1, p0, Lu63;->g:I

    .line 4
    .line 5
    iput p2, p0, Lu63;->h:I

    .line 6
    .line 7
    return-void
.end method
