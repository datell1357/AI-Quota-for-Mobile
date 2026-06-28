.class final Loa4;
.super Lrd2;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd2;"
    }
.end annotation


# instance fields
.field public final b:Ln14;

.field public final c:Lj14;

.field public final d:Lo11;

.field public final e:Ly31;

.field public final f:Lzl3;


# direct methods
.method public constructor <init>(Ln14;Lj14;Lo11;Ly31;Lzl3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Loa4;->b:Ln14;

    .line 5
    .line 6
    iput-object p2, p0, Loa4;->c:Lj14;

    .line 7
    .line 8
    iput-object p3, p0, Loa4;->d:Lo11;

    .line 9
    .line 10
    iput-object p4, p0, Loa4;->e:Ly31;

    .line 11
    .line 12
    iput-object p5, p0, Loa4;->f:Lzl3;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final e()Lmd2;
    .locals 2

    .line 1
    new-instance v0, Lqa4;

    .line 2
    .line 3
    invoke-direct {v0}, Lmd2;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Loa4;->c:Lj14;

    .line 7
    .line 8
    iput-object v1, v0, Lqa4;->B:Lj14;

    .line 9
    .line 10
    iget-object v1, p0, Loa4;->d:Lo11;

    .line 11
    .line 12
    iput-object v1, v0, Lqa4;->C:Lo11;

    .line 13
    .line 14
    iget-object v1, p0, Loa4;->e:Ly31;

    .line 15
    .line 16
    iput-object v1, v0, Lqa4;->D:Ly31;

    .line 17
    .line 18
    iget-object p0, p0, Loa4;->f:Lzl3;

    .line 19
    .line 20
    iput-object p0, v0, Lqa4;->E:Lzl3;

    .line 21
    .line 22
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Loa4;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    check-cast p1, Loa4;

    .line 12
    .line 13
    iget-object v1, p0, Loa4;->b:Ln14;

    .line 14
    .line 15
    iget-object v3, p1, Loa4;->b:Ln14;

    .line 16
    .line 17
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    iget-object v1, p0, Loa4;->c:Lj14;

    .line 25
    .line 26
    iget-object v3, p1, Loa4;->c:Lj14;

    .line 27
    .line 28
    invoke-static {v1, v3}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_3
    iget-object v1, p0, Loa4;->d:Lo11;

    .line 36
    .line 37
    iget-object v3, p1, Loa4;->d:Lo11;

    .line 38
    .line 39
    invoke-virtual {v1, v3}, Lo11;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_4

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_4
    iget-object v1, p0, Loa4;->e:Ly31;

    .line 47
    .line 48
    iget-object v3, p1, Loa4;->e:Ly31;

    .line 49
    .line 50
    invoke-static {v1, v3}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_5

    .line 55
    .line 56
    :goto_0
    return v2

    .line 57
    :cond_5
    iget-object p0, p0, Loa4;->f:Lzl3;

    .line 58
    .line 59
    iget-object p1, p1, Loa4;->f:Lzl3;

    .line 60
    .line 61
    if-eq p0, p1, :cond_6

    .line 62
    .line 63
    return v2

    .line 64
    :cond_6
    return v0
.end method

.method public final f(Lmd2;)V
    .locals 1

    .line 1
    check-cast p1, Lqa4;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Loa4;->c:Lj14;

    .line 7
    .line 8
    iput-object v0, p1, Lqa4;->B:Lj14;

    .line 9
    .line 10
    iget-object v0, p0, Loa4;->d:Lo11;

    .line 11
    .line 12
    iput-object v0, p1, Lqa4;->C:Lo11;

    .line 13
    .line 14
    iget-object v0, p0, Loa4;->e:Ly31;

    .line 15
    .line 16
    iput-object v0, p1, Lqa4;->D:Ly31;

    .line 17
    .line 18
    iget-object p0, p0, Loa4;->f:Lzl3;

    .line 19
    .line 20
    iput-object p0, p1, Lqa4;->E:Lzl3;

    .line 21
    .line 22
    return-void
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Loa4;->b:Ln14;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Loa4;->c:Lj14;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v1, v0

    .line 16
    mul-int/lit8 v1, v1, 0x1f

    .line 17
    .line 18
    iget-object v0, p0, Loa4;->d:Lo11;

    .line 19
    .line 20
    iget-object v0, v0, Lo11;->a:Lo14;

    .line 21
    .line 22
    invoke-virtual {v0}, Lo14;->hashCode()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    add-int/2addr v0, v1

    .line 27
    mul-int/lit8 v0, v0, 0x1f

    .line 28
    .line 29
    iget-object v1, p0, Loa4;->e:Ly31;

    .line 30
    .line 31
    iget-object v1, v1, Ly31;->a:Lo14;

    .line 32
    .line 33
    invoke-virtual {v1}, Lo14;->hashCode()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    add-int/2addr v1, v0

    .line 38
    mul-int/lit8 v1, v1, 0x1f

    .line 39
    .line 40
    iget-object p0, p0, Loa4;->f:Lzl3;

    .line 41
    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    add-int/2addr p0, v1

    .line 47
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "VeilModifierElement(transition="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Loa4;->b:Ln14;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", veilAnimation="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Loa4;->c:Lj14;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", enter="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Loa4;->d:Lo11;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", exit="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Loa4;->e:Ly31;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", mutableTransformState="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object p0, p0, Loa4;->f:Lzl3;

    .line 49
    .line 50
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p0, ")"

    .line 54
    .line 55
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0
.end method
