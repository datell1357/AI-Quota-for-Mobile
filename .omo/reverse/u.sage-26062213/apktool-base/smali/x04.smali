.class public final Lx04;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:J

.field public final b:J

.field public final c:Z


# direct methods
.method public constructor <init>(JJZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lx04;->a:J

    .line 5
    .line 6
    iput-wide p3, p0, Lx04;->b:J

    .line 7
    .line 8
    iput-boolean p5, p0, Lx04;->c:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Lx04;)Lx04;
    .locals 7

    .line 1
    new-instance v0, Lx04;

    .line 2
    .line 3
    iget-wide v1, p0, Lx04;->a:J

    .line 4
    .line 5
    iget-wide v3, p1, Lx04;->a:J

    .line 6
    .line 7
    invoke-static {v1, v2, v3, v4}, Lgo2;->e(JJ)J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    iget-wide v3, p0, Lx04;->b:J

    .line 12
    .line 13
    iget-wide v5, p1, Lx04;->b:J

    .line 14
    .line 15
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 16
    .line 17
    .line 18
    move-result-wide v3

    .line 19
    iget-boolean p0, p0, Lx04;->c:Z

    .line 20
    .line 21
    if-nez p0, :cond_1

    .line 22
    .line 23
    iget-boolean p0, p1, Lx04;->c:Z

    .line 24
    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    const/4 p0, 0x0

    .line 29
    :goto_0
    move v5, p0

    .line 30
    goto :goto_2

    .line 31
    :cond_1
    :goto_1
    const/4 p0, 0x1

    .line 32
    goto :goto_0

    .line 33
    :goto_2
    invoke-direct/range {v0 .. v5}, Lx04;-><init>(JJZ)V

    .line 34
    .line 35
    .line 36
    return-object v0
.end method
