.class public abstract Lu94;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public a:Lpe1;


# virtual methods
.method public abstract a(Lkx0;)V
.end method

.method public b()Lpe1;
    .locals 0

    .line 1
    iget-object p0, p0, Lu94;->a:Lpe1;

    .line 2
    .line 3
    return-object p0
.end method

.method public final c()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lu94;->b()Lpe1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p0}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public d(Lc8;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lu94;->a:Lpe1;

    .line 2
    .line 3
    return-void
.end method
