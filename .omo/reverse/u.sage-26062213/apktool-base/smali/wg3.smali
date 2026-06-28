.class final Lwg3;
.super Lrd2;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd2;"
    }
.end annotation


# instance fields
.field public final b:Z

.field public final c:Lvf2;

.field public final d:Lzp1;

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
    iput-boolean p5, p0, Lwg3;->b:Z

    .line 5
    .line 6
    iput-object p3, p0, Lwg3;->c:Lvf2;

    .line 7
    .line 8
    iput-object p2, p0, Lwg3;->d:Lzp1;

    .line 9
    .line 10
    iput-boolean p6, p0, Lwg3;->e:Z

    .line 11
    .line 12
    iput-object p4, p0, Lwg3;->f:Lq93;

    .line 13
    .line 14
    iput-object p1, p0, Lwg3;->g:Lne1;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final e()Lmd2;
    .locals 7

    .line 1
    new-instance v0, Lyg3;

    .line 2
    .line 3
    iget-object v4, p0, Lwg3;->f:Lq93;

    .line 4
    .line 5
    iget-object v1, p0, Lwg3;->g:Lne1;

    .line 6
    .line 7
    iget-object v2, p0, Lwg3;->d:Lzp1;

    .line 8
    .line 9
    iget-object v3, p0, Lwg3;->c:Lvf2;

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    iget-boolean v6, p0, Lwg3;->e:Z

    .line 13
    .line 14
    invoke-direct/range {v0 .. v6}, Le60;-><init>(Lne1;Lzp1;Lvf2;Lq93;ZZ)V

    .line 15
    .line 16
    .line 17
    iget-boolean p0, p0, Lwg3;->b:Z

    .line 18
    .line 19
    iput-boolean p0, v0, Lyg3;->Y:Z

    .line 20
    .line 21
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
    const-class v0, Lwg3;

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
    check-cast p1, Lwg3;

    .line 17
    .line 18
    iget-boolean v0, p0, Lwg3;->b:Z

    .line 19
    .line 20
    iget-boolean v1, p1, Lwg3;->b:Z

    .line 21
    .line 22
    if-eq v0, v1, :cond_3

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_3
    iget-object v0, p0, Lwg3;->c:Lvf2;

    .line 26
    .line 27
    iget-object v1, p1, Lwg3;->c:Lvf2;

    .line 28
    .line 29
    invoke-static {v0, v1}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_4

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_4
    iget-object v0, p0, Lwg3;->d:Lzp1;

    .line 37
    .line 38
    iget-object v1, p1, Lwg3;->d:Lzp1;

    .line 39
    .line 40
    invoke-static {v0, v1}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_5

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_5
    iget-boolean v0, p0, Lwg3;->e:Z

    .line 48
    .line 49
    iget-boolean v1, p1, Lwg3;->e:Z

    .line 50
    .line 51
    if-eq v0, v1, :cond_6

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_6
    iget-object v0, p0, Lwg3;->f:Lq93;

    .line 55
    .line 56
    iget-object v1, p1, Lwg3;->f:Lq93;

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
    iget-object p0, p0, Lwg3;->g:Lne1;

    .line 66
    .line 67
    iget-object p1, p1, Lwg3;->g:Lne1;

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
    check-cast v0, Lyg3;

    .line 3
    .line 4
    iget-boolean p1, v0, Lyg3;->Y:Z

    .line 5
    .line 6
    iget-boolean v1, p0, Lwg3;->b:Z

    .line 7
    .line 8
    if-eq p1, v1, :cond_0

    .line 9
    .line 10
    iput-boolean v1, v0, Lyg3;->Y:Z

    .line 11
    .line 12
    invoke-static {v0}, Lw80;->A(Leh3;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v1, p0, Lwg3;->g:Lne1;

    .line 16
    .line 17
    iget-object v2, p0, Lwg3;->d:Lzp1;

    .line 18
    .line 19
    iget-object v3, p0, Lwg3;->c:Lvf2;

    .line 20
    .line 21
    iget-object v4, p0, Lwg3;->f:Lq93;

    .line 22
    .line 23
    const/4 v5, 0x0

    .line 24
    iget-boolean v6, p0, Lwg3;->e:Z

    .line 25
    .line 26
    invoke-virtual/range {v0 .. v6}, Le60;->Q0(Lne1;Lzp1;Lvf2;Lq93;ZZ)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-boolean v0, p0, Lwg3;->b:Z

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x1f

    .line 8
    .line 9
    mul-int/2addr v0, v1

    .line 10
    const/4 v2, 0x0

    .line 11
    iget-object v3, p0, Lwg3;->c:Lvf2;

    .line 12
    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v3, v2

    .line 21
    :goto_0
    add-int/2addr v0, v3

    .line 22
    mul-int/2addr v0, v1

    .line 23
    iget-object v3, p0, Lwg3;->d:Lzp1;

    .line 24
    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    invoke-interface {v3}, Lzp1;->hashCode()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move v3, v2

    .line 33
    :goto_1
    add-int/2addr v0, v3

    .line 34
    mul-int/2addr v0, v1

    .line 35
    invoke-static {v0, v2, v1}, Lxw1;->n(IZI)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    iget-boolean v3, p0, Lwg3;->e:Z

    .line 40
    .line 41
    invoke-static {v0, v3, v1}, Lxw1;->n(IZI)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    iget-object v3, p0, Lwg3;->f:Lq93;

    .line 46
    .line 47
    if-eqz v3, :cond_2

    .line 48
    .line 49
    iget v2, v3, Lq93;->a:I

    .line 50
    .line 51
    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    :cond_2
    add-int/2addr v0, v2

    .line 56
    mul-int/2addr v0, v1

    .line 57
    iget-object p0, p0, Lwg3;->g:Lne1;

    .line 58
    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    add-int/2addr p0, v0

    .line 64
    return p0
.end method
