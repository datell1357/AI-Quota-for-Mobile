.class public final Lcom/google/api/client/http/InputStreamContent;
.super Lcom/google/api/client/http/AbstractInputStreamContent;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field private final inputStream:Ljava/io/InputStream;

.field private length:J

.field private retrySupported:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/api/client/http/AbstractInputStreamContent;-><init>(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, -0x1

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/google/api/client/http/InputStreamContent;->length:J

    .line 7
    .line 8
    invoke-static {p2}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Ljava/io/InputStream;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/google/api/client/http/InputStreamContent;->inputStream:Ljava/io/InputStream;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/client/http/InputStreamContent;->inputStream:Ljava/io/InputStream;

    .line 2
    .line 3
    return-object p0
.end method

.method public getLength()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/api/client/http/InputStreamContent;->length:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public retrySupported()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/api/client/http/InputStreamContent;->retrySupported:Z

    .line 2
    .line 3
    return p0
.end method

.method public bridge synthetic setCloseInputStream(Z)Lcom/google/api/client/http/AbstractInputStreamContent;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/InputStreamContent;->setCloseInputStream(Z)Lcom/google/api/client/http/InputStreamContent;

    move-result-object p0

    return-object p0
.end method

.method public setCloseInputStream(Z)Lcom/google/api/client/http/InputStreamContent;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/api/client/http/AbstractInputStreamContent;->setCloseInputStream(Z)Lcom/google/api/client/http/AbstractInputStreamContent;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/google/api/client/http/InputStreamContent;

    .line 6
    .line 7
    return-object p0
.end method

.method public setLength(J)Lcom/google/api/client/http/InputStreamContent;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/api/client/http/InputStreamContent;->length:J

    .line 2
    .line 3
    return-object p0
.end method

.method public setRetrySupported(Z)Lcom/google/api/client/http/InputStreamContent;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/api/client/http/InputStreamContent;->retrySupported:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public bridge synthetic setType(Ljava/lang/String;)Lcom/google/api/client/http/AbstractInputStreamContent;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/InputStreamContent;->setType(Ljava/lang/String;)Lcom/google/api/client/http/InputStreamContent;

    move-result-object p0

    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/google/api/client/http/InputStreamContent;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/api/client/http/AbstractInputStreamContent;->setType(Ljava/lang/String;)Lcom/google/api/client/http/AbstractInputStreamContent;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/google/api/client/http/InputStreamContent;

    .line 6
    .line 7
    return-object p0
.end method
