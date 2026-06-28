.class public final La60;
.super Lrd2;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lch3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd2;",
        "Lch3;"
    }
.end annotation


# instance fields
.field public final b:Lpe1;


# direct methods
.method public constructor <init>(Lpe1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, La60;->b:Lpe1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final d()Lbh3;
    .locals 2

    .line 1
    new-instance v0, Lbh3;

    .line 2
    .line 3
    invoke-direct {v0}, Lbh3;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput-boolean v1, v0, Lbh3;->p:Z

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    iput-boolean v1, v0, Lbh3;->q:Z

    .line 11
    .line 12
    iget-object p0, p0, La60;->b:Lpe1;

    .line 13
    .line 14
    invoke-interface {p0, v0}, Lpe1;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public final e()Lmd2;
    .locals 3

    .line 1
    new-instance v0, Lai0;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object p0, p0, La60;->b:Lpe1;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-direct {v0, v2, v1, p0}, Lai0;-><init>(ZZLpe1;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, La60;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, La60;

    .line 12
    .line 13
    iget-object p1, p1, La60;->b:Lpe1;

    .line 14
    .line 15
    iget-object p0, p0, La60;->b:Lpe1;

    .line 16
    .line 17
    if-eq p0, p1, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    return v0
.end method

.method public final f(Lmd2;)V
    .locals 0

    .line 1
    check-cast p1, Lai0;

    .line 2
    .line 3
    iget-object p0, p0, La60;->b:Lpe1;

    .line 4
    .line 5
    iput-object p0, p1, Lai0;->D:Lpe1;

    .line 6
    .line 7
    return-void
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, La60;->b:Lpe1;

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
