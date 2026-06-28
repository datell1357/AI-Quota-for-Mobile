.class final Lo74;
.super Lrd2;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd2;"
    }
.end annotation


# instance fields
.field public final b:F

.field public final c:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lo74;->b:F

    .line 5
    .line 6
    iput p2, p0, Lo74;->c:F

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final e()Lmd2;
    .locals 2

    .line 1
    new-instance v0, Lp74;

    .line 2
    .line 3
    invoke-direct {v0}, Lmd2;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lo74;->b:F

    .line 7
    .line 8
    iput v1, v0, Lp74;->B:F

    .line 9
    .line 10
    iget p0, p0, Lo74;->c:F

    .line 11
    .line 12
    iput p0, v0, Lp74;->C:F

    .line 13
    .line 14
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lo74;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    check-cast p1, Lo74;

    .line 7
    .line 8
    iget v0, p1, Lo74;->b:F

    .line 9
    .line 10
    iget v1, p0, Lo74;->b:F

    .line 11
    .line 12
    invoke-static {v1, v0}, Lcw0;->b(FF)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget p0, p0, Lo74;->c:F

    .line 19
    .line 20
    iget p1, p1, Lo74;->c:F

    .line 21
    .line 22
    invoke-static {p0, p1}, Lcw0;->b(FF)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-eqz p0, :cond_1

    .line 27
    .line 28
    const/4 p0, 0x1

    .line 29
    return p0

    .line 30
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 31
    return p0
.end method

.method public final f(Lmd2;)V
    .locals 1

    .line 1
    check-cast p1, Lp74;

    .line 2
    .line 3
    iget v0, p0, Lo74;->b:F

    .line 4
    .line 5
    iput v0, p1, Lp74;->B:F

    .line 6
    .line 7
    iget p0, p0, Lo74;->c:F

    .line 8
    .line 9
    iput p0, p1, Lp74;->C:F

    .line 10
    .line 11
    return-void
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lo74;->b:F

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget p0, p0, Lo74;->c:F

    .line 10
    .line 11
    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    add-int/2addr p0, v0

    .line 16
    return p0
.end method
