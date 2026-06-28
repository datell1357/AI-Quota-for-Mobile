.class public final Ln93;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lzp1;


# instance fields
.field public final a:Z

.field public final b:F

.field public final c:J

.field public final d:Ljl3;

.field public final e:Z

.field public final f:Z

.field public final g:Z

.field public final h:Z


# direct methods
.method public constructor <init>(ZFJLjl3;Z)V
    .locals 2

    .line 1
    if-nez p5, :cond_3

    .line 2
    .line 3
    new-instance p5, Lcw0;

    .line 4
    .line 5
    invoke-direct {p5, p2}, Lcw0;-><init>(F)V

    .line 6
    .line 7
    .line 8
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 9
    .line 10
    invoke-static {p2, v0}, Lcw0;->b(FF)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object p5, v1

    .line 19
    :goto_0
    if-eqz p5, :cond_1

    .line 20
    .line 21
    iget p5, p5, Lcw0;->n:F

    .line 22
    .line 23
    invoke-static {p5}, Loa3;->a(F)Lna3;

    .line 24
    .line 25
    .line 26
    move-result-object p5

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move-object p5, v1

    .line 29
    :goto_1
    if-eqz p5, :cond_2

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_2
    sget-object p5, Lk75;->d:Lfk1;

    .line 33
    .line 34
    :cond_3
    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-boolean p1, p0, Ln93;->a:Z

    .line 38
    .line 39
    iput p2, p0, Ln93;->b:F

    .line 40
    .line 41
    iput-wide p3, p0, Ln93;->c:J

    .line 42
    .line 43
    iput-object p5, p0, Ln93;->d:Ljl3;

    .line 44
    .line 45
    const/4 p1, 0x1

    .line 46
    iput-boolean p1, p0, Ln93;->e:Z

    .line 47
    .line 48
    iput-boolean p6, p0, Ln93;->f:Z

    .line 49
    .line 50
    iput-boolean p1, p0, Ln93;->g:Z

    .line 51
    .line 52
    iput-boolean p1, p0, Ln93;->h:Z

    .line 53
    .line 54
    return-void
.end method


# virtual methods
.method public final a(Lxs1;)Ljr0;
    .locals 10

    .line 1
    new-instance v4, Lie5;

    .line 2
    .line 3
    invoke-direct {v4, p0}, Lie5;-><init>(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lvr0;

    .line 7
    .line 8
    iget-boolean v8, p0, Ln93;->g:Z

    .line 9
    .line 10
    iget-boolean v9, p0, Ln93;->h:Z

    .line 11
    .line 12
    iget-boolean v2, p0, Ln93;->a:Z

    .line 13
    .line 14
    iget v3, p0, Ln93;->b:F

    .line 15
    .line 16
    iget-object v5, p0, Ln93;->d:Ljl3;

    .line 17
    .line 18
    iget-boolean v6, p0, Ln93;->e:Z

    .line 19
    .line 20
    iget-boolean v7, p0, Ln93;->f:Z

    .line 21
    .line 22
    move-object v1, p1

    .line 23
    invoke-direct/range {v0 .. v9}, Lvr0;-><init>(Lxs1;ZFLw70;Ljl3;ZZZZ)V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    instance-of v0, p1, Ln93;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Ln93;

    .line 10
    .line 11
    iget-boolean v0, p1, Ln93;->a:Z

    .line 12
    .line 13
    iget-boolean v1, p0, Ln93;->a:Z

    .line 14
    .line 15
    if-eq v1, v0, :cond_2

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_2
    iget v0, p0, Ln93;->b:F

    .line 19
    .line 20
    iget v1, p1, Ln93;->b:F

    .line 21
    .line 22
    invoke-static {v0, v1}, Lcw0;->b(FF)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_3

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_3
    iget-wide v0, p0, Ln93;->c:J

    .line 30
    .line 31
    iget-wide v2, p1, Ln93;->c:J

    .line 32
    .line 33
    invoke-static {v0, v1, v2, v3}, Lt70;->c(JJ)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_4

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_4
    iget-object v0, p0, Ln93;->d:Ljl3;

    .line 41
    .line 42
    iget-object v1, p1, Ln93;->d:Ljl3;

    .line 43
    .line 44
    invoke-static {v0, v1}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_5

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_5
    iget-boolean v0, p0, Ln93;->e:Z

    .line 52
    .line 53
    iget-boolean v1, p1, Ln93;->e:Z

    .line 54
    .line 55
    if-eq v0, v1, :cond_6

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_6
    iget-boolean v0, p0, Ln93;->f:Z

    .line 59
    .line 60
    iget-boolean v1, p1, Ln93;->f:Z

    .line 61
    .line 62
    if-eq v0, v1, :cond_7

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_7
    iget-boolean v0, p0, Ln93;->g:Z

    .line 66
    .line 67
    iget-boolean v1, p1, Ln93;->g:Z

    .line 68
    .line 69
    if-eq v0, v1, :cond_8

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_8
    iget-boolean p0, p0, Ln93;->h:Z

    .line 73
    .line 74
    iget-boolean p1, p1, Ln93;->h:Z

    .line 75
    .line 76
    if-eq p0, p1, :cond_9

    .line 77
    .line 78
    :goto_0
    const/4 p0, 0x0

    .line 79
    return p0

    .line 80
    :cond_9
    :goto_1
    const/4 p0, 0x1

    .line 81
    return p0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-boolean v0, p0, Ln93;->a:Z

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

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
    iget v2, p0, Ln93;->b:F

    .line 11
    .line 12
    const/16 v3, 0x3c1

    .line 13
    .line 14
    invoke-static {v2, v0, v3}, Ldi0;->l(FII)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    sget v2, Lt70;->g:I

    .line 19
    .line 20
    iget-wide v2, p0, Ln93;->c:J

    .line 21
    .line 22
    invoke-static {v0, v1, v2, v3}, Lxw1;->l(IIJ)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iget-object v2, p0, Ln93;->d:Ljl3;

    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    add-int/2addr v2, v0

    .line 33
    mul-int/2addr v2, v1

    .line 34
    iget-boolean v0, p0, Ln93;->e:Z

    .line 35
    .line 36
    invoke-static {v2, v0, v1}, Lxw1;->n(IZI)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    iget-boolean v2, p0, Ln93;->f:Z

    .line 41
    .line 42
    invoke-static {v0, v2, v1}, Lxw1;->n(IZI)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    iget-boolean v2, p0, Ln93;->g:Z

    .line 47
    .line 48
    invoke-static {v0, v2, v1}, Lxw1;->n(IZI)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    iget-boolean p0, p0, Ln93;->h:Z

    .line 53
    .line 54
    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    add-int/2addr p0, v0

    .line 59
    return p0
.end method
