.class final Lgq;
.super Lrd2;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd2;"
    }
.end annotation


# instance fields
.field public final b:J

.field public final c:F

.field public final d:Ljl3;


# direct methods
.method public constructor <init>(JLjl3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lgq;->b:J

    .line 5
    .line 6
    const/high16 p1, 0x3f800000    # 1.0f

    .line 7
    .line 8
    iput p1, p0, Lgq;->c:F

    .line 9
    .line 10
    iput-object p3, p0, Lgq;->d:Ljl3;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final e()Lmd2;
    .locals 3

    .line 1
    new-instance v0, Lhq;

    .line 2
    .line 3
    invoke-direct {v0}, Lmd2;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-wide v1, p0, Lgq;->b:J

    .line 7
    .line 8
    iput-wide v1, v0, Lhq;->B:J

    .line 9
    .line 10
    iget-object p0, p0, Lgq;->d:Ljl3;

    .line 11
    .line 12
    iput-object p0, v0, Lhq;->C:Ljl3;

    .line 13
    .line 14
    const-wide v1, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    iput-wide v1, v0, Lhq;->D:J

    .line 20
    .line 21
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p1, Lgq;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lgq;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    if-nez p1, :cond_1

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_1
    iget-wide v0, p0, Lgq;->b:J

    .line 13
    .line 14
    iget-wide v2, p1, Lgq;->b:J

    .line 15
    .line 16
    invoke-static {v0, v1, v2, v3}, Lt70;->c(JJ)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    iget v0, p0, Lgq;->c:F

    .line 23
    .line 24
    iget v1, p1, Lgq;->c:F

    .line 25
    .line 26
    cmpg-float v0, v0, v1

    .line 27
    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    iget-object p0, p0, Lgq;->d:Ljl3;

    .line 31
    .line 32
    iget-object p1, p1, Lgq;->d:Ljl3;

    .line 33
    .line 34
    invoke-static {p0, p1}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    if-eqz p0, :cond_2

    .line 39
    .line 40
    const/4 p0, 0x1

    .line 41
    return p0

    .line 42
    :cond_2
    :goto_1
    const/4 p0, 0x0

    .line 43
    return p0
.end method

.method public final f(Lmd2;)V
    .locals 2

    .line 1
    check-cast p1, Lhq;

    .line 2
    .line 3
    iget-wide v0, p0, Lgq;->b:J

    .line 4
    .line 5
    iput-wide v0, p1, Lhq;->B:J

    .line 6
    .line 7
    iget-object v0, p1, Lhq;->C:Ljl3;

    .line 8
    .line 9
    iget-object p0, p0, Lgq;->d:Ljl3;

    .line 10
    .line 11
    invoke-static {v0, p0}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iput-object p0, p1, Lhq;->C:Ljl3;

    .line 18
    .line 19
    invoke-static {p1}, Lw80;->A(Leh3;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-static {p1}, Lkt4;->Q(Ljx0;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    sget v0, Lt70;->g:I

    .line 2
    .line 3
    iget-wide v0, p0, Lgq;->b:J

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    mul-int/lit16 v0, v0, 0x3c1

    .line 10
    .line 11
    iget v1, p0, Lgq;->c:F

    .line 12
    .line 13
    const/16 v2, 0x1f

    .line 14
    .line 15
    invoke-static {v1, v0, v2}, Ldi0;->l(FII)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iget-object p0, p0, Lgq;->d:Ljl3;

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    add-int/2addr p0, v0

    .line 26
    return p0
.end method
