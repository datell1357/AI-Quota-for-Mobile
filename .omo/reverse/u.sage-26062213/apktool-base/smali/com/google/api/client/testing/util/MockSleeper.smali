.class public Lcom/google/api/client/testing/util/MockSleeper;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lcom/google/api/client/util/Sleeper;


# instance fields
.field private count:I

.field private lastMillis:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/api/client/testing/util/MockSleeper;->count:I

    .line 2
    .line 3
    return p0
.end method

.method public final getLastMillis()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/api/client/testing/util/MockSleeper;->lastMillis:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public sleep(J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/api/client/testing/util/MockSleeper;->count:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/google/api/client/testing/util/MockSleeper;->count:I

    .line 6
    .line 7
    iput-wide p1, p0, Lcom/google/api/client/testing/util/MockSleeper;->lastMillis:J

    .line 8
    .line 9
    return-void
.end method
