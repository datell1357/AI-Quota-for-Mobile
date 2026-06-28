.class public final Lnz1;
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

.field public final c:Z


# direct methods
.method public constructor <init>(FZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lnz1;->b:F

    .line 5
    .line 6
    iput-boolean p2, p0, Lnz1;->c:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final e()Lmd2;
    .locals 2

    .line 1
    new-instance v0, Loz1;

    .line 2
    .line 3
    invoke-direct {v0}, Lmd2;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lnz1;->b:F

    .line 7
    .line 8
    iput v1, v0, Loz1;->B:F

    .line 9
    .line 10
    iget-boolean p0, p0, Lnz1;->c:Z

    .line 11
    .line 12
    iput-boolean p0, v0, Loz1;->C:Z

    .line 13
    .line 14
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lnz1;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    check-cast p1, Lnz1;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_1
    const/4 p1, 0x0

    .line 13
    :goto_0
    const/4 v1, 0x0

    .line 14
    if-nez p1, :cond_2

    .line 15
    .line 16
    return v1

    .line 17
    :cond_2
    iget v2, p0, Lnz1;->b:F

    .line 18
    .line 19
    iget v3, p1, Lnz1;->b:F

    .line 20
    .line 21
    cmpg-float v2, v2, v3

    .line 22
    .line 23
    if-nez v2, :cond_3

    .line 24
    .line 25
    iget-boolean p0, p0, Lnz1;->c:Z

    .line 26
    .line 27
    iget-boolean p1, p1, Lnz1;->c:Z

    .line 28
    .line 29
    if-ne p0, p1, :cond_3

    .line 30
    .line 31
    return v0

    .line 32
    :cond_3
    return v1
.end method

.method public final f(Lmd2;)V
    .locals 1

    .line 1
    check-cast p1, Loz1;

    .line 2
    .line 3
    iget v0, p0, Lnz1;->b:F

    .line 4
    .line 5
    iput v0, p1, Loz1;->B:F

    .line 6
    .line 7
    iget-boolean p0, p0, Lnz1;->c:Z

    .line 8
    .line 9
    iput-boolean p0, p1, Loz1;->C:Z

    .line 10
    .line 11
    return-void
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lnz1;->b:F

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
    iget-boolean p0, p0, Lnz1;->c:Z

    .line 10
    .line 11
    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    add-int/2addr p0, v0

    .line 16
    return p0
.end method
