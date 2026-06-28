.class public final Ldm4;
.super Lb70;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# virtual methods
.method public final L(Ltz0;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    sget-object v0, Lyg5;->r:Lyg5;

    .line 10
    .line 11
    iget-object p0, p0, Lb70;->o:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Lzg5;

    .line 14
    .line 15
    invoke-virtual {p1, p2, v0, p0}, Ltz0;->e(Ljava/lang/Object;Lyg5;Lzg5;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
