.class public final Laf;
.super Lbf;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Laf;->a:F

    .line 5
    .line 6
    iput p2, p0, Laf;->b:F

    .line 7
    .line 8
    iput p3, p0, Laf;->c:F

    .line 9
    .line 10
    iput p4, p0, Laf;->d:F

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(I)F
    .locals 1

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_2

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p1, v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p1, v0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :cond_0
    iget p0, p0, Laf;->d:F

    .line 15
    .line 16
    return p0

    .line 17
    :cond_1
    iget p0, p0, Laf;->c:F

    .line 18
    .line 19
    return p0

    .line 20
    :cond_2
    iget p0, p0, Laf;->b:F

    .line 21
    .line 22
    return p0

    .line 23
    :cond_3
    iget p0, p0, Laf;->a:F

    .line 24
    .line 25
    return p0
.end method

.method public final b()I
    .locals 0

    .line 1
    const/4 p0, 0x4

    .line 2
    return p0
.end method

.method public final c()Lbf;
    .locals 1

    .line 1
    new-instance p0, Laf;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0, v0, v0, v0}, Laf;-><init>(FFFF)V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public final d()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Laf;->a:F

    .line 3
    .line 4
    iput v0, p0, Laf;->b:F

    .line 5
    .line 6
    iput v0, p0, Laf;->c:F

    .line 7
    .line 8
    iput v0, p0, Laf;->d:F

    .line 9
    .line 10
    return-void
.end method

.method public final e(IF)V
    .locals 1

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_2

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p1, v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p1, v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iput p2, p0, Laf;->d:F

    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    iput p2, p0, Laf;->c:F

    .line 17
    .line 18
    return-void

    .line 19
    :cond_2
    iput p2, p0, Laf;->b:F

    .line 20
    .line 21
    return-void

    .line 22
    :cond_3
    iput p2, p0, Laf;->a:F

    .line 23
    .line 24
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Laf;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Laf;

    .line 6
    .line 7
    iget v0, p1, Laf;->a:F

    .line 8
    .line 9
    iget v1, p0, Laf;->a:F

    .line 10
    .line 11
    cmpg-float v0, v0, v1

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget v0, p1, Laf;->b:F

    .line 16
    .line 17
    iget v1, p0, Laf;->b:F

    .line 18
    .line 19
    cmpg-float v0, v0, v1

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    iget v0, p1, Laf;->c:F

    .line 24
    .line 25
    iget v1, p0, Laf;->c:F

    .line 26
    .line 27
    cmpg-float v0, v0, v1

    .line 28
    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    iget p1, p1, Laf;->d:F

    .line 32
    .line 33
    iget p0, p0, Laf;->d:F

    .line 34
    .line 35
    cmpg-float p0, p1, p0

    .line 36
    .line 37
    if-nez p0, :cond_0

    .line 38
    .line 39
    const/4 p0, 0x1

    .line 40
    return p0

    .line 41
    :cond_0
    const/4 p0, 0x0

    .line 42
    return p0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Laf;->a:F

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x1f

    .line 8
    .line 9
    mul-int/2addr v0, v1

    .line 10
    iget v2, p0, Laf;->b:F

    .line 11
    .line 12
    invoke-static {v2, v0, v1}, Ldi0;->l(FII)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget v2, p0, Laf;->c:F

    .line 17
    .line 18
    invoke-static {v2, v0, v1}, Ldi0;->l(FII)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget p0, p0, Laf;->d:F

    .line 23
    .line 24
    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    add-int/2addr p0, v0

    .line 29
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    iget v0, p0, Laf;->a:F

    .line 2
    .line 3
    iget v1, p0, Laf;->b:F

    .line 4
    .line 5
    iget v2, p0, Laf;->c:F

    .line 6
    .line 7
    iget p0, p0, Laf;->d:F

    .line 8
    .line 9
    const-string v3, ", v2 = "

    .line 10
    .line 11
    const-string v4, ", v3 = "

    .line 12
    .line 13
    const-string v5, "AnimationVector4D: v1 = "

    .line 14
    .line 15
    invoke-static {v5, v0, v3, v1, v4}, Ldi0;->z(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, ", v4 = "

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method
