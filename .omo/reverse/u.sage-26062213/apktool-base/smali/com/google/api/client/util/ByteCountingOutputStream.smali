.class final Lcom/google/api/client/util/ByteCountingOutputStream;
.super Ljava/io/OutputStream;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field count:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/api/client/util/ByteCountingOutputStream;->count:J

    .line 2
    .line 3
    const-wide/16 v2, 0x1

    .line 4
    .line 5
    add-long/2addr v0, v2

    .line 6
    iput-wide v0, p0, Lcom/google/api/client/util/ByteCountingOutputStream;->count:J

    .line 7
    .line 8
    return-void
.end method

.method public write([BII)V
    .locals 2

    .line 9
    iget-wide p1, p0, Lcom/google/api/client/util/ByteCountingOutputStream;->count:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/api/client/util/ByteCountingOutputStream;->count:J

    return-void
.end method
