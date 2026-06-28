.class public Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/http/ExponentialBackOffPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field final exponentialBackOffBuilder:Lcom/google/api/client/util/ExponentialBackOff$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/api/client/util/ExponentialBackOff$Builder;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/google/api/client/util/ExponentialBackOff$Builder;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;->exponentialBackOffBuilder:Lcom/google/api/client/util/ExponentialBackOff$Builder;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public build()Lcom/google/api/client/http/ExponentialBackOffPolicy;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/api/client/http/ExponentialBackOffPolicy;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/api/client/http/ExponentialBackOffPolicy;-><init>(Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final getInitialIntervalMillis()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;->exponentialBackOffBuilder:Lcom/google/api/client/util/ExponentialBackOff$Builder;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/api/client/util/ExponentialBackOff$Builder;->getInitialIntervalMillis()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getMaxElapsedTimeMillis()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;->exponentialBackOffBuilder:Lcom/google/api/client/util/ExponentialBackOff$Builder;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/api/client/util/ExponentialBackOff$Builder;->getMaxElapsedTimeMillis()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getMaxIntervalMillis()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;->exponentialBackOffBuilder:Lcom/google/api/client/util/ExponentialBackOff$Builder;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/api/client/util/ExponentialBackOff$Builder;->getMaxIntervalMillis()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getMultiplier()D
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;->exponentialBackOffBuilder:Lcom/google/api/client/util/ExponentialBackOff$Builder;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/api/client/util/ExponentialBackOff$Builder;->getMultiplier()D

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final getNanoClock()Lcom/google/api/client/util/NanoClock;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;->exponentialBackOffBuilder:Lcom/google/api/client/util/ExponentialBackOff$Builder;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/api/client/util/ExponentialBackOff$Builder;->getNanoClock()Lcom/google/api/client/util/NanoClock;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getRandomizationFactor()D
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;->exponentialBackOffBuilder:Lcom/google/api/client/util/ExponentialBackOff$Builder;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/api/client/util/ExponentialBackOff$Builder;->getRandomizationFactor()D

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public setInitialIntervalMillis(I)Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;->exponentialBackOffBuilder:Lcom/google/api/client/util/ExponentialBackOff$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/api/client/util/ExponentialBackOff$Builder;->setInitialIntervalMillis(I)Lcom/google/api/client/util/ExponentialBackOff$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setMaxElapsedTimeMillis(I)Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;->exponentialBackOffBuilder:Lcom/google/api/client/util/ExponentialBackOff$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/api/client/util/ExponentialBackOff$Builder;->setMaxElapsedTimeMillis(I)Lcom/google/api/client/util/ExponentialBackOff$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setMaxIntervalMillis(I)Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;->exponentialBackOffBuilder:Lcom/google/api/client/util/ExponentialBackOff$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/api/client/util/ExponentialBackOff$Builder;->setMaxIntervalMillis(I)Lcom/google/api/client/util/ExponentialBackOff$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setMultiplier(D)Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;->exponentialBackOffBuilder:Lcom/google/api/client/util/ExponentialBackOff$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/api/client/util/ExponentialBackOff$Builder;->setMultiplier(D)Lcom/google/api/client/util/ExponentialBackOff$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setNanoClock(Lcom/google/api/client/util/NanoClock;)Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;->exponentialBackOffBuilder:Lcom/google/api/client/util/ExponentialBackOff$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/api/client/util/ExponentialBackOff$Builder;->setNanoClock(Lcom/google/api/client/util/NanoClock;)Lcom/google/api/client/util/ExponentialBackOff$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setRandomizationFactor(D)Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/http/ExponentialBackOffPolicy$Builder;->exponentialBackOffBuilder:Lcom/google/api/client/util/ExponentialBackOff$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/api/client/util/ExponentialBackOff$Builder;->setRandomizationFactor(D)Lcom/google/api/client/util/ExponentialBackOff$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method
