.class public final Llg1;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final n:Ljava/util/Comparator;

.field public final o:Z

.field public final p:Ljava/lang/Object;

.field public final q:I

.field public final r:Z

.field public final s:Ljava/lang/Object;

.field public final t:I


# direct methods
.method public constructor <init>(Ljava/util/Comparator;ZLjava/lang/Object;IZLjava/lang/Object;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Llg1;->n:Ljava/util/Comparator;

    .line 8
    .line 9
    iput-boolean p2, p0, Llg1;->o:Z

    .line 10
    .line 11
    iput-boolean p5, p0, Llg1;->r:Z

    .line 12
    .line 13
    iput-object p3, p0, Llg1;->p:Ljava/lang/Object;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    if-eqz p4, :cond_8

    .line 17
    .line 18
    iput p4, p0, Llg1;->q:I

    .line 19
    .line 20
    iput-object p6, p0, Llg1;->s:Ljava/lang/Object;

    .line 21
    .line 22
    if-eqz p7, :cond_7

    .line 23
    .line 24
    iput p7, p0, Llg1;->t:I

    .line 25
    .line 26
    if-eqz p2, :cond_0

    .line 27
    .line 28
    invoke-interface {p1, p3, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    if-eqz p5, :cond_1

    .line 32
    .line 33
    invoke-interface {p1, p6, p6}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 34
    .line 35
    .line 36
    :cond_1
    if-eqz p2, :cond_6

    .line 37
    .line 38
    if-eqz p5, :cond_6

    .line 39
    .line 40
    invoke-interface {p1, p3, p6}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    const/4 p1, 0x0

    .line 45
    const/4 p2, 0x1

    .line 46
    if-gtz p0, :cond_2

    .line 47
    .line 48
    move p5, p2

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    move p5, p1

    .line 51
    :goto_0
    if-eqz p5, :cond_5

    .line 52
    .line 53
    if-nez p0, :cond_6

    .line 54
    .line 55
    if-ne p4, p2, :cond_3

    .line 56
    .line 57
    if-eq p7, p2, :cond_4

    .line 58
    .line 59
    :cond_3
    move p1, p2

    .line 60
    :cond_4
    invoke-static {p1}, Ln44;->U(Z)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_5
    filled-new-array {p3, p6}, [Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    const-string p1, "lowerEndpoint (%s) > upperEndpoint (%s)"

    .line 69
    .line 70
    invoke-static {p1, p0}, Lht4;->w(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw v0

    .line 78
    :cond_6
    return-void

    .line 79
    :cond_7
    throw v0

    .line 80
    :cond_8
    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Llg1;->d(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Llg1;->c(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return p0
.end method

.method public final b(Llg1;)Llg1;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v1, Llg1;->t:I

    .line 6
    .line 7
    iget-object v3, v1, Llg1;->s:Ljava/lang/Object;

    .line 8
    .line 9
    iget v4, v1, Llg1;->q:I

    .line 10
    .line 11
    iget-object v5, v1, Llg1;->p:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v6, v1, Llg1;->n:Ljava/util/Comparator;

    .line 14
    .line 15
    iget-object v7, v0, Llg1;->n:Ljava/util/Comparator;

    .line 16
    .line 17
    invoke-interface {v7, v6}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v6

    .line 21
    invoke-static {v6}, Ln44;->U(Z)V

    .line 22
    .line 23
    .line 24
    iget-boolean v6, v1, Llg1;->o:Z

    .line 25
    .line 26
    const/4 v8, 0x1

    .line 27
    iget-boolean v9, v0, Llg1;->o:Z

    .line 28
    .line 29
    if-nez v9, :cond_0

    .line 30
    .line 31
    move v11, v6

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object v10, v0, Llg1;->p:Ljava/lang/Object;

    .line 34
    .line 35
    if-eqz v6, :cond_2

    .line 36
    .line 37
    invoke-interface {v7, v10, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    if-ltz v6, :cond_1

    .line 42
    .line 43
    if-nez v6, :cond_2

    .line 44
    .line 45
    if-ne v4, v8, :cond_2

    .line 46
    .line 47
    :cond_1
    move v11, v9

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    iget v4, v0, Llg1;->q:I

    .line 50
    .line 51
    move v11, v9

    .line 52
    move-object v5, v10

    .line 53
    :goto_0
    iget-boolean v1, v1, Llg1;->r:Z

    .line 54
    .line 55
    iget-boolean v6, v0, Llg1;->r:Z

    .line 56
    .line 57
    if-nez v6, :cond_3

    .line 58
    .line 59
    move v14, v1

    .line 60
    move-object v15, v3

    .line 61
    goto :goto_1

    .line 62
    :cond_3
    iget-object v9, v0, Llg1;->s:Ljava/lang/Object;

    .line 63
    .line 64
    if-eqz v1, :cond_5

    .line 65
    .line 66
    invoke-interface {v7, v9, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-gtz v1, :cond_4

    .line 71
    .line 72
    if-nez v1, :cond_5

    .line 73
    .line 74
    if-ne v2, v8, :cond_5

    .line 75
    .line 76
    :cond_4
    move-object v15, v3

    .line 77
    move v14, v6

    .line 78
    goto :goto_1

    .line 79
    :cond_5
    iget v2, v0, Llg1;->t:I

    .line 80
    .line 81
    move v14, v6

    .line 82
    move-object v15, v9

    .line 83
    :goto_1
    if-eqz v11, :cond_7

    .line 84
    .line 85
    if-eqz v14, :cond_7

    .line 86
    .line 87
    invoke-interface {v7, v5, v15}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-gtz v1, :cond_6

    .line 92
    .line 93
    if-nez v1, :cond_7

    .line 94
    .line 95
    if-ne v4, v8, :cond_7

    .line 96
    .line 97
    if-ne v2, v8, :cond_7

    .line 98
    .line 99
    :cond_6
    const/4 v2, 0x2

    .line 100
    move v13, v8

    .line 101
    move-object v12, v15

    .line 102
    :goto_2
    move/from16 v16, v2

    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_7
    move v13, v4

    .line 106
    move-object v12, v5

    .line 107
    goto :goto_2

    .line 108
    :goto_3
    new-instance v9, Llg1;

    .line 109
    .line 110
    iget-object v10, v0, Llg1;->n:Ljava/util/Comparator;

    .line 111
    .line 112
    invoke-direct/range {v9 .. v16}, Llg1;-><init>(Ljava/util/Comparator;ZLjava/lang/Object;IZLjava/lang/Object;I)V

    .line 113
    .line 114
    .line 115
    return-object v9
.end method

.method public final c(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Llg1;->r:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Llg1;->s:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v2, p0, Llg1;->n:Ljava/util/Comparator;

    .line 10
    .line 11
    invoke-interface {v2, p1, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/4 v0, 0x1

    .line 16
    if-lez p1, :cond_1

    .line 17
    .line 18
    move v2, v0

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    move v2, v1

    .line 21
    :goto_0
    if-nez p1, :cond_2

    .line 22
    .line 23
    move p1, v0

    .line 24
    goto :goto_1

    .line 25
    :cond_2
    move p1, v1

    .line 26
    :goto_1
    iget p0, p0, Llg1;->t:I

    .line 27
    .line 28
    if-ne p0, v0, :cond_3

    .line 29
    .line 30
    move v1, v0

    .line 31
    :cond_3
    and-int p0, p1, v1

    .line 32
    .line 33
    or-int/2addr p0, v2

    .line 34
    return p0
.end method

.method public final d(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Llg1;->o:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Llg1;->p:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v2, p0, Llg1;->n:Ljava/util/Comparator;

    .line 10
    .line 11
    invoke-interface {v2, p1, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/4 v0, 0x1

    .line 16
    if-gez p1, :cond_1

    .line 17
    .line 18
    move v2, v0

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    move v2, v1

    .line 21
    :goto_0
    if-nez p1, :cond_2

    .line 22
    .line 23
    move p1, v0

    .line 24
    goto :goto_1

    .line 25
    :cond_2
    move p1, v1

    .line 26
    :goto_1
    iget p0, p0, Llg1;->q:I

    .line 27
    .line 28
    if-ne p0, v0, :cond_3

    .line 29
    .line 30
    move v1, v0

    .line 31
    :cond_3
    and-int p0, p1, v1

    .line 32
    .line 33
    or-int/2addr p0, v2

    .line 34
    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Llg1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Llg1;

    .line 6
    .line 7
    iget-object v0, p0, Llg1;->n:Ljava/util/Comparator;

    .line 8
    .line 9
    iget-object v1, p1, Llg1;->n:Ljava/util/Comparator;

    .line 10
    .line 11
    invoke-interface {v0, v1}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-boolean v0, p0, Llg1;->o:Z

    .line 18
    .line 19
    iget-boolean v1, p1, Llg1;->o:Z

    .line 20
    .line 21
    if-ne v0, v1, :cond_0

    .line 22
    .line 23
    iget-boolean v0, p0, Llg1;->r:Z

    .line 24
    .line 25
    iget-boolean v1, p1, Llg1;->r:Z

    .line 26
    .line 27
    if-ne v0, v1, :cond_0

    .line 28
    .line 29
    iget v0, p0, Llg1;->q:I

    .line 30
    .line 31
    iget v1, p1, Llg1;->q:I

    .line 32
    .line 33
    invoke-static {v0, v1}, Ldi0;->i(II)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    iget v0, p0, Llg1;->t:I

    .line 40
    .line 41
    iget v1, p1, Llg1;->t:I

    .line 42
    .line 43
    invoke-static {v0, v1}, Ldi0;->i(II)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    iget-object v0, p0, Llg1;->p:Ljava/lang/Object;

    .line 50
    .line 51
    iget-object v1, p1, Llg1;->p:Ljava/lang/Object;

    .line 52
    .line 53
    invoke-static {v0, v1}, Lca;->o(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_0

    .line 58
    .line 59
    iget-object p0, p0, Llg1;->s:Ljava/lang/Object;

    .line 60
    .line 61
    iget-object p1, p1, Llg1;->s:Ljava/lang/Object;

    .line 62
    .line 63
    invoke-static {p0, p1}, Lca;->o(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    if-eqz p0, :cond_0

    .line 68
    .line 69
    const/4 p0, 0x1

    .line 70
    return p0

    .line 71
    :cond_0
    const/4 p0, 0x0

    .line 72
    return p0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget v0, p0, Llg1;->q:I

    .line 2
    .line 3
    invoke-static {v0}, Ldi0;->f(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Llg1;->t:I

    .line 8
    .line 9
    invoke-static {v1}, Ldi0;->f(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Llg1;->n:Ljava/util/Comparator;

    .line 14
    .line 15
    iget-object v3, p0, Llg1;->p:Ljava/lang/Object;

    .line 16
    .line 17
    iget-object p0, p0, Llg1;->s:Ljava/lang/Object;

    .line 18
    .line 19
    filled-new-array {v2, v3, v0, p0, v1}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0
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
    iget-object v1, p0, Llg1;->n:Ljava/util/Comparator;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, ":"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget v1, p0, Llg1;->q:I

    .line 17
    .line 18
    const/4 v2, 0x2

    .line 19
    if-ne v1, v2, :cond_0

    .line 20
    .line 21
    const/16 v1, 0x5b

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/16 v1, 0x28

    .line 25
    .line 26
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-boolean v1, p0, Llg1;->o:Z

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    iget-object v1, p0, Llg1;->p:Ljava/lang/Object;

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const-string v1, "-\u221e"

    .line 37
    .line 38
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const/16 v1, 0x2c

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-boolean v1, p0, Llg1;->r:Z

    .line 47
    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    iget-object v1, p0, Llg1;->s:Ljava/lang/Object;

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_2
    const-string v1, "\u221e"

    .line 54
    .line 55
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget p0, p0, Llg1;->t:I

    .line 59
    .line 60
    if-ne p0, v2, :cond_3

    .line 61
    .line 62
    const/16 p0, 0x5d

    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_3
    const/16 p0, 0x29

    .line 66
    .line 67
    :goto_3
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    return-object p0
.end method
