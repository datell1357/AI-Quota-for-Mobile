.class final Lb60;
.super Lrd2;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd2;"
    }
.end annotation


# instance fields
.field public final b:Lvf2;

.field public final c:Lzp1;

.field public final d:Z

.field public final e:Z

.field public final f:Lq93;

.field public final g:Lne1;


# direct methods
.method public constructor <init>(Lne1;Lzp1;Lvf2;Lq93;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lb60;->b:Lvf2;

    .line 5
    .line 6
    iput-object p2, p0, Lb60;->c:Lzp1;

    .line 7
    .line 8
    iput-boolean p5, p0, Lb60;->d:Z

    .line 9
    .line 10
    iput-boolean p6, p0, Lb60;->e:Z

    .line 11
    .line 12
    iput-object p4, p0, Lb60;->f:Lq93;

    .line 13
    .line 14
    iput-object p1, p0, Lb60;->g:Lne1;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final e()Lmd2;
    .locals 7

    .line 1
    new-instance v0, Le60;

    .line 2
    .line 3
    iget-object v4, p0, Lb60;->f:Lq93;

    .line 4
    .line 5
    iget-object v1, p0, Lb60;->g:Lne1;

    .line 6
    .line 7
    iget-object v2, p0, Lb60;->c:Lzp1;

    .line 8
    .line 9
    iget-object v3, p0, Lb60;->b:Lvf2;

    .line 10
    .line 11
    iget-boolean v5, p0, Lb60;->d:Z

    .line 12
    .line 13
    iget-boolean v6, p0, Lb60;->e:Z

    .line 14
    .line 15
    invoke-direct/range {v0 .. v6}, Le60;-><init>(Lne1;Lzp1;Lvf2;Lq93;ZZ)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    if-nez p1, :cond_1

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_1
    const-class v0, Lb60;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eq v0, v1, :cond_2

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_2
    check-cast p1, Lb60;

    .line 17
    .line 18
    iget-object v0, p0, Lb60;->b:Lvf2;

    .line 19
    .line 20
    iget-object v1, p1, Lb60;->b:Lvf2;

    .line 21
    .line 22
    invoke-static {v0, v1}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_3

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_3
    iget-object v0, p0, Lb60;->c:Lzp1;

    .line 30
    .line 31
    iget-object v1, p1, Lb60;->c:Lzp1;

    .line 32
    .line 33
    invoke-static {v0, v1}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_4

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_4
    iget-boolean v0, p0, Lb60;->d:Z

    .line 41
    .line 42
    iget-boolean v1, p1, Lb60;->d:Z

    .line 43
    .line 44
    if-eq v0, v1, :cond_5

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_5
    iget-boolean v0, p0, Lb60;->e:Z

    .line 48
    .line 49
    iget-boolean v1, p1, Lb60;->e:Z

    .line 50
    .line 51
    if-eq v0, v1, :cond_6

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_6
    iget-object v0, p0, Lb60;->f:Lq93;

    .line 55
    .line 56
    iget-object v1, p1, Lb60;->f:Lq93;

    .line 57
    .line 58
    invoke-static {v0, v1}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-nez v0, :cond_7

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_7
    iget-object p0, p0, Lb60;->g:Lne1;

    .line 66
    .line 67
    iget-object p1, p1, Lb60;->g:Lne1;

    .line 68
    .line 69
    if-eq p0, p1, :cond_8

    .line 70
    .line 71
    :goto_0
    const/4 p0, 0x0

    .line 72
    return p0

    .line 73
    :cond_8
    :goto_1
    const/4 p0, 0x1

    .line 74
    return p0
.end method

.method public final f(Lmd2;)V
    .locals 7

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Le60;

    .line 3
    .line 4
    iget-object v4, p0, Lb60;->f:Lq93;

    .line 5
    .line 6
    iget-object v1, p0, Lb60;->g:Lne1;

    .line 7
    .line 8
    iget-object v2, p0, Lb60;->c:Lzp1;

    .line 9
    .line 10
    iget-object v3, p0, Lb60;->b:Lvf2;

    .line 11
    .line 12
    iget-boolean v5, p0, Lb60;->d:Z

    .line 13
    .line 14
    iget-boolean v6, p0, Lb60;->e:Z

    .line 15
    .line 16
    invoke-virtual/range {v0 .. v6}, Le60;->Q0(Lne1;Lzp1;Lvf2;Lq93;ZZ)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lb60;->b:Lvf2;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v1, v0

    .line 12
    :goto_0
    const/16 v2, 0x1f

    .line 13
    .line 14
    mul-int/2addr v1, v2

    .line 15
    iget-object v3, p0, Lb60;->c:Lzp1;

    .line 16
    .line 17
    if-eqz v3, :cond_1

    .line 18
    .line 19
    invoke-interface {v3}, Lzp1;->hashCode()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move v3, v0

    .line 25
    :goto_1
    add-int/2addr v1, v3

    .line 26
    mul-int/2addr v1, v2

    .line 27
    iget-boolean v3, p0, Lb60;->d:Z

    .line 28
    .line 29
    invoke-static {v1, v3, v2}, Lxw1;->n(IZI)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    iget-boolean v3, p0, Lb60;->e:Z

    .line 34
    .line 35
    const/16 v4, 0x3c1

    .line 36
    .line 37
    invoke-static {v1, v3, v4}, Lxw1;->n(IZI)I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    iget-object v3, p0, Lb60;->f:Lq93;

    .line 42
    .line 43
    if-eqz v3, :cond_2

    .line 44
    .line 45
    iget v0, v3, Lq93;->a:I

    .line 46
    .line 47
    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    :cond_2
    add-int/2addr v1, v0

    .line 52
    mul-int/2addr v1, v2

    .line 53
    iget-object p0, p0, Lb60;->g:Lne1;

    .line 54
    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    add-int/2addr p0, v1

    .line 60
    return p0
.end method
