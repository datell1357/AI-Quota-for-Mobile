.class final Lcom/google/api/client/http/GzipSupport$OptimisticAvailabilityInputStream;
.super Ljava/io/FilterInputStream;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/http/GzipSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OptimisticAvailabilityInputStream"
.end annotation


# instance fields
.field private lastRead:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/google/api/client/http/GzipSupport$OptimisticAvailabilityInputStream;->lastRead:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1

    .line 1
    iget p0, p0, Lcom/google/api/client/http/GzipSupport$OptimisticAvailabilityInputStream;->lastRead:I

    .line 2
    .line 3
    const/4 v0, -0x1

    .line 4
    if-le p0, v0, :cond_0

    .line 5
    .line 6
    const p0, 0x7fffffff

    .line 7
    .line 8
    .line 9
    return p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return p0
.end method

.method public read()I
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lcom/google/api/client/http/GzipSupport$OptimisticAvailabilityInputStream;->lastRead:I

    .line 6
    .line 7
    return v0
.end method

.method public read([B)I
    .locals 0

    .line 8
    invoke-super {p0, p1}, Ljava/io/FilterInputStream;->read([B)I

    move-result p1

    iput p1, p0, Lcom/google/api/client/http/GzipSupport$OptimisticAvailabilityInputStream;->lastRead:I

    return p1
.end method

.method public read([BII)I
    .locals 0

    .line 9
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result p1

    iput p1, p0, Lcom/google/api/client/http/GzipSupport$OptimisticAvailabilityInputStream;->lastRead:I

    return p1
.end method
