.class public final Lya3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lua3;
.implements Ljava/lang/Cloneable;


# instance fields
.field public final n:Lem1;

.field public final o:Ljava/net/InetAddress;

.field public p:Z

.field public q:[Lem1;

.field public r:Lta3;

.field public s:Lsa3;

.field public t:Z


# direct methods
.method public constructor <init>(Lym1;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lym1;->n:Lem1;

    .line 2
    .line 3
    iget-object p1, p1, Lym1;->o:Ljava/net/InetAddress;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "Target host"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lya3;->n:Lem1;

    .line 14
    .line 15
    iput-object p1, p0, Lya3;->o:Ljava/net/InetAddress;

    .line 16
    .line 17
    sget-object p1, Lta3;->n:Lta3;

    .line 18
    .line 19
    iput-object p1, p0, Lya3;->r:Lta3;

    .line 20
    .line 21
    sget-object p1, Lsa3;->n:Lsa3;

    .line 22
    .line 23
    iput-object p1, p0, Lya3;->s:Lsa3;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lya3;->t:Z

    .line 2
    .line 3
    return p0
.end method

.method public final b()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lya3;->p:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object p0, p0, Lya3;->q:[Lem1;

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    array-length p0, p0

    .line 12
    add-int/2addr p0, v0

    .line 13
    return p0

    .line 14
    :cond_1
    const/4 p0, 0x0

    .line 15
    return p0
.end method

.method public final c()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lya3;->r:Lta3;

    .line 2
    .line 3
    sget-object v0, Lta3;->o:Lta3;

    .line 4
    .line 5
    if-ne p0, v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final d()Lem1;
    .locals 0

    .line 1
    iget-object p0, p0, Lya3;->n:Lem1;

    .line 2
    .line 3
    return-object p0
.end method

.method public final e()Lem1;
    .locals 1

    .line 1
    iget-object p0, p0, Lya3;->q:[Lem1;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    aget-object p0, p0, v0

    .line 9
    .line 10
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p1, p0, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Lya3;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_1
    check-cast p1, Lya3;

    .line 10
    .line 11
    iget-boolean v0, p0, Lya3;->p:Z

    .line 12
    .line 13
    iget-boolean v1, p1, Lya3;->p:Z

    .line 14
    .line 15
    if-ne v0, v1, :cond_2

    .line 16
    .line 17
    iget-boolean v0, p0, Lya3;->t:Z

    .line 18
    .line 19
    iget-boolean v1, p1, Lya3;->t:Z

    .line 20
    .line 21
    if-ne v0, v1, :cond_2

    .line 22
    .line 23
    iget-object v0, p0, Lya3;->r:Lta3;

    .line 24
    .line 25
    iget-object v1, p1, Lya3;->r:Lta3;

    .line 26
    .line 27
    if-ne v0, v1, :cond_2

    .line 28
    .line 29
    iget-object v0, p0, Lya3;->s:Lsa3;

    .line 30
    .line 31
    iget-object v1, p1, Lya3;->s:Lsa3;

    .line 32
    .line 33
    if-ne v0, v1, :cond_2

    .line 34
    .line 35
    iget-object v0, p0, Lya3;->n:Lem1;

    .line 36
    .line 37
    iget-object v1, p1, Lya3;->n:Lem1;

    .line 38
    .line 39
    invoke-static {v0, v1}, Lc75;->A(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    iget-object v0, p0, Lya3;->o:Ljava/net/InetAddress;

    .line 46
    .line 47
    iget-object v1, p1, Lya3;->o:Ljava/net/InetAddress;

    .line 48
    .line 49
    invoke-static {v0, v1}, Lc75;->A(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    iget-object p0, p0, Lya3;->q:[Lem1;

    .line 56
    .line 57
    iget-object p1, p1, Lya3;->q:[Lem1;

    .line 58
    .line 59
    invoke-static {p0, p1}, Lc75;->B([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    if-eqz p0, :cond_2

    .line 64
    .line 65
    :goto_0
    const/4 p0, 0x1

    .line 66
    return p0

    .line 67
    :cond_2
    :goto_1
    const/4 p0, 0x0

    .line 68
    return p0
.end method

.method public final f()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lya3;->s:Lsa3;

    .line 2
    .line 3
    sget-object v0, Lsa3;->o:Lsa3;

    .line 4
    .line 5
    if-ne p0, v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method public final g()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lya3;->p:Z

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lya3;->q:[Lem1;

    .line 6
    .line 7
    sget-object v1, Lta3;->n:Lta3;

    .line 8
    .line 9
    iput-object v1, p0, Lya3;->r:Lta3;

    .line 10
    .line 11
    sget-object v1, Lsa3;->n:Lsa3;

    .line 12
    .line 13
    iput-object v1, p0, Lya3;->s:Lsa3;

    .line 14
    .line 15
    iput-boolean v0, p0, Lya3;->t:Z

    .line 16
    .line 17
    return-void
.end method

.method public final h()Lym1;
    .locals 9

    .line 1
    iget-boolean v0, p0, Lya3;->p:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    new-instance v2, Lym1;

    .line 8
    .line 9
    iget-object v0, p0, Lya3;->q:[Lem1;

    .line 10
    .line 11
    iget-boolean v6, p0, Lya3;->t:Z

    .line 12
    .line 13
    iget-object v7, p0, Lya3;->r:Lta3;

    .line 14
    .line 15
    iget-object v8, p0, Lya3;->s:Lsa3;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    :cond_1
    move-object v5, v1

    .line 24
    iget-object v3, p0, Lya3;->n:Lem1;

    .line 25
    .line 26
    iget-object v4, p0, Lya3;->o:Ljava/net/InetAddress;

    .line 27
    .line 28
    invoke-direct/range {v2 .. v8}, Lym1;-><init>(Lem1;Ljava/net/InetAddress;Ljava/util/List;ZLta3;Lsa3;)V

    .line 29
    .line 30
    .line 31
    return-object v2
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    const/16 v0, 0x11

    .line 2
    .line 3
    iget-object v1, p0, Lya3;->n:Lem1;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lc75;->I(ILjava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lya3;->o:Ljava/net/InetAddress;

    .line 10
    .line 11
    invoke-static {v0, v1}, Lc75;->I(ILjava/lang/Object;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Lya3;->q:[Lem1;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    array-length v2, v1

    .line 20
    const/4 v3, 0x0

    .line 21
    :goto_0
    if-ge v3, v2, :cond_0

    .line 22
    .line 23
    aget-object v4, v1, v3

    .line 24
    .line 25
    invoke-static {v0, v4}, Lc75;->I(ILjava/lang/Object;)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    add-int/lit8 v3, v3, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-boolean v1, p0, Lya3;->p:Z

    .line 33
    .line 34
    invoke-static {v0, v1}, Lc75;->H(II)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iget-boolean v1, p0, Lya3;->t:Z

    .line 39
    .line 40
    invoke-static {v0, v1}, Lc75;->H(II)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    iget-object v1, p0, Lya3;->r:Lta3;

    .line 45
    .line 46
    invoke-static {v0, v1}, Lc75;->I(ILjava/lang/Object;)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    iget-object p0, p0, Lya3;->s:Lsa3;

    .line 51
    .line 52
    invoke-static {v0, p0}, Lc75;->I(ILjava/lang/Object;)I

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-virtual {p0}, Lya3;->b()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    mul-int/lit8 v1, v1, 0x1e

    .line 8
    .line 9
    add-int/lit8 v1, v1, 0x32

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 12
    .line 13
    .line 14
    const-string v1, "RouteTracker["

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, "->"

    .line 20
    .line 21
    iget-object v2, p0, Lya3;->o:Ljava/net/InetAddress;

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    :cond_0
    const/16 v2, 0x7b

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-boolean v2, p0, Lya3;->p:Z

    .line 37
    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    const/16 v2, 0x63

    .line 41
    .line 42
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    :cond_1
    iget-object v2, p0, Lya3;->r:Lta3;

    .line 46
    .line 47
    sget-object v3, Lta3;->o:Lta3;

    .line 48
    .line 49
    if-ne v2, v3, :cond_2

    .line 50
    .line 51
    const/16 v2, 0x74

    .line 52
    .line 53
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    :cond_2
    iget-object v2, p0, Lya3;->s:Lsa3;

    .line 57
    .line 58
    sget-object v3, Lsa3;->o:Lsa3;

    .line 59
    .line 60
    if-ne v2, v3, :cond_3

    .line 61
    .line 62
    const/16 v2, 0x6c

    .line 63
    .line 64
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    :cond_3
    iget-boolean v2, p0, Lya3;->t:Z

    .line 68
    .line 69
    if-eqz v2, :cond_4

    .line 70
    .line 71
    const/16 v2, 0x73

    .line 72
    .line 73
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    :cond_4
    const-string v2, "}->"

    .line 77
    .line 78
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget-object v2, p0, Lya3;->q:[Lem1;

    .line 82
    .line 83
    if-eqz v2, :cond_5

    .line 84
    .line 85
    array-length v3, v2

    .line 86
    const/4 v4, 0x0

    .line 87
    :goto_0
    if-ge v4, v3, :cond_5

    .line 88
    .line 89
    aget-object v5, v2, v4

    .line 90
    .line 91
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    add-int/lit8 v4, v4, 0x1

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_5
    iget-object p0, p0, Lya3;->n:Lem1;

    .line 101
    .line 102
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const/16 p0, 0x5d

    .line 106
    .line 107
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    return-object p0
.end method
