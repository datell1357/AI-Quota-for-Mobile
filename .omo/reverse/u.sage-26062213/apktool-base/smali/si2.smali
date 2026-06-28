.class public Lsi2;
.super Lqi2;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lfx1;


# static fields
.field public static final synthetic t:I


# instance fields
.field public final s:Lvi2;


# direct methods
.method public constructor <init>(Lwi2;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lqi2;-><init>(Llk2;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lvi2;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lvi2;-><init>(Lsi2;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lsi2;->s:Lvi2;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final e(Leh;)Lpi2;
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lqi2;->e(Leh;)Lpi2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object p0, p0, Lsi2;->s:Lvi2;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lvi2;->e:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Lsi2;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {p0, v0, p1, v2, v1}, Lvi2;->r(Lpi2;Leh;ZLqi2;)Lpi2;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    if-eqz p1, :cond_4

    .line 5
    .line 6
    instance-of v0, p1, Lsi2;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_1
    invoke-super {p0, p1}, Lqi2;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_4

    .line 16
    .line 17
    iget-object p0, p0, Lsi2;->s:Lvi2;

    .line 18
    .line 19
    iget-object v0, p0, Lvi2;->f:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Lmq3;

    .line 22
    .line 23
    invoke-virtual {v0}, Lmq3;->f()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    check-cast p1, Lsi2;

    .line 28
    .line 29
    iget-object p1, p1, Lsi2;->s:Lvi2;

    .line 30
    .line 31
    iget-object v1, p1, Lvi2;->f:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v1, Lmq3;

    .line 34
    .line 35
    invoke-virtual {v1}, Lmq3;->f()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-ne v0, v1, :cond_4

    .line 40
    .line 41
    iget v0, p0, Lvi2;->b:I

    .line 42
    .line 43
    iget v1, p1, Lvi2;->b:I

    .line 44
    .line 45
    if-ne v0, v1, :cond_4

    .line 46
    .line 47
    iget-object p0, p0, Lvi2;->f:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast p0, Lmq3;

    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    new-instance v0, Lg1;

    .line 55
    .line 56
    const/4 v1, 0x3

    .line 57
    invoke-direct {v0, v1, p0}, Lg1;-><init>(ILjava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    invoke-static {v0}, Lci3;->J(Ljava/util/Iterator;)Lai3;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    check-cast p0, Laf0;

    .line 65
    .line 66
    invoke-virtual {p0}, Laf0;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_3

    .line 75
    .line 76
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Lqi2;

    .line 81
    .line 82
    iget-object v1, p1, Lvi2;->f:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v1, Lmq3;

    .line 85
    .line 86
    iget-object v2, v0, Lqi2;->o:Lgg;

    .line 87
    .line 88
    iget v2, v2, Lgg;->a:I

    .line 89
    .line 90
    invoke-virtual {v1, v2}, Lmq3;->c(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v0, v1}, Lqi2;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-nez v0, :cond_2

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_3
    :goto_0
    const/4 p0, 0x1

    .line 102
    return p0

    .line 103
    :cond_4
    :goto_1
    const/4 p0, 0x0

    .line 104
    return p0
.end method

.method public final f(Leh;Lqi2;)Lpi2;
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lqi2;->e(Leh;)Lpi2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object p0, p0, Lsi2;->s:Lvi2;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {p0, v0, p1, v1, p2}, Lvi2;->r(Lpi2;Leh;ZLqi2;)Lpi2;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public final g(Ljava/lang/String;ZLqi2;)Lpi2;
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lsi2;->s:Lvi2;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lvi2;->e:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p0, Lsi2;

    .line 12
    .line 13
    iget-object v0, p0, Lqi2;->o:Lgg;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lgg;->c(Ljava/lang/String;)Lpi2;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lsi2;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    :cond_0
    :goto_0
    move-object v3, v2

    .line 29
    check-cast v3, Lui2;

    .line 30
    .line 31
    invoke-virtual {v3}, Lui2;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    const/4 v5, 0x0

    .line 36
    if-eqz v4, :cond_3

    .line 37
    .line 38
    invoke-virtual {v3}, Lui2;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Lqi2;

    .line 43
    .line 44
    invoke-static {v3, p3}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-eqz v4, :cond_1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    instance-of v4, v3, Lsi2;

    .line 52
    .line 53
    if-eqz v4, :cond_2

    .line 54
    .line 55
    check-cast v3, Lsi2;

    .line 56
    .line 57
    const/4 v4, 0x0

    .line 58
    invoke-virtual {v3, p1, v4, p0}, Lsi2;->g(Ljava/lang/String;ZLqi2;)Lpi2;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    goto :goto_1

    .line 63
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    iget-object v3, v3, Lqi2;->o:Lgg;

    .line 67
    .line 68
    invoke-virtual {v3, p1}, Lgg;->c(Ljava/lang/String;)Lpi2;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    :goto_1
    if-eqz v5, :cond_0

    .line 73
    .line 74
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_3
    invoke-static {v1}, Lo70;->q0(Ljava/util/ArrayList;)Ljava/lang/Comparable;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    check-cast v1, Lpi2;

    .line 83
    .line 84
    iget-object v2, p0, Lqi2;->p:Lsi2;

    .line 85
    .line 86
    if-eqz v2, :cond_4

    .line 87
    .line 88
    if-eqz p2, :cond_4

    .line 89
    .line 90
    invoke-virtual {v2, p3}, Lsi2;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result p2

    .line 94
    if-nez p2, :cond_4

    .line 95
    .line 96
    const/4 p2, 0x1

    .line 97
    invoke-virtual {v2, p1, p2, p0}, Lsi2;->g(Ljava/lang/String;ZLqi2;)Lpi2;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    :cond_4
    filled-new-array {v0, v1, v5}, [Lpi2;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    invoke-static {p0}, Lji;->X([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    invoke-static {p0}, Lo70;->q0(Ljava/util/ArrayList;)Ljava/lang/Comparable;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    check-cast p0, Lpi2;

    .line 114
    .line 115
    return-object p0
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    iget-object p0, p0, Lsi2;->s:Lvi2;

    .line 2
    .line 3
    iget v0, p0, Lvi2;->b:I

    .line 4
    .line 5
    iget-object p0, p0, Lvi2;->f:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lmq3;

    .line 8
    .line 9
    invoke-virtual {p0}, Lmq3;->f()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    if-ge v2, v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0, v2}, Lmq3;->d(I)I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    invoke-virtual {p0, v2}, Lmq3;->g(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    check-cast v4, Lqi2;

    .line 25
    .line 26
    mul-int/lit8 v0, v0, 0x1f

    .line 27
    .line 28
    add-int/2addr v0, v3

    .line 29
    mul-int/lit8 v0, v0, 0x1f

    .line 30
    .line 31
    invoke-virtual {v4}, Lqi2;->hashCode()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    add-int/2addr v0, v3

    .line 36
    add-int/lit8 v2, v2, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    iget-object p0, p0, Lsi2;->s:Lvi2;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lui2;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lui2;-><init>(Lvi2;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lqi2;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lsi2;->s:Lvi2;

    .line 14
    .line 15
    iget-object v1, p0, Lvi2;->d:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-static {v1}, Lzs3;->I0(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v2, 0x1

    .line 30
    invoke-virtual {p0, v1, v2}, Lvi2;->o(Ljava/lang/String;Z)Lqi2;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 36
    :goto_1
    if-nez v1, :cond_2

    .line 37
    .line 38
    iget v1, p0, Lvi2;->b:I

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Lvi2;->n(I)Lqi2;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    :cond_2
    const-string v2, " startDestination="

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    if-nez v1, :cond_5

    .line 50
    .line 51
    iget-object v1, p0, Lvi2;->d:Ljava/lang/String;

    .line 52
    .line 53
    if-eqz v1, :cond_3

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_3
    iget-object v1, p0, Lvi2;->c:Ljava/lang/String;

    .line 60
    .line 61
    if-eqz v1, :cond_4

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string v2, "0x"

    .line 70
    .line 71
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget p0, p0, Lvi2;->b:I

    .line 75
    .line 76
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_5
    const-string p0, "{"

    .line 92
    .line 93
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1}, Lqi2;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string p0, "}"

    .line 104
    .line 105
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    return-object p0
.end method
