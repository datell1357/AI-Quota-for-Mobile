.class public abstract Lcv2;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Las0;


# instance fields
.field public n:Z


# direct methods
.method public static final a(Lcv2;Ldv2;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    instance-of v0, p1, Lde2;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    check-cast p1, Lde2;

    .line 9
    .line 10
    iget-boolean p0, p0, Lcv2;->n:Z

    .line 11
    .line 12
    invoke-interface {p1, p0}, Lde2;->m(Z)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public static h(Lcv2;Ldv2;II)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    int-to-long v0, p2

    .line 5
    const/16 p2, 0x20

    .line 6
    .line 7
    shl-long/2addr v0, p2

    .line 8
    int-to-long p2, p3

    .line 9
    const-wide v2, 0xffffffffL

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    and-long/2addr p2, v2

    .line 15
    or-long/2addr p2, v0

    .line 16
    invoke-static {p0, p1}, Lcv2;->a(Lcv2;Ldv2;)V

    .line 17
    .line 18
    .line 19
    iget-wide v0, p1, Ldv2;->r:J

    .line 20
    .line 21
    invoke-static {p2, p3, v0, v1}, Ljs1;->c(JJ)J

    .line 22
    .line 23
    .line 24
    move-result-wide p2

    .line 25
    const/4 p0, 0x0

    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-virtual {p1, p2, p3, v0, p0}, Ldv2;->d0(JFLpe1;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public static i(Lcv2;Ldv2;J)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p0, p1}, Lcv2;->a(Lcv2;Ldv2;)V

    .line 5
    .line 6
    .line 7
    iget-wide v0, p1, Ldv2;->r:J

    .line 8
    .line 9
    invoke-static {p2, p3, v0, v1}, Ljs1;->c(JJ)J

    .line 10
    .line 11
    .line 12
    move-result-wide p2

    .line 13
    const/4 p0, 0x0

    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p1, p2, p3, p0, v0}, Ldv2;->d0(JFLpe1;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public static j(Lcv2;Ldv2;II)V
    .locals 9

    .line 1
    int-to-long v0, p2

    .line 2
    const/16 p2, 0x20

    .line 3
    .line 4
    shl-long/2addr v0, p2

    .line 5
    int-to-long v2, p3

    .line 6
    const-wide v4, 0xffffffffL

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    and-long/2addr v2, v4

    .line 12
    or-long/2addr v0, v2

    .line 13
    invoke-virtual {p0}, Lcv2;->e()Lhy1;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    sget-object v2, Lhy1;->n:Lhy1;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    const/4 v6, 0x0

    .line 21
    if-eq p3, v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Lcv2;->g()I

    .line 24
    .line 25
    .line 26
    move-result p3

    .line 27
    if-nez p3, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p0}, Lcv2;->g()I

    .line 31
    .line 32
    .line 33
    move-result p3

    .line 34
    iget v2, p1, Ldv2;->n:I

    .line 35
    .line 36
    sub-int/2addr p3, v2

    .line 37
    shr-long v7, v0, p2

    .line 38
    .line 39
    long-to-int v2, v7

    .line 40
    sub-int/2addr p3, v2

    .line 41
    and-long/2addr v0, v4

    .line 42
    long-to-int v0, v0

    .line 43
    int-to-long v1, p3

    .line 44
    shl-long p2, v1, p2

    .line 45
    .line 46
    int-to-long v0, v0

    .line 47
    and-long/2addr v0, v4

    .line 48
    or-long/2addr p2, v0

    .line 49
    invoke-static {p0, p1}, Lcv2;->a(Lcv2;Ldv2;)V

    .line 50
    .line 51
    .line 52
    iget-wide v0, p1, Ldv2;->r:J

    .line 53
    .line 54
    invoke-static {p2, p3, v0, v1}, Ljs1;->c(JJ)J

    .line 55
    .line 56
    .line 57
    move-result-wide p2

    .line 58
    invoke-virtual {p1, p2, p3, v3, v6}, Ldv2;->d0(JFLpe1;)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_1
    :goto_0
    invoke-static {p0, p1}, Lcv2;->a(Lcv2;Ldv2;)V

    .line 63
    .line 64
    .line 65
    iget-wide p2, p1, Ldv2;->r:J

    .line 66
    .line 67
    invoke-static {v0, v1, p2, p3}, Ljs1;->c(JJ)J

    .line 68
    .line 69
    .line 70
    move-result-wide p2

    .line 71
    invoke-virtual {p1, p2, p3, v3, v6}, Ldv2;->d0(JFLpe1;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public static l(Lcv2;Ldv2;II)V
    .locals 9

    .line 1
    sget v0, Lev2;->b:I

    .line 2
    .line 3
    sget-object v0, Ldo2;->x:Ldo2;

    .line 4
    .line 5
    int-to-long v1, p2

    .line 6
    const/16 p2, 0x20

    .line 7
    .line 8
    shl-long/2addr v1, p2

    .line 9
    int-to-long v3, p3

    .line 10
    const-wide v5, 0xffffffffL

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    and-long/2addr v3, v5

    .line 16
    or-long/2addr v1, v3

    .line 17
    invoke-virtual {p0}, Lcv2;->e()Lhy1;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    sget-object v3, Lhy1;->n:Lhy1;

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    if-eq p3, v3, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0}, Lcv2;->g()I

    .line 27
    .line 28
    .line 29
    move-result p3

    .line 30
    if-nez p3, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p0}, Lcv2;->g()I

    .line 34
    .line 35
    .line 36
    move-result p3

    .line 37
    iget v3, p1, Ldv2;->n:I

    .line 38
    .line 39
    sub-int/2addr p3, v3

    .line 40
    shr-long v7, v1, p2

    .line 41
    .line 42
    long-to-int v3, v7

    .line 43
    sub-int/2addr p3, v3

    .line 44
    and-long/2addr v1, v5

    .line 45
    long-to-int v1, v1

    .line 46
    int-to-long v2, p3

    .line 47
    shl-long p2, v2, p2

    .line 48
    .line 49
    int-to-long v1, v1

    .line 50
    and-long/2addr v1, v5

    .line 51
    or-long/2addr p2, v1

    .line 52
    invoke-static {p0, p1}, Lcv2;->a(Lcv2;Ldv2;)V

    .line 53
    .line 54
    .line 55
    iget-wide v1, p1, Ldv2;->r:J

    .line 56
    .line 57
    invoke-static {p2, p3, v1, v2}, Ljs1;->c(JJ)J

    .line 58
    .line 59
    .line 60
    move-result-wide p2

    .line 61
    invoke-virtual {p1, p2, p3, v4, v0}, Ldv2;->d0(JFLpe1;)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_1
    :goto_0
    invoke-static {p0, p1}, Lcv2;->a(Lcv2;Ldv2;)V

    .line 66
    .line 67
    .line 68
    iget-wide p2, p1, Ldv2;->r:J

    .line 69
    .line 70
    invoke-static {v1, v2, p2, p3}, Ljs1;->c(JJ)J

    .line 71
    .line 72
    .line 73
    move-result-wide p2

    .line 74
    invoke-virtual {p1, p2, p3, v4, v0}, Ldv2;->d0(JFLpe1;)V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public static m(Lcv2;Ldv2;Lpe1;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p0, p1}, Lcv2;->a(Lcv2;Ldv2;)V

    .line 5
    .line 6
    .line 7
    iget-wide v0, p1, Ldv2;->r:J

    .line 8
    .line 9
    const-wide/16 v2, 0x0

    .line 10
    .line 11
    invoke-static {v2, v3, v0, v1}, Ljs1;->c(JJ)J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    const/4 p0, 0x0

    .line 16
    invoke-virtual {p1, v0, v1, p0, p2}, Ldv2;->d0(JFLpe1;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public c(Lek1;)F
    .locals 0

    .line 1
    const/high16 p0, 0x7fc00000    # Float.NaN

    .line 2
    .line 3
    return p0
.end method

.method public abstract e()Lhy1;
.end method

.method public abstract g()I
.end method
