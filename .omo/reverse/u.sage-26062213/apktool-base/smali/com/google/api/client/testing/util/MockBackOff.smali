.class public Lcom/google/api/client/testing/util/MockBackOff;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lcom/google/api/client/util/BackOff;


# instance fields
.field private backOffMillis:J

.field private maxTries:I

.field private numTries:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0xa

    .line 5
    .line 6
    iput v0, p0, Lcom/google/api/client/testing/util/MockBackOff;->maxTries:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getMaxTries()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/api/client/testing/util/MockBackOff;->maxTries:I

    .line 2
    .line 3
    return p0
.end method

.method public final getNumberOfTries()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/api/client/testing/util/MockBackOff;->numTries:I

    .line 2
    .line 3
    return p0
.end method

.method public nextBackOffMillis()J
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/api/client/testing/util/MockBackOff;->numTries:I

    .line 2
    .line 3
    iget v1, p0, Lcom/google/api/client/testing/util/MockBackOff;->maxTries:I

    .line 4
    .line 5
    const-wide/16 v2, -0x1

    .line 6
    .line 7
    if-ge v0, v1, :cond_1

    .line 8
    .line 9
    iget-wide v4, p0, Lcom/google/api/client/testing/util/MockBackOff;->backOffMillis:J

    .line 10
    .line 11
    cmp-long v1, v4, v2

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 17
    .line 18
    iput v0, p0, Lcom/google/api/client/testing/util/MockBackOff;->numTries:I

    .line 19
    .line 20
    return-wide v4

    .line 21
    :cond_1
    :goto_0
    return-wide v2
.end method

.method public reset()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/api/client/testing/util/MockBackOff;->numTries:I

    .line 3
    .line 4
    return-void
.end method

.method public setBackOffMillis(J)Lcom/google/api/client/testing/util/MockBackOff;
    .locals 2

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    cmp-long v0, p1, v0

    .line 10
    .line 11
    if-ltz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
    :goto_1
    invoke-static {v0}, Lcom/google/api/client/util/Preconditions;->checkArgument(Z)V

    .line 18
    .line 19
    .line 20
    iput-wide p1, p0, Lcom/google/api/client/testing/util/MockBackOff;->backOffMillis:J

    .line 21
    .line 22
    return-object p0
.end method

.method public setMaxTries(I)Lcom/google/api/client/testing/util/MockBackOff;
    .locals 1

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    invoke-static {v0}, Lcom/google/api/client/util/Preconditions;->checkArgument(Z)V

    .line 7
    .line 8
    .line 9
    iput p1, p0, Lcom/google/api/client/testing/util/MockBackOff;->maxTries:I

    .line 10
    .line 11
    return-object p0
.end method
