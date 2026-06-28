.class public final Lpu0;
.super Lr51;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final p:Lr51;


# direct methods
.method public constructor <init>(Lr51;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lpu0;->p:Lr51;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final F(Lbt2;)Ljava/util/List;
    .locals 1

    .line 1
    iget-object p0, p0, Lpu0;->p:Lr51;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lr51;->F(Lbt2;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lbt2;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-static {p1}, Lr70;->b0(Ljava/util/List;)V

    .line 36
    .line 37
    .line 38
    return-object p1
.end method

.method public final L(Lbt2;)Li51;
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lpu0;->p:Lr51;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lr51;->L(Lbt2;)Li51;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    return-object p0

    .line 14
    :cond_0
    iget-object v3, p0, Li51;->c:Lbt2;

    .line 15
    .line 16
    if-nez v3, :cond_1

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_1
    iget-boolean v1, p0, Li51;->a:Z

    .line 20
    .line 21
    iget-boolean v2, p0, Li51;->b:Z

    .line 22
    .line 23
    iget-object v4, p0, Li51;->d:Ljava/lang/Long;

    .line 24
    .line 25
    iget-object v5, p0, Li51;->e:Ljava/lang/Long;

    .line 26
    .line 27
    iget-object v6, p0, Li51;->f:Ljava/lang/Long;

    .line 28
    .line 29
    iget-object v7, p0, Li51;->g:Ljava/lang/Long;

    .line 30
    .line 31
    iget-object v8, p0, Li51;->h:Ljava/util/Map;

    .line 32
    .line 33
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    new-instance v0, Li51;

    .line 37
    .line 38
    invoke-direct/range {v0 .. v8}, Li51;-><init>(ZZLbt2;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Map;)V

    .line 39
    .line 40
    .line 41
    return-object v0
.end method

.method public final N(Lbt2;)Lcx1;
    .locals 0

    .line 1
    iget-object p0, p0, Lpu0;->p:Lr51;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lr51;->N(Lbt2;)Lcx1;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final R(Lbt2;Z)Lkn3;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lbt2;->c()Lbt2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    new-instance v1, Lvh;

    .line 8
    .line 9
    invoke-direct {v1}, Lvh;-><init>()V

    .line 10
    .line 11
    .line 12
    :goto_0
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lr51;->B(Lbt2;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Lvh;->addFirst(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lbt2;->c()Lbt2;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Lbt2;

    .line 43
    .line 44
    invoke-virtual {p0, v1}, Lpu0;->r(Lbt2;)V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    iget-object p0, p0, Lpu0;->p:Lr51;

    .line 49
    .line 50
    invoke-virtual {p0, p1, p2}, Lr51;->R(Lbt2;Z)Lkn3;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0
.end method

.method public final V(Lbt2;)Lyp3;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lpu0;->p:Lr51;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lr51;->V(Lbt2;)Lyp3;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public final b(Lbt2;)Lkn3;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lpu0;->p:Lr51;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lr51;->b(Lbt2;)Lkn3;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public final close()V
    .locals 0

    .line 1
    iget-object p0, p0, Lpu0;->p:Lr51;

    .line 2
    .line 3
    invoke-virtual {p0}, Lr51;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final j(Lbt2;Lbt2;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lpu0;->p:Lr51;

    .line 8
    .line 9
    invoke-virtual {p0, p1, p2}, Lr51;->j(Lbt2;Lbt2;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final r(Lbt2;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lpu0;->p:Lr51;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lr51;->r(Lbt2;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-class v1, Lpu0;

    .line 7
    .line 8
    invoke-static {v1}, Ly33;->a(Ljava/lang/Class;)Li50;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Li50;->c()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const/16 v1, 0x28

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lpu0;->p:Lr51;

    .line 25
    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const/16 p0, 0x29

    .line 30
    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method

.method public final z(Lbt2;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lpu0;->p:Lr51;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lr51;->z(Lbt2;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
