.class public final Lc53;
.super Lnp1;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final transient q:Le53;

.field public final transient r:Ld53;


# direct methods
.method public constructor <init>(Le53;Ld53;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lc53;->q:Le53;

    .line 5
    .line 6
    iput-object p2, p0, Lc53;->r:Ld53;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Llp1;
    .locals 0

    .line 1
    iget-object p0, p0, Lc53;->r:Ld53;

    .line 2
    .line 3
    return-object p0
.end method

.method public final c([Ljava/lang/Object;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lc53;->r:Ld53;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Llp1;->c([Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lc53;->q:Le53;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Le53;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public final g()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final h()Ly64;
    .locals 1

    .line 1
    iget-object p0, p0, Lc53;->r:Ld53;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Llp1;->m(I)Lhp1;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public final size()I
    .locals 0

    .line 1
    iget-object p0, p0, Lc53;->q:Le53;

    .line 2
    .line 3
    iget p0, p0, Le53;->s:I

    .line 4
    .line 5
    return p0
.end method
