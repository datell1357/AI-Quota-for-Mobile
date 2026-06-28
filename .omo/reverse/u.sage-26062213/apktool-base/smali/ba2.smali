.class public abstract Lba2;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public n:I

.field public o:I

.field public p:I

.field public q:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lls3;->p:Lls3;

    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    new-instance p0, Lls3;

    .line 9
    .line 10
    const/16 v0, 0x9

    .line 11
    .line 12
    invoke-direct {p0, v0}, Lls3;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object p0, Lls3;->p:Lls3;

    .line 16
    .line 17
    :cond_0
    return-void
.end method


# virtual methods
.method public b(I)I
    .locals 1

    .line 1
    iget v0, p0, Lba2;->p:I

    .line 2
    .line 3
    if-ge p1, v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lba2;->q:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    iget p0, p0, Lba2;->o:I

    .line 10
    .line 11
    add-int/2addr p0, p1

    .line 12
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->getShort(I)S

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    return p0
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lba2;->q:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lca2;

    .line 4
    .line 5
    iget v0, v0, Lca2;->u:I

    .line 6
    .line 7
    iget p0, p0, Lba2;->p:I

    .line 8
    .line 9
    if-ne v0, p0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    .line 13
    .line 14
    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 15
    .line 16
    .line 17
    throw p0
.end method

.method public e()V
    .locals 3

    .line 1
    :goto_0
    iget v0, p0, Lba2;->n:I

    .line 2
    .line 3
    iget-object v1, p0, Lba2;->q:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lca2;

    .line 6
    .line 7
    iget v2, v1, Lca2;->s:I

    .line 8
    .line 9
    if-ge v0, v2, :cond_0

    .line 10
    .line 11
    iget-object v1, v1, Lca2;->p:[I

    .line 12
    .line 13
    aget v1, v1, v0

    .line 14
    .line 15
    if-gez v1, :cond_0

    .line 16
    .line 17
    add-int/lit8 v0, v0, 0x1

    .line 18
    .line 19
    iput v0, p0, Lba2;->n:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-void
.end method

.method public hasNext()Z
    .locals 1

    .line 1
    iget v0, p0, Lba2;->n:I

    .line 2
    .line 3
    iget-object p0, p0, Lba2;->q:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lca2;

    .line 6
    .line 7
    iget p0, p0, Lca2;->s:I

    .line 8
    .line 9
    if-ge v0, p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return p0
.end method

.method public remove()V
    .locals 3

    .line 1
    iget-object v0, p0, Lba2;->q:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lca2;

    .line 4
    .line 5
    invoke-virtual {p0}, Lba2;->d()V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lba2;->o:I

    .line 9
    .line 10
    const/4 v2, -0x1

    .line 11
    if-eq v1, v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lca2;->d()V

    .line 14
    .line 15
    .line 16
    iget v1, p0, Lba2;->o:I

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lca2;->l(I)V

    .line 19
    .line 20
    .line 21
    iput v2, p0, Lba2;->o:I

    .line 22
    .line 23
    iget v0, v0, Lca2;->u:I

    .line 24
    .line 25
    iput v0, p0, Lba2;->p:I

    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    const-string p0, "Call next() before removing element from the iterator."

    .line 29
    .line 30
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method
