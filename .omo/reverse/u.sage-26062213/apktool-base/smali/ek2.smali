.class public abstract Lek2;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public a:Lon4;

.field public b:Z

.field public c:Lck2;


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lek2;->c:Lck2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, v0, Lck2;->b:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_0
    iget-boolean p0, p0, Lek2;->b:Z

    .line 12
    .line 13
    return p0
.end method

.method public abstract b()V
.end method

.method public abstract c()V
.end method

.method public abstract d(Lbk2;)V
.end method

.method public abstract e(Lbk2;)V
.end method

.method public final f()V
    .locals 4

    .line 1
    iget-object v0, p0, Lek2;->c:Lck2;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v1, v0, Lck2;->d:Leg2;

    .line 6
    .line 7
    invoke-virtual {v1, p0}, Leg2;->h(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    iget-object v0, v0, Lck2;->c:Lhk2;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    iget-object v1, v0, Lhk2;->f:Lek2;

    .line 19
    .line 20
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const/4 v2, 0x0

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    iget v1, v0, Lhk2;->g:I

    .line 28
    .line 29
    const/4 v3, -0x1

    .line 30
    if-eq v1, v3, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p0}, Lek2;->b()V

    .line 34
    .line 35
    .line 36
    :goto_0
    iput-object v2, v0, Lhk2;->f:Lek2;

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    iput v1, v0, Lhk2;->g:I

    .line 40
    .line 41
    iput-object v2, v0, Lhk2;->h:Lgk2;

    .line 42
    .line 43
    :cond_1
    iget-object v1, v0, Lhk2;->d:Lvh;

    .line 44
    .line 45
    invoke-virtual {v1, p0}, Lvh;->remove(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    iget-object v1, v0, Lhk2;->e:Lvh;

    .line 49
    .line 50
    invoke-virtual {v1, p0}, Lvh;->remove(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    iput-object v2, p0, Lek2;->c:Lck2;

    .line 54
    .line 55
    invoke-virtual {v0}, Lhk2;->b()V

    .line 56
    .line 57
    .line 58
    :cond_2
    return-void
.end method

.method public final g(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lek2;->b:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iput-boolean p1, p0, Lek2;->b:Z

    .line 7
    .line 8
    iget-object p0, p0, Lek2;->c:Lck2;

    .line 9
    .line 10
    if-eqz p0, :cond_1

    .line 11
    .line 12
    iget-object p0, p0, Lck2;->c:Lhk2;

    .line 13
    .line 14
    if-eqz p0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Lhk2;->b()V

    .line 17
    .line 18
    .line 19
    :cond_1
    :goto_0
    return-void
.end method
