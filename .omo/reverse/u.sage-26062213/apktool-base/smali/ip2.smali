.class public final Lip2;
.super Lmd2;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljb2;


# instance fields
.field public B:Lpe1;

.field public C:J


# virtual methods
.method public final c(J)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lip2;->C:J

    .line 2
    .line 3
    invoke-static {v0, v1, p1, p2}, Lrs1;->a(JJ)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lip2;->B:Lpe1;

    .line 10
    .line 11
    new-instance v1, Lrs1;

    .line 12
    .line 13
    invoke-direct {v1, p1, p2}, Lrs1;-><init>(J)V

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, v1}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    iput-wide p1, p0, Lip2;->C:J

    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final v0()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method
