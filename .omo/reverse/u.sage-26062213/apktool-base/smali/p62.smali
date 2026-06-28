.class public final Lp62;
.super Ljava/util/AbstractCollection;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final synthetic n:Lv62;


# direct methods
.method public constructor <init>(Lv62;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp62;->n:Lv62;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    .line 1
    iget-object p0, p0, Lp62;->n:Lv62;

    .line 2
    .line 3
    invoke-virtual {p0}, Lv62;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lp62;->n:Lv62;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lv62;->containsValue(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isEmpty()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lp62;->n:Lv62;

    .line 2
    .line 3
    invoke-virtual {p0}, Lv62;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .line 1
    new-instance v0, Lc62;

    .line 2
    .line 3
    iget-object p0, p0, Lp62;->n:Lv62;

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    invoke-direct {v0, p0, v1}, Lc62;-><init>(Lv62;I)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public final size()I
    .locals 0

    .line 1
    iget-object p0, p0, Lp62;->n:Lv62;

    .line 2
    .line 3
    invoke-virtual {p0}, Lv62;->size()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
