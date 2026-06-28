.class public Lcom/google/api/client/util/ExponentialBackOff;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lcom/google/api/client/util/BackOff;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/util/ExponentialBackOff$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_INITIAL_INTERVAL_MILLIS:I = 0x1f4

.field public static final DEFAULT_MAX_ELAPSED_TIME_MILLIS:I = 0xdbba0

.field public static final DEFAULT_MAX_INTERVAL_MILLIS:I = 0xea60

.field public static final DEFAULT_MULTIPLIER:D = 1.5

.field public static final DEFAULT_RANDOMIZATION_FACTOR:D = 0.5


# instance fields
.field private currentIntervalMillis:I

.field private final initialIntervalMillis:I

.field private final maxElapsedTimeMillis:I

.field private final maxIntervalMillis:I

.field private final multiplier:D

.field private final nanoClock:Lcom/google/api/client/util/NanoClock;

.field private final randomizationFactor:D

.field startTimeNanos:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 84
    new-instance v0, Lcom/google/api/client/util/ExponentialBackOff$Builder;

    invoke-direct {v0}, Lcom/google/api/client/util/ExponentialBackOff$Builder;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/api/client/util/ExponentialBackOff;-><init>(Lcom/google/api/client/util/ExponentialBackOff$Builder;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/api/client/util/ExponentialBackOff$Builder;)V
    .locals 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget v0, p1, Lcom/google/api/client/util/ExponentialBackOff$Builder;->initialIntervalMillis:I

    .line 5
    .line 6
    iput v0, p0, Lcom/google/api/client/util/ExponentialBackOff;->initialIntervalMillis:I

    .line 7
    .line 8
    iget-wide v1, p1, Lcom/google/api/client/util/ExponentialBackOff$Builder;->randomizationFactor:D

    .line 9
    .line 10
    iput-wide v1, p0, Lcom/google/api/client/util/ExponentialBackOff;->randomizationFactor:D

    .line 11
    .line 12
    iget-wide v3, p1, Lcom/google/api/client/util/ExponentialBackOff$Builder;->multiplier:D

    .line 13
    .line 14
    iput-wide v3, p0, Lcom/google/api/client/util/ExponentialBackOff;->multiplier:D

    .line 15
    .line 16
    iget v5, p1, Lcom/google/api/client/util/ExponentialBackOff$Builder;->maxIntervalMillis:I

    .line 17
    .line 18
    iput v5, p0, Lcom/google/api/client/util/ExponentialBackOff;->maxIntervalMillis:I

    .line 19
    .line 20
    iget v6, p1, Lcom/google/api/client/util/ExponentialBackOff$Builder;->maxElapsedTimeMillis:I

    .line 21
    .line 22
    iput v6, p0, Lcom/google/api/client/util/ExponentialBackOff;->maxElapsedTimeMillis:I

    .line 23
    .line 24
    iget-object p1, p1, Lcom/google/api/client/util/ExponentialBackOff$Builder;->nanoClock:Lcom/google/api/client/util/NanoClock;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/google/api/client/util/ExponentialBackOff;->nanoClock:Lcom/google/api/client/util/NanoClock;

    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    const/4 v7, 0x1

    .line 30
    if-lez v0, :cond_0

    .line 31
    .line 32
    move v8, v7

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v8, p1

    .line 35
    :goto_0
    invoke-static {v8}, Lcom/google/api/client/util/Preconditions;->checkArgument(Z)V

    .line 36
    .line 37
    .line 38
    const-wide/16 v8, 0x0

    .line 39
    .line 40
    cmpg-double v8, v8, v1

    .line 41
    .line 42
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    .line 43
    .line 44
    if-gtz v8, :cond_1

    .line 45
    .line 46
    cmpg-double v1, v1, v9

    .line 47
    .line 48
    if-gez v1, :cond_1

    .line 49
    .line 50
    move v1, v7

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    move v1, p1

    .line 53
    :goto_1
    invoke-static {v1}, Lcom/google/api/client/util/Preconditions;->checkArgument(Z)V

    .line 54
    .line 55
    .line 56
    cmpl-double v1, v3, v9

    .line 57
    .line 58
    if-ltz v1, :cond_2

    .line 59
    .line 60
    move v1, v7

    .line 61
    goto :goto_2

    .line 62
    :cond_2
    move v1, p1

    .line 63
    :goto_2
    invoke-static {v1}, Lcom/google/api/client/util/Preconditions;->checkArgument(Z)V

    .line 64
    .line 65
    .line 66
    if-lt v5, v0, :cond_3

    .line 67
    .line 68
    move v0, v7

    .line 69
    goto :goto_3

    .line 70
    :cond_3
    move v0, p1

    .line 71
    :goto_3
    invoke-static {v0}, Lcom/google/api/client/util/Preconditions;->checkArgument(Z)V

    .line 72
    .line 73
    .line 74
    if-lez v6, :cond_4

    .line 75
    .line 76
    move p1, v7

    .line 77
    :cond_4
    invoke-static {p1}, Lcom/google/api/client/util/Preconditions;->checkArgument(Z)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/google/api/client/util/ExponentialBackOff;->reset()V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public static getRandomValueFromInterval(DDI)I
    .locals 4

    .line 1
    int-to-double v0, p4

    .line 2
    mul-double/2addr p0, v0

    .line 3
    sub-double v2, v0, p0

    .line 4
    .line 5
    add-double/2addr v0, p0

    .line 6
    sub-double/2addr v0, v2

    .line 7
    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    .line 8
    .line 9
    add-double/2addr v0, p0

    .line 10
    mul-double/2addr v0, p2

    .line 11
    add-double/2addr v0, v2

    .line 12
    double-to-int p0, v0

    .line 13
    return p0
.end method

.method private incrementCurrentInterval()V
    .locals 8

    .line 1
    iget v0, p0, Lcom/google/api/client/util/ExponentialBackOff;->currentIntervalMillis:I

    .line 2
    .line 3
    int-to-double v1, v0

    .line 4
    iget v3, p0, Lcom/google/api/client/util/ExponentialBackOff;->maxIntervalMillis:I

    .line 5
    .line 6
    int-to-double v4, v3

    .line 7
    iget-wide v6, p0, Lcom/google/api/client/util/ExponentialBackOff;->multiplier:D

    .line 8
    .line 9
    div-double/2addr v4, v6

    .line 10
    cmpl-double v1, v1, v4

    .line 11
    .line 12
    if-ltz v1, :cond_0

    .line 13
    .line 14
    iput v3, p0, Lcom/google/api/client/util/ExponentialBackOff;->currentIntervalMillis:I

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    int-to-double v0, v0

    .line 18
    mul-double/2addr v0, v6

    .line 19
    double-to-int v0, v0

    .line 20
    iput v0, p0, Lcom/google/api/client/util/ExponentialBackOff;->currentIntervalMillis:I

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final getCurrentIntervalMillis()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/api/client/util/ExponentialBackOff;->currentIntervalMillis:I

    .line 2
    .line 3
    return p0
.end method

.method public final getElapsedTimeMillis()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/api/client/util/ExponentialBackOff;->nanoClock:Lcom/google/api/client/util/NanoClock;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/api/client/util/NanoClock;->nanoTime()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-wide v2, p0, Lcom/google/api/client/util/ExponentialBackOff;->startTimeNanos:J

    .line 8
    .line 9
    sub-long/2addr v0, v2

    .line 10
    const-wide/32 v2, 0xf4240

    .line 11
    .line 12
    .line 13
    div-long/2addr v0, v2

    .line 14
    return-wide v0
.end method

.method public final getInitialIntervalMillis()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/api/client/util/ExponentialBackOff;->initialIntervalMillis:I

    .line 2
    .line 3
    return p0
.end method

.method public final getMaxElapsedTimeMillis()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/api/client/util/ExponentialBackOff;->maxElapsedTimeMillis:I

    .line 2
    .line 3
    return p0
.end method

.method public final getMaxIntervalMillis()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/api/client/util/ExponentialBackOff;->maxIntervalMillis:I

    .line 2
    .line 3
    return p0
.end method

.method public final getMultiplier()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/api/client/util/ExponentialBackOff;->multiplier:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getRandomizationFactor()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/api/client/util/ExponentialBackOff;->randomizationFactor:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public nextBackOffMillis()J
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/api/client/util/ExponentialBackOff;->getElapsedTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget v2, p0, Lcom/google/api/client/util/ExponentialBackOff;->maxElapsedTimeMillis:I

    .line 6
    .line 7
    int-to-long v2, v2

    .line 8
    cmp-long v0, v0, v2

    .line 9
    .line 10
    if-lez v0, :cond_0

    .line 11
    .line 12
    const-wide/16 v0, -0x1

    .line 13
    .line 14
    return-wide v0

    .line 15
    :cond_0
    iget-wide v0, p0, Lcom/google/api/client/util/ExponentialBackOff;->randomizationFactor:D

    .line 16
    .line 17
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    iget v4, p0, Lcom/google/api/client/util/ExponentialBackOff;->currentIntervalMillis:I

    .line 22
    .line 23
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/api/client/util/ExponentialBackOff;->getRandomValueFromInterval(DDI)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-direct {p0}, Lcom/google/api/client/util/ExponentialBackOff;->incrementCurrentInterval()V

    .line 28
    .line 29
    .line 30
    int-to-long v0, v0

    .line 31
    return-wide v0
.end method

.method public final reset()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/api/client/util/ExponentialBackOff;->initialIntervalMillis:I

    .line 2
    .line 3
    iput v0, p0, Lcom/google/api/client/util/ExponentialBackOff;->currentIntervalMillis:I

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/api/client/util/ExponentialBackOff;->nanoClock:Lcom/google/api/client/util/NanoClock;

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/google/api/client/util/NanoClock;->nanoTime()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    iput-wide v0, p0, Lcom/google/api/client/util/ExponentialBackOff;->startTimeNanos:J

    .line 12
    .line 13
    return-void
.end method
