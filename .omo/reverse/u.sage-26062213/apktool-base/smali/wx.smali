.class final Lwx;
.super Lrd2;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd2;"
    }
.end annotation


# instance fields
.field public final b:Lwc;


# direct methods
.method public constructor <init>(Lwc;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lwx;->b:Lwc;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final e()Lmd2;
    .locals 1

    .line 1
    new-instance v0, Lyx;

    .line 2
    .line 3
    iget-object p0, p0, Lwx;->b:Lwc;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lyx;-><init>(Lwc;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-eq p0, p1, :cond_1

    .line 2
    .line 3
    instance-of v0, p1, Lwx;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p1, Lwx;

    .line 8
    .line 9
    iget-object p1, p1, Lwx;->b:Lwc;

    .line 10
    .line 11
    iget-object p0, p0, Lwx;->b:Lwc;

    .line 12
    .line 13
    if-ne p0, p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return p0

    .line 18
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 19
    return p0
.end method

.method public final f(Lmd2;)V
    .locals 1

    .line 1
    check-cast p1, Lyx;

    .line 2
    .line 3
    iget-object p0, p0, Lwx;->b:Lwc;

    .line 4
    .line 5
    iput-object p0, p1, Lyx;->B:Lwc;

    .line 6
    .line 7
    iget-boolean v0, p1, Lmd2;->A:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object p1, p1, Lyx;->C:Lc8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lwc;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lwx;->b:Lwc;

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
