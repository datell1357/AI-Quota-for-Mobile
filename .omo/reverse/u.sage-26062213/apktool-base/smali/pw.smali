.class final Lpw;
.super Lrd2;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd2;"
    }
.end annotation


# instance fields
.field public final b:Lpe1;


# direct methods
.method public constructor <init>(Lpe1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lpw;->b:Lpe1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final e()Lmd2;
    .locals 1

    .line 1
    new-instance v0, Lqw;

    .line 2
    .line 3
    invoke-direct {v0}, Lmd2;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lpw;->b:Lpe1;

    .line 7
    .line 8
    iput-object p0, v0, Lqw;->B:Lpe1;

    .line 9
    .line 10
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lpw;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lpw;

    .line 12
    .line 13
    iget-object p1, p1, Lpw;->b:Lpe1;

    .line 14
    .line 15
    iget-object p0, p0, Lpw;->b:Lpe1;

    .line 16
    .line 17
    if-eq p0, p1, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    return v0
.end method

.method public final f(Lmd2;)V
    .locals 1

    .line 1
    check-cast p1, Lqw;

    .line 2
    .line 3
    iget-object p0, p0, Lpw;->b:Lpe1;

    .line 4
    .line 5
    iput-object p0, p1, Lqw;->B:Lpe1;

    .line 6
    .line 7
    iget-object v0, p1, Lmd2;->n:Lmd2;

    .line 8
    .line 9
    iget-boolean v0, v0, Lmd2;->A:Z

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x2

    .line 15
    invoke-static {p1, v0}, Lw80;->P(Ljr0;I)Lmm2;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object p1, p1, Lmm2;->G:Lmm2;

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    invoke-virtual {p1, p0, v0}, Lmm2;->k1(Lpe1;Z)V

    .line 25
    .line 26
    .line 27
    :cond_1
    :goto_0
    return-void
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lpw;->b:Lpe1;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
