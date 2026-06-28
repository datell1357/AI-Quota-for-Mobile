.class public Lcom/google/api/client/util/ByteArrayStreamingContent;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lcom/google/api/client/util/StreamingContent;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final byteArray:[B

.field private final length:I

.field private final offset:I


# direct methods
.method public constructor <init>([B)V
    .locals 2

    const/4 v0, 0x0

    .line 32
    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/api/client/util/ByteArrayStreamingContent;-><init>([BII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, [B

    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/api/client/util/ByteArrayStreamingContent;->byteArray:[B

    .line 11
    .line 12
    if-ltz p2, :cond_0

    .line 13
    .line 14
    if-ltz p3, :cond_0

    .line 15
    .line 16
    add-int v0, p2, p3

    .line 17
    .line 18
    array-length p1, p1

    .line 19
    if-gt v0, p1, :cond_0

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    :goto_0
    invoke-static {p1}, Lcom/google/api/client/util/Preconditions;->checkArgument(Z)V

    .line 25
    .line 26
    .line 27
    iput p2, p0, Lcom/google/api/client/util/ByteArrayStreamingContent;->offset:I

    .line 28
    .line 29
    iput p3, p0, Lcom/google/api/client/util/ByteArrayStreamingContent;->length:I

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/api/client/util/ByteArrayStreamingContent;->byteArray:[B

    .line 2
    .line 3
    iget v1, p0, Lcom/google/api/client/util/ByteArrayStreamingContent;->offset:I

    .line 4
    .line 5
    iget p0, p0, Lcom/google/api/client/util/ByteArrayStreamingContent;->length:I

    .line 6
    .line 7
    invoke-virtual {p1, v0, v1, p0}, Ljava/io/OutputStream;->write([BII)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 11
    .line 12
    .line 13
    return-void
.end method
