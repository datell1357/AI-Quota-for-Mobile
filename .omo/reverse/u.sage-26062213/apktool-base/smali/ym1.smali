.class public final Lym1;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lua3;
.implements Ljava/lang/Cloneable;


# instance fields
.field public final n:Lem1;

.field public final o:Ljava/net/InetAddress;

.field public final p:Ljava/util/ArrayList;

.field public final q:Lta3;

.field public final r:Lsa3;

.field public final s:Z


# direct methods
.method public constructor <init>(Lem1;Ljava/net/InetAddress;Lem1;Z)V
    .locals 7

    .line 104
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    if-eqz p4, :cond_0

    sget-object p3, Lta3;->o:Lta3;

    :goto_0
    move-object v5, p3

    goto :goto_1

    :cond_0
    sget-object p3, Lta3;->n:Lta3;

    goto :goto_0

    :goto_1
    if-eqz p4, :cond_1

    sget-object p3, Lsa3;->o:Lsa3;

    :goto_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    move v4, p4

    goto :goto_3

    :cond_1
    sget-object p3, Lsa3;->n:Lsa3;

    goto :goto_2

    :goto_3
    invoke-direct/range {v0 .. v6}, Lym1;-><init>(Lem1;Ljava/net/InetAddress;Ljava/util/List;ZLta3;Lsa3;)V

    return-void
.end method

.method public constructor <init>(Lem1;Ljava/net/InetAddress;Ljava/util/List;ZLta3;Lsa3;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "Target host"

    .line 5
    .line 6
    invoke-static {p1, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget v0, p1, Lem1;->p:I

    .line 10
    .line 11
    if-ltz v0, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iget-object v0, p1, Lem1;->q:Ljava/lang/String;

    .line 15
    .line 16
    new-instance v1, Lem1;

    .line 17
    .line 18
    iget-object p1, p1, Lem1;->n:Ljava/lang/String;

    .line 19
    .line 20
    const-string v2, "http"

    .line 21
    .line 22
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    const/16 v2, 0x50

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const-string v2, "https"

    .line 32
    .line 33
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    const/16 v2, 0x1bb

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    const/4 v2, -0x1

    .line 43
    :goto_0
    invoke-direct {v1, p1, v2, v0}, Lem1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 44
    .line 45
    .line 46
    move-object p1, v1

    .line 47
    :goto_1
    iput-object p1, p0, Lym1;->n:Lem1;

    .line 48
    .line 49
    iput-object p2, p0, Lym1;->o:Ljava/net/InetAddress;

    .line 50
    .line 51
    if-eqz p3, :cond_3

    .line 52
    .line 53
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-nez p1, :cond_3

    .line 58
    .line 59
    new-instance p1, Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 62
    .line 63
    .line 64
    iput-object p1, p0, Lym1;->p:Ljava/util/ArrayList;

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_3
    const/4 p1, 0x0

    .line 68
    iput-object p1, p0, Lym1;->p:Ljava/util/ArrayList;

    .line 69
    .line 70
    :goto_2
    sget-object p1, Lta3;->o:Lta3;

    .line 71
    .line 72
    if-ne p5, p1, :cond_5

    .line 73
    .line 74
    iget-object p1, p0, Lym1;->p:Ljava/util/ArrayList;

    .line 75
    .line 76
    if-eqz p1, :cond_4

    .line 77
    .line 78
    const/4 p1, 0x1

    .line 79
    goto :goto_3

    .line 80
    :cond_4
    const/4 p1, 0x0

    .line 81
    :goto_3
    const-string p2, "Proxy required if tunnelled"

    .line 82
    .line 83
    invoke-static {p2, p1}, Lw80;->l(Ljava/lang/String;Z)V

    .line 84
    .line 85
    .line 86
    :cond_5
    iput-boolean p4, p0, Lym1;->s:Z

    .line 87
    .line 88
    if-eqz p5, :cond_6

    .line 89
    .line 90
    goto :goto_4

    .line 91
    :cond_6
    sget-object p5, Lta3;->n:Lta3;

    .line 92
    .line 93
    :goto_4
    iput-object p5, p0, Lym1;->q:Lta3;

    .line 94
    .line 95
    if-eqz p6, :cond_7

    .line 96
    .line 97
    goto :goto_5

    .line 98
    :cond_7
    sget-object p6, Lsa3;->n:Lsa3;

    .line 99
    .line 100
    :goto_5
    iput-object p6, p0, Lym1;->r:Lsa3;

    .line 101
    .line 102
    return-void
.end method

.method public constructor <init>(Lem1;Ljava/net/InetAddress;Z)V
    .locals 7

    .line 103
    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sget-object v5, Lta3;->n:Lta3;

    sget-object v6, Lsa3;->n:Lsa3;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    invoke-direct/range {v0 .. v6}, Lym1;-><init>(Lem1;Ljava/net/InetAddress;Ljava/util/List;ZLta3;Lsa3;)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lym1;->s:Z

    .line 2
    .line 3
    return p0
.end method

.method public final b()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object p0, p0, Lym1;->p:Ljava/util/ArrayList;

    .line 3
    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    add-int/2addr p0, v0

    .line 11
    return p0

    .line 12
    :cond_0
    return v0
.end method

.method public final c()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lym1;->q:Lta3;

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
    iget-object p0, p0, Lym1;->n:Lem1;

    .line 2
    .line 3
    return-object p0
.end method

.method public final e()Lem1;
    .locals 1

    .line 1
    iget-object p0, p0, Lym1;->p:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lem1;

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Lym1;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    check-cast p1, Lym1;

    .line 9
    .line 10
    iget-boolean v0, p0, Lym1;->s:Z

    .line 11
    .line 12
    iget-boolean v1, p1, Lym1;->s:Z

    .line 13
    .line 14
    if-ne v0, v1, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lym1;->q:Lta3;

    .line 17
    .line 18
    iget-object v1, p1, Lym1;->q:Lta3;

    .line 19
    .line 20
    if-ne v0, v1, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lym1;->r:Lsa3;

    .line 23
    .line 24
    iget-object v1, p1, Lym1;->r:Lsa3;

    .line 25
    .line 26
    if-ne v0, v1, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lym1;->n:Lem1;

    .line 29
    .line 30
    iget-object v1, p1, Lym1;->n:Lem1;

    .line 31
    .line 32
    invoke-static {v0, v1}, Lc75;->A(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    iget-object v0, p0, Lym1;->o:Ljava/net/InetAddress;

    .line 39
    .line 40
    iget-object v1, p1, Lym1;->o:Ljava/net/InetAddress;

    .line 41
    .line 42
    invoke-static {v0, v1}, Lc75;->A(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    iget-object p0, p0, Lym1;->p:Ljava/util/ArrayList;

    .line 49
    .line 50
    iget-object p1, p1, Lym1;->p:Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-static {p0, p1}, Lc75;->A(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    if-eqz p0, :cond_1

    .line 57
    .line 58
    :goto_0
    const/4 p0, 0x1

    .line 59
    return p0

    .line 60
    :cond_1
    const/4 p0, 0x0

    .line 61
    return p0
.end method

.method public final f(I)Lem1;
    .locals 4

    .line 1
    const-string v0, "Hop index"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lw80;->J(ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lym1;->b()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-ge p1, v0, :cond_0

    .line 12
    .line 13
    move v2, v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v2, 0x0

    .line 16
    :goto_0
    const-string v3, "Hop index exceeds tracked route length"

    .line 17
    .line 18
    invoke-static {v3, v2}, Lw80;->l(Ljava/lang/String;Z)V

    .line 19
    .line 20
    .line 21
    sub-int/2addr v0, v1

    .line 22
    if-ge p1, v0, :cond_1

    .line 23
    .line 24
    iget-object p0, p0, Lym1;->p:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Lem1;

    .line 31
    .line 32
    return-object p0

    .line 33
    :cond_1
    iget-object p0, p0, Lym1;->n:Lem1;

    .line 34
    .line 35
    return-object p0
.end method

.method public final g()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lym1;->r:Lsa3;

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

.method public final hashCode()I
    .locals 5

    .line 1
    const/16 v0, 0x11

    .line 2
    .line 3
    iget-object v1, p0, Lym1;->n:Lem1;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lc75;->I(ILjava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lym1;->o:Ljava/net/InetAddress;

    .line 10
    .line 11
    invoke-static {v0, v1}, Lc75;->I(ILjava/lang/Object;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Lym1;->p:Ljava/util/ArrayList;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const/4 v3, 0x0

    .line 24
    :goto_0
    if-ge v3, v2, :cond_0

    .line 25
    .line 26
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    add-int/lit8 v3, v3, 0x1

    .line 31
    .line 32
    check-cast v4, Lem1;

    .line 33
    .line 34
    invoke-static {v0, v4}, Lc75;->I(ILjava/lang/Object;)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-boolean v1, p0, Lym1;->s:Z

    .line 40
    .line 41
    invoke-static {v0, v1}, Lc75;->H(II)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    iget-object v1, p0, Lym1;->q:Lta3;

    .line 46
    .line 47
    invoke-static {v0, v1}, Lc75;->I(ILjava/lang/Object;)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    iget-object p0, p0, Lym1;->r:Lsa3;

    .line 52
    .line 53
    invoke-static {v0, p0}, Lc75;->I(ILjava/lang/Object;)I

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-virtual {p0}, Lym1;->b()I

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
    const-string v1, "->"

    .line 15
    .line 16
    iget-object v2, p0, Lym1;->o:Ljava/net/InetAddress;

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    :cond_0
    const/16 v2, 0x7b

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Lym1;->q:Lta3;

    .line 32
    .line 33
    sget-object v3, Lta3;->o:Lta3;

    .line 34
    .line 35
    if-ne v2, v3, :cond_1

    .line 36
    .line 37
    const/16 v2, 0x74

    .line 38
    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    :cond_1
    iget-object v2, p0, Lym1;->r:Lsa3;

    .line 43
    .line 44
    sget-object v3, Lsa3;->o:Lsa3;

    .line 45
    .line 46
    if-ne v2, v3, :cond_2

    .line 47
    .line 48
    const/16 v2, 0x6c

    .line 49
    .line 50
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    :cond_2
    iget-boolean v2, p0, Lym1;->s:Z

    .line 54
    .line 55
    if-eqz v2, :cond_3

    .line 56
    .line 57
    const/16 v2, 0x73

    .line 58
    .line 59
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    :cond_3
    const-string v2, "}->"

    .line 63
    .line 64
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    iget-object v2, p0, Lym1;->p:Ljava/util/ArrayList;

    .line 68
    .line 69
    if-eqz v2, :cond_4

    .line 70
    .line 71
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    const/4 v4, 0x0

    .line 76
    :goto_0
    if-ge v4, v3, :cond_4

    .line 77
    .line 78
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    add-int/lit8 v4, v4, 0x1

    .line 83
    .line 84
    check-cast v5, Lem1;

    .line 85
    .line 86
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_4
    iget-object p0, p0, Lym1;->n:Lem1;

    .line 94
    .line 95
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    return-object p0
.end method
