.class public Lcom/google/api/client/util/LoggingInputStream;
.super Ljava/io/FilterInputStream;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field private final logStream:Lcom/google/api/client/util/LoggingByteArrayOutputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/util/logging/Logger;Ljava/util/logging/Level;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/google/api/client/util/LoggingByteArrayOutputStream;

    .line 5
    .line 6
    invoke-direct {p1, p2, p3, p4}, Lcom/google/api/client/util/LoggingByteArrayOutputStream;-><init>(Ljava/util/logging/Logger;Ljava/util/logging/Level;I)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/google/api/client/util/LoggingInputStream;->logStream:Lcom/google/api/client/util/LoggingByteArrayOutputStream;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/util/LoggingInputStream;->logStream:Lcom/google/api/client/util/LoggingByteArrayOutputStream;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/api/client/util/LoggingByteArrayOutputStream;->close()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final getLogStream()Lcom/google/api/client/util/LoggingByteArrayOutputStream;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/client/util/LoggingInputStream;->logStream:Lcom/google/api/client/util/LoggingByteArrayOutputStream;

    .line 2
    .line 3
    return-object p0
.end method

.method public read()I
    .locals 1

    .line 13
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    .line 14
    iget-object p0, p0, Lcom/google/api/client/util/LoggingInputStream;->logStream:Lcom/google/api/client/util/LoggingByteArrayOutputStream;

    invoke-virtual {p0, v0}, Lcom/google/api/client/util/LoggingByteArrayOutputStream;->write(I)V

    return v0
.end method

.method public read([BII)I
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    if-lez p3, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/google/api/client/util/LoggingInputStream;->logStream:Lcom/google/api/client/util/LoggingByteArrayOutputStream;

    .line 8
    .line 9
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/api/client/util/LoggingByteArrayOutputStream;->write([BII)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return p3
.end method
