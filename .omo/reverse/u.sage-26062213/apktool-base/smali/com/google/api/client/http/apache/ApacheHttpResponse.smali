.class final Lcom/google/api/client/http/apache/ApacheHttpResponse;
.super Lcom/google/api/client/http/LowLevelHttpResponse;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field private final allHeaders:[Lgj1;

.field private final request:Lpm1;

.field private final response:Lvm1;


# direct methods
.method public constructor <init>(Lpm1;Lvm1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/api/client/http/LowLevelHttpResponse;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/api/client/http/apache/ApacheHttpResponse;->request:Lpm1;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/api/client/http/apache/ApacheHttpResponse;->response:Lvm1;

    .line 7
    .line 8
    invoke-interface {p2}, Lim1;->getAllHeaders()[Lgj1;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/google/api/client/http/apache/ApacheHttpResponse;->allHeaders:[Lgj1;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public disconnect()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/client/http/apache/ApacheHttpResponse;->request:Lpm1;

    .line 2
    .line 3
    invoke-virtual {p0}, Lj0;->abort()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/client/http/apache/ApacheHttpResponse;->response:Lvm1;

    .line 2
    .line 3
    invoke-interface {p0}, Lvm1;->getEntity()Lxl1;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return-object p0

    .line 11
    :cond_0
    invoke-interface {p0}, Lxl1;->getContent()Ljava/io/InputStream;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/client/http/apache/ApacheHttpResponse;->response:Lvm1;

    .line 2
    .line 3
    invoke-interface {p0}, Lvm1;->getEntity()Lxl1;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-interface {p0}, Lxl1;->getContentEncoding()Lgj1;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    invoke-interface {p0}, Lsh2;->getValue()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    return-object p0
.end method

.method public getContentLength()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/google/api/client/http/apache/ApacheHttpResponse;->response:Lvm1;

    .line 2
    .line 3
    invoke-interface {p0}, Lvm1;->getEntity()Lxl1;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    const-wide/16 v0, -0x1

    .line 10
    .line 11
    return-wide v0

    .line 12
    :cond_0
    invoke-interface {p0}, Lxl1;->getContentLength()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    return-wide v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/client/http/apache/ApacheHttpResponse;->response:Lvm1;

    .line 2
    .line 3
    invoke-interface {p0}, Lvm1;->getEntity()Lxl1;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-interface {p0}, Lxl1;->getContentType()Lgj1;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    invoke-interface {p0}, Lsh2;->getValue()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    return-object p0
.end method

.method public getHeaderCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/client/http/apache/ApacheHttpResponse;->allHeaders:[Lgj1;

    .line 2
    .line 3
    array-length p0, p0

    .line 4
    return p0
.end method

.method public getHeaderName(I)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/client/http/apache/ApacheHttpResponse;->allHeaders:[Lgj1;

    .line 2
    .line 3
    aget-object p0, p0, p1

    .line 4
    .line 5
    invoke-interface {p0}, Lsh2;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public getHeaderValue(I)Ljava/lang/String;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/google/api/client/http/apache/ApacheHttpResponse;->allHeaders:[Lgj1;

    aget-object p0, p0, p1

    invoke-interface {p0}, Lsh2;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getHeaderValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/client/http/apache/ApacheHttpResponse;->response:Lvm1;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lim1;->getLastHeader(Ljava/lang/String;)Lgj1;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Lsh2;->getValue()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public getReasonPhrase()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/client/http/apache/ApacheHttpResponse;->response:Lvm1;

    .line 2
    .line 3
    invoke-interface {p0}, Lvm1;->b()Lkv;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return-object p0

    .line 11
    :cond_0
    iget-object p0, p0, Lkv;->p:Ljava/lang/String;

    .line 12
    .line 13
    return-object p0
.end method

.method public getStatusCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/client/http/apache/ApacheHttpResponse;->response:Lvm1;

    .line 2
    .line 3
    invoke-interface {p0}, Lvm1;->b()Lkv;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_0
    iget p0, p0, Lkv;->o:I

    .line 12
    .line 13
    return p0
.end method

.method public getStatusLine()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/client/http/apache/ApacheHttpResponse;->response:Lvm1;

    .line 2
    .line 3
    invoke-interface {p0}, Lvm1;->b()Lkv;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method
