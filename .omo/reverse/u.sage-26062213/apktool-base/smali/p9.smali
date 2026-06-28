.class public final Lp9;
.super Lrd2;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd2;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lq9;


# direct methods
.method public constructor <init>(Lq9;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lp9;->b:Lq9;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final e()Lmd2;
    .locals 1

    .line 1
    new-instance v0, Lf9;

    .line 2
    .line 3
    iget-object p0, p0, Lp9;->b:Lq9;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lf9;-><init>(Lq9;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    if-ne p1, p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    return p0

    .line 5
    :cond_0
    const/4 p0, 0x0

    .line 6
    return p0
.end method

.method public final bridge synthetic f(Lmd2;)V
    .locals 0

    .line 1
    check-cast p1, Lf9;

    .line 2
    .line 3
    return-void
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lp9;->b:Lq9;

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
