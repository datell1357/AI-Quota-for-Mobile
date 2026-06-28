.class public final Lq22;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public a:Lg22;

.field public b:Ln22;


# virtual methods
.method public final a(Lp22;Lf22;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Lf22;->a()Lg22;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lq22;->a:Lg22;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-gez v2, :cond_0

    .line 15
    .line 16
    move-object v1, v0

    .line 17
    :cond_0
    iput-object v1, p0, Lq22;->a:Lg22;

    .line 18
    .line 19
    iget-object v1, p0, Lq22;->b:Ln22;

    .line 20
    .line 21
    invoke-interface {v1, p1, p2}, Ln22;->B(Lp22;Lf22;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lq22;->a:Lg22;

    .line 25
    .line 26
    return-void
.end method
