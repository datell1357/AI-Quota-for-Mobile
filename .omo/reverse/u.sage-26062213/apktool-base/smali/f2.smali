.class public final Lf2;
.super Lkt4;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lup3;
.implements Lhf2;
.implements Ljava/util/Collection;


# instance fields
.field public transient A:Lvp3;

.field public transient B:Lo1;

.field public final synthetic C:Lg2;

.field public transient z:Lgr2;


# direct methods
.method public constructor <init>(Lg2;)V
    .locals 1

    .line 1
    const/16 v0, 0xf

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lkt4;-><init>(I)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lf2;->C:Lg2;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final A(ILjava/lang/Object;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lf2;->C:Lg2;

    .line 2
    .line 3
    check-cast p0, Lh24;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lh24;->A(ILjava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final B(IILjava/lang/Object;Ljava/lang/Object;)Lup3;
    .locals 0

    .line 1
    iget-object p0, p0, Lf2;->C:Lg2;

    .line 2
    .line 3
    invoke-virtual {p0, p2, p1, p4, p3}, Lg2;->B(IILjava/lang/Object;Ljava/lang/Object;)Lup3;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lg2;

    .line 8
    .line 9
    invoke-virtual {p0}, Lg2;->z()Lup3;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public final L(ILjava/lang/Object;)Lup3;
    .locals 0

    .line 1
    iget-object p0, p0, Lf2;->C:Lg2;

    .line 2
    .line 3
    check-cast p0, Lh24;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lh24;->j(ILjava/lang/Object;)Lup3;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lg2;

    .line 10
    .line 11
    invoke-virtual {p0}, Lg2;->z()Lup3;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public final N(Ljava/lang/Object;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lf2;->C:Lg2;

    .line 2
    .line 3
    check-cast p0, Lh24;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lh24;->N(Ljava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final R()Ljava/util/NavigableSet;
    .locals 1

    .line 1
    iget-object v0, p0, Lf2;->A:Lvp3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lvp3;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lvp3;-><init>(Lup3;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lf2;->A:Lvp3;

    .line 11
    .line 12
    :cond_0
    return-object v0
.end method

.method public final V(ILjava/lang/Object;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lf2;->C:Lg2;

    .line 2
    .line 3
    check-cast p0, Lh24;

    .line 4
    .line 5
    const p1, 0x7fffffff

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1, p2}, Lh24;->V(ILjava/lang/Object;)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public final add(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lf2;->C:Lg2;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lg2;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lf2;->C:Lg2;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lg2;->addAll(Ljava/util/Collection;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final clear()V
    .locals 0

    .line 1
    iget-object p0, p0, Lf2;->C:Lg2;

    .line 2
    .line 3
    check-cast p0, Lh24;

    .line 4
    .line 5
    invoke-virtual {p0}, Lh24;->clear()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final comparator()Ljava/util/Comparator;
    .locals 2

    .line 1
    iget-object v0, p0, Lf2;->z:Lgr2;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lf2;->C:Lg2;

    .line 6
    .line 7
    iget-object v0, v0, Lg2;->p:Ljava/util/Comparator;

    .line 8
    .line 9
    instance-of v1, v0, Lgr2;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    check-cast v0, Lgr2;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance v1, Lx80;

    .line 17
    .line 18
    invoke-direct {v1, v0}, Lx80;-><init>(Ljava/util/Comparator;)V

    .line 19
    .line 20
    .line 21
    move-object v0, v1

    .line 22
    :goto_0
    invoke-virtual {v0}, Lgr2;->a()Lgr2;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lf2;->z:Lgr2;

    .line 27
    .line 28
    :cond_1
    return-object v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lf2;->C:Lg2;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lg2;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lf2;->C:Lg2;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 2

    .line 1
    iget-object v0, p0, Lf2;->B:Lo1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lo1;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-direct {v0, p0, v1}, Lo1;-><init>(Lup3;I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lf2;->B:Lo1;

    .line 12
    .line 13
    :cond_0
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    if-eq p1, p0, :cond_1

    .line 2
    .line 3
    iget-object p0, p0, Lf2;->C:Lg2;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lg2;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 15
    return p0
.end method

.method public final firstEntry()Ljf2;
    .locals 0

    .line 1
    iget-object p0, p0, Lf2;->C:Lg2;

    .line 2
    .line 3
    invoke-virtual {p0}, Lg2;->lastEntry()Ljf2;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lf2;->C:Lg2;

    .line 2
    .line 3
    invoke-virtual {p0}, Lg2;->hashCode()I

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
    iget-object p0, p0, Lf2;->C:Lg2;

    .line 2
    .line 3
    invoke-virtual {p0}, Lg2;->isEmpty()Z

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
    iget-object p0, p0, Lf2;->C:Lg2;

    .line 2
    .line 3
    invoke-virtual {p0}, Lg2;->z()Lup3;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    new-instance v0, Llf2;

    .line 8
    .line 9
    invoke-interface {p0}, Lhf2;->entrySet()Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-direct {v0, p0, v1}, Llf2;-><init>(Lup3;Ljava/util/Iterator;)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method

.method public final j(ILjava/lang/Object;)Lup3;
    .locals 0

    .line 1
    iget-object p0, p0, Lf2;->C:Lg2;

    .line 2
    .line 3
    check-cast p0, Lh24;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lh24;->L(ILjava/lang/Object;)Lup3;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lg2;

    .line 10
    .line 11
    invoke-virtual {p0}, Lg2;->z()Lup3;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public final lastEntry()Ljf2;
    .locals 0

    .line 1
    iget-object p0, p0, Lf2;->C:Lg2;

    .line 2
    .line 3
    invoke-virtual {p0}, Lg2;->firstEntry()Ljf2;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final pollFirstEntry()Ljf2;
    .locals 0

    .line 1
    iget-object p0, p0, Lf2;->C:Lg2;

    .line 2
    .line 3
    invoke-virtual {p0}, Lg2;->pollLastEntry()Ljf2;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final pollLastEntry()Ljf2;
    .locals 0

    .line 1
    iget-object p0, p0, Lf2;->C:Lg2;

    .line 2
    .line 3
    invoke-virtual {p0}, Lg2;->pollFirstEntry()Ljf2;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final bridge synthetic r()Ljava/util/NavigableSet;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lf2;->R()Ljava/util/NavigableSet;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lf2;->C:Lg2;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lg2;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lf2;->C:Lg2;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lg2;->removeAll(Ljava/util/Collection;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lf2;->C:Lg2;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lg2;->retainAll(Ljava/util/Collection;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final size()I
    .locals 0

    .line 1
    iget-object p0, p0, Lf2;->C:Lg2;

    .line 2
    .line 3
    check-cast p0, Lh24;

    .line 4
    .line 5
    invoke-virtual {p0}, Lh24;->size()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lf2;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 52
    invoke-virtual {p0, v0}, Lf2;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lf2;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    array-length v1, p1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-ge v1, v0, :cond_1

    .line 8
    .line 9
    array-length v1, p1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    :goto_0
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    :cond_1
    invoke-virtual {p0}, Lf2;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    :goto_1
    move-object v1, p0

    .line 26
    check-cast v1, Llf2;

    .line 27
    .line 28
    invoke-virtual {v1}, Llf2;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_2

    .line 33
    .line 34
    invoke-virtual {v1}, Llf2;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    add-int/lit8 v3, v2, 0x1

    .line 39
    .line 40
    aput-object v1, p1, v2

    .line 41
    .line 42
    move v2, v3

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    array-length p0, p1

    .line 45
    if-le p0, v0, :cond_3

    .line 46
    .line 47
    const/4 p0, 0x0

    .line 48
    aput-object p0, p1, v0

    .line 49
    .line 50
    :cond_3
    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lf2;->entrySet()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final v()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lf2;->C:Lg2;

    .line 2
    .line 3
    return-object p0
.end method

.method public final z()Lup3;
    .locals 0

    .line 1
    iget-object p0, p0, Lf2;->C:Lg2;

    .line 2
    .line 3
    return-object p0
.end method
