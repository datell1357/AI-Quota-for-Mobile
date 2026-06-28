.class public final Lx32;
.super Ljava/util/AbstractMap;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final v:Llh0;


# instance fields
.field public final n:Ljava/util/Comparator;

.field public final o:Z

.field public p:Lw32;

.field public q:I

.field public r:I

.field public final s:Lw32;

.field public t:Lv32;

.field public u:Lv32;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Llh0;

    .line 2
    .line 3
    const/16 v1, 0xb

    .line 4
    .line 5
    invoke-direct {v0, v1}, Llh0;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lx32;->v:Llh0;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lx32;->q:I

    .line 6
    .line 7
    iput v0, p0, Lx32;->r:I

    .line 8
    .line 9
    sget-object v0, Lx32;->v:Llh0;

    .line 10
    .line 11
    iput-object v0, p0, Lx32;->n:Ljava/util/Comparator;

    .line 12
    .line 13
    iput-boolean p1, p0, Lx32;->o:Z

    .line 14
    .line 15
    new-instance v0, Lw32;

    .line 16
    .line 17
    invoke-direct {v0, p1}, Lw32;-><init>(Z)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lx32;->s:Lw32;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Z)Lw32;
    .locals 12

    .line 1
    iget-object v0, p0, Lx32;->p:Lw32;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    sget-object v2, Lx32;->v:Llh0;

    .line 5
    .line 6
    iget-object v3, p0, Lx32;->n:Ljava/util/Comparator;

    .line 7
    .line 8
    if-eqz v0, :cond_5

    .line 9
    .line 10
    if-ne v3, v2, :cond_0

    .line 11
    .line 12
    move-object v4, p1

    .line 13
    check-cast v4, Ljava/lang/Comparable;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object v4, v1

    .line 17
    :goto_0
    iget-object v5, v0, Lw32;->s:Ljava/lang/Object;

    .line 18
    .line 19
    if-eqz v4, :cond_1

    .line 20
    .line 21
    invoke-interface {v4, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    invoke-interface {v3, p1, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    :goto_1
    if-nez v5, :cond_2

    .line 31
    .line 32
    return-object v0

    .line 33
    :cond_2
    if-gez v5, :cond_3

    .line 34
    .line 35
    iget-object v6, v0, Lw32;->o:Lw32;

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_3
    iget-object v6, v0, Lw32;->p:Lw32;

    .line 39
    .line 40
    :goto_2
    if-nez v6, :cond_4

    .line 41
    .line 42
    :goto_3
    move-object v8, v0

    .line 43
    goto :goto_4

    .line 44
    :cond_4
    move-object v0, v6

    .line 45
    goto :goto_0

    .line 46
    :cond_5
    const/4 v5, 0x0

    .line 47
    goto :goto_3

    .line 48
    :goto_4
    if-nez p2, :cond_6

    .line 49
    .line 50
    return-object v1

    .line 51
    :cond_6
    const/4 p2, 0x1

    .line 52
    iget-object v10, p0, Lx32;->s:Lw32;

    .line 53
    .line 54
    if-nez v8, :cond_9

    .line 55
    .line 56
    if-ne v3, v2, :cond_8

    .line 57
    .line 58
    instance-of v0, p1, Ljava/lang/Comparable;

    .line 59
    .line 60
    if-eqz v0, :cond_7

    .line 61
    .line 62
    goto :goto_5

    .line 63
    :cond_7
    new-instance p0, Ljava/lang/ClassCastException;

    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    const-string p2, " is not Comparable"

    .line 74
    .line 75
    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-direct {p0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p0

    .line 83
    :cond_8
    :goto_5
    new-instance v6, Lw32;

    .line 84
    .line 85
    iget-boolean v7, p0, Lx32;->o:Z

    .line 86
    .line 87
    iget-object v11, v10, Lw32;->r:Lw32;

    .line 88
    .line 89
    move-object v9, p1

    .line 90
    invoke-direct/range {v6 .. v11}, Lw32;-><init>(ZLw32;Ljava/lang/Object;Lw32;Lw32;)V

    .line 91
    .line 92
    .line 93
    iput-object v6, p0, Lx32;->p:Lw32;

    .line 94
    .line 95
    goto :goto_7

    .line 96
    :cond_9
    move-object v9, p1

    .line 97
    new-instance v6, Lw32;

    .line 98
    .line 99
    iget-boolean v7, p0, Lx32;->o:Z

    .line 100
    .line 101
    iget-object v11, v10, Lw32;->r:Lw32;

    .line 102
    .line 103
    invoke-direct/range {v6 .. v11}, Lw32;-><init>(ZLw32;Ljava/lang/Object;Lw32;Lw32;)V

    .line 104
    .line 105
    .line 106
    if-gez v5, :cond_a

    .line 107
    .line 108
    iput-object v6, v8, Lw32;->o:Lw32;

    .line 109
    .line 110
    goto :goto_6

    .line 111
    :cond_a
    iput-object v6, v8, Lw32;->p:Lw32;

    .line 112
    .line 113
    :goto_6
    invoke-virtual {p0, v8, p2}, Lx32;->b(Lw32;Z)V

    .line 114
    .line 115
    .line 116
    :goto_7
    iget p1, p0, Lx32;->q:I

    .line 117
    .line 118
    add-int/2addr p1, p2

    .line 119
    iput p1, p0, Lx32;->q:I

    .line 120
    .line 121
    iget p1, p0, Lx32;->r:I

    .line 122
    .line 123
    add-int/2addr p1, p2

    .line 124
    iput p1, p0, Lx32;->r:I

    .line 125
    .line 126
    return-object v6
.end method

.method public final b(Lw32;Z)V
    .locals 7

    .line 1
    :goto_0
    if-eqz p1, :cond_e

    .line 2
    .line 3
    iget-object v0, p1, Lw32;->o:Lw32;

    .line 4
    .line 5
    iget-object v1, p1, Lw32;->p:Lw32;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget v3, v0, Lw32;->v:I

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    move v3, v2

    .line 14
    :goto_1
    if-eqz v1, :cond_1

    .line 15
    .line 16
    iget v4, v1, Lw32;->v:I

    .line 17
    .line 18
    goto :goto_2

    .line 19
    :cond_1
    move v4, v2

    .line 20
    :goto_2
    sub-int v5, v3, v4

    .line 21
    .line 22
    const/4 v6, -0x2

    .line 23
    if-ne v5, v6, :cond_6

    .line 24
    .line 25
    iget-object v0, v1, Lw32;->o:Lw32;

    .line 26
    .line 27
    iget-object v3, v1, Lw32;->p:Lw32;

    .line 28
    .line 29
    if-eqz v3, :cond_2

    .line 30
    .line 31
    iget v3, v3, Lw32;->v:I

    .line 32
    .line 33
    goto :goto_3

    .line 34
    :cond_2
    move v3, v2

    .line 35
    :goto_3
    if-eqz v0, :cond_3

    .line 36
    .line 37
    iget v2, v0, Lw32;->v:I

    .line 38
    .line 39
    :cond_3
    sub-int/2addr v2, v3

    .line 40
    const/4 v0, -0x1

    .line 41
    if-eq v2, v0, :cond_5

    .line 42
    .line 43
    if-nez v2, :cond_4

    .line 44
    .line 45
    if-nez p2, :cond_4

    .line 46
    .line 47
    goto :goto_4

    .line 48
    :cond_4
    invoke-virtual {p0, v1}, Lx32;->g(Lw32;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p1}, Lx32;->f(Lw32;)V

    .line 52
    .line 53
    .line 54
    goto :goto_5

    .line 55
    :cond_5
    :goto_4
    invoke-virtual {p0, p1}, Lx32;->f(Lw32;)V

    .line 56
    .line 57
    .line 58
    :goto_5
    if-eqz p2, :cond_d

    .line 59
    .line 60
    goto :goto_9

    .line 61
    :cond_6
    const/4 v1, 0x2

    .line 62
    const/4 v6, 0x1

    .line 63
    if-ne v5, v1, :cond_b

    .line 64
    .line 65
    iget-object v1, v0, Lw32;->o:Lw32;

    .line 66
    .line 67
    iget-object v3, v0, Lw32;->p:Lw32;

    .line 68
    .line 69
    if-eqz v3, :cond_7

    .line 70
    .line 71
    iget v3, v3, Lw32;->v:I

    .line 72
    .line 73
    goto :goto_6

    .line 74
    :cond_7
    move v3, v2

    .line 75
    :goto_6
    if-eqz v1, :cond_8

    .line 76
    .line 77
    iget v2, v1, Lw32;->v:I

    .line 78
    .line 79
    :cond_8
    sub-int/2addr v2, v3

    .line 80
    if-eq v2, v6, :cond_a

    .line 81
    .line 82
    if-nez v2, :cond_9

    .line 83
    .line 84
    if-nez p2, :cond_9

    .line 85
    .line 86
    goto :goto_7

    .line 87
    :cond_9
    invoke-virtual {p0, v0}, Lx32;->f(Lw32;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, p1}, Lx32;->g(Lw32;)V

    .line 91
    .line 92
    .line 93
    goto :goto_8

    .line 94
    :cond_a
    :goto_7
    invoke-virtual {p0, p1}, Lx32;->g(Lw32;)V

    .line 95
    .line 96
    .line 97
    :goto_8
    if-eqz p2, :cond_d

    .line 98
    .line 99
    goto :goto_9

    .line 100
    :cond_b
    if-nez v5, :cond_c

    .line 101
    .line 102
    add-int/lit8 v3, v3, 0x1

    .line 103
    .line 104
    iput v3, p1, Lw32;->v:I

    .line 105
    .line 106
    if-eqz p2, :cond_d

    .line 107
    .line 108
    goto :goto_9

    .line 109
    :cond_c
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    add-int/2addr v0, v6

    .line 114
    iput v0, p1, Lw32;->v:I

    .line 115
    .line 116
    if-nez p2, :cond_d

    .line 117
    .line 118
    goto :goto_9

    .line 119
    :cond_d
    iget-object p1, p1, Lw32;->n:Lw32;

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_e
    :goto_9
    return-void
.end method

.method public final clear()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lx32;->p:Lw32;

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lx32;->q:I

    .line 6
    .line 7
    iget v0, p0, Lx32;->r:I

    .line 8
    .line 9
    add-int/lit8 v0, v0, 0x1

    .line 10
    .line 11
    iput v0, p0, Lx32;->r:I

    .line 12
    .line 13
    iget-object p0, p0, Lx32;->s:Lw32;

    .line 14
    .line 15
    iput-object p0, p0, Lw32;->r:Lw32;

    .line 16
    .line 17
    iput-object p0, p0, Lw32;->q:Lw32;

    .line 18
    .line 19
    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lx32;->a(Ljava/lang/Object;Z)Lw32;

    .line 6
    .line 7
    .line 8
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    :catch_0
    :cond_0
    if-eqz v1, :cond_1

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_1
    return v0
.end method

.method public final d(Lw32;Z)V
    .locals 6

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object p2, p1, Lw32;->r:Lw32;

    .line 4
    .line 5
    iget-object v0, p1, Lw32;->q:Lw32;

    .line 6
    .line 7
    iput-object v0, p2, Lw32;->q:Lw32;

    .line 8
    .line 9
    iget-object v0, p1, Lw32;->q:Lw32;

    .line 10
    .line 11
    iput-object p2, v0, Lw32;->r:Lw32;

    .line 12
    .line 13
    :cond_0
    iget-object p2, p1, Lw32;->o:Lw32;

    .line 14
    .line 15
    iget-object v0, p1, Lw32;->p:Lw32;

    .line 16
    .line 17
    iget-object v1, p1, Lw32;->n:Lw32;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    const/4 v3, 0x0

    .line 21
    if-eqz p2, :cond_6

    .line 22
    .line 23
    if-eqz v0, :cond_6

    .line 24
    .line 25
    iget v1, p2, Lw32;->v:I

    .line 26
    .line 27
    iget v4, v0, Lw32;->v:I

    .line 28
    .line 29
    if-le v1, v4, :cond_1

    .line 30
    .line 31
    iget-object v0, p2, Lw32;->p:Lw32;

    .line 32
    .line 33
    :goto_0
    move-object v5, v0

    .line 34
    move-object v0, p2

    .line 35
    move-object p2, v5

    .line 36
    if-eqz p2, :cond_3

    .line 37
    .line 38
    iget-object v0, p2, Lw32;->p:Lw32;

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget-object p2, v0, Lw32;->o:Lw32;

    .line 42
    .line 43
    :goto_1
    move-object v5, v0

    .line 44
    move-object v0, p2

    .line 45
    move-object p2, v5

    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    iget-object p2, v0, Lw32;->o:Lw32;

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    move-object v0, p2

    .line 52
    :cond_3
    invoke-virtual {p0, v0, v2}, Lx32;->d(Lw32;Z)V

    .line 53
    .line 54
    .line 55
    iget-object p2, p1, Lw32;->o:Lw32;

    .line 56
    .line 57
    if-eqz p2, :cond_4

    .line 58
    .line 59
    iget v1, p2, Lw32;->v:I

    .line 60
    .line 61
    iput-object p2, v0, Lw32;->o:Lw32;

    .line 62
    .line 63
    iput-object v0, p2, Lw32;->n:Lw32;

    .line 64
    .line 65
    iput-object v3, p1, Lw32;->o:Lw32;

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_4
    move v1, v2

    .line 69
    :goto_2
    iget-object p2, p1, Lw32;->p:Lw32;

    .line 70
    .line 71
    if-eqz p2, :cond_5

    .line 72
    .line 73
    iget v2, p2, Lw32;->v:I

    .line 74
    .line 75
    iput-object p2, v0, Lw32;->p:Lw32;

    .line 76
    .line 77
    iput-object v0, p2, Lw32;->n:Lw32;

    .line 78
    .line 79
    iput-object v3, p1, Lw32;->p:Lw32;

    .line 80
    .line 81
    :cond_5
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 82
    .line 83
    .line 84
    move-result p2

    .line 85
    add-int/lit8 p2, p2, 0x1

    .line 86
    .line 87
    iput p2, v0, Lw32;->v:I

    .line 88
    .line 89
    invoke-virtual {p0, p1, v0}, Lx32;->e(Lw32;Lw32;)V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :cond_6
    if-eqz p2, :cond_7

    .line 94
    .line 95
    invoke-virtual {p0, p1, p2}, Lx32;->e(Lw32;Lw32;)V

    .line 96
    .line 97
    .line 98
    iput-object v3, p1, Lw32;->o:Lw32;

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_7
    if-eqz v0, :cond_8

    .line 102
    .line 103
    invoke-virtual {p0, p1, v0}, Lx32;->e(Lw32;Lw32;)V

    .line 104
    .line 105
    .line 106
    iput-object v3, p1, Lw32;->p:Lw32;

    .line 107
    .line 108
    goto :goto_3

    .line 109
    :cond_8
    invoke-virtual {p0, p1, v3}, Lx32;->e(Lw32;Lw32;)V

    .line 110
    .line 111
    .line 112
    :goto_3
    invoke-virtual {p0, v1, v2}, Lx32;->b(Lw32;Z)V

    .line 113
    .line 114
    .line 115
    iget p1, p0, Lx32;->q:I

    .line 116
    .line 117
    add-int/lit8 p1, p1, -0x1

    .line 118
    .line 119
    iput p1, p0, Lx32;->q:I

    .line 120
    .line 121
    iget p1, p0, Lx32;->r:I

    .line 122
    .line 123
    add-int/lit8 p1, p1, 0x1

    .line 124
    .line 125
    iput p1, p0, Lx32;->r:I

    .line 126
    .line 127
    return-void
.end method

.method public final e(Lw32;Lw32;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lw32;->n:Lw32;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-object v1, p1, Lw32;->n:Lw32;

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    iput-object v0, p2, Lw32;->n:Lw32;

    .line 9
    .line 10
    :cond_0
    if-eqz v0, :cond_2

    .line 11
    .line 12
    iget-object p0, v0, Lw32;->o:Lw32;

    .line 13
    .line 14
    if-ne p0, p1, :cond_1

    .line 15
    .line 16
    iput-object p2, v0, Lw32;->o:Lw32;

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    iput-object p2, v0, Lw32;->p:Lw32;

    .line 20
    .line 21
    return-void

    .line 22
    :cond_2
    iput-object p2, p0, Lx32;->p:Lw32;

    .line 23
    .line 24
    return-void
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 2

    .line 1
    iget-object v0, p0, Lx32;->t:Lv32;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lv32;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, p0, v1}, Lv32;-><init>(Lx32;I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lx32;->t:Lv32;

    .line 12
    .line 13
    :cond_0
    return-object v0
.end method

.method public final f(Lw32;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lw32;->o:Lw32;

    .line 2
    .line 3
    iget-object v1, p1, Lw32;->p:Lw32;

    .line 4
    .line 5
    iget-object v2, v1, Lw32;->o:Lw32;

    .line 6
    .line 7
    iget-object v3, v1, Lw32;->p:Lw32;

    .line 8
    .line 9
    iput-object v2, p1, Lw32;->p:Lw32;

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    iput-object p1, v2, Lw32;->n:Lw32;

    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0, p1, v1}, Lx32;->e(Lw32;Lw32;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, v1, Lw32;->o:Lw32;

    .line 19
    .line 20
    iput-object v1, p1, Lw32;->n:Lw32;

    .line 21
    .line 22
    const/4 p0, 0x0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget v0, v0, Lw32;->v:I

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move v0, p0

    .line 29
    :goto_0
    if-eqz v2, :cond_2

    .line 30
    .line 31
    iget v2, v2, Lw32;->v:I

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    move v2, p0

    .line 35
    :goto_1
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    add-int/lit8 v0, v0, 0x1

    .line 40
    .line 41
    iput v0, p1, Lw32;->v:I

    .line 42
    .line 43
    if-eqz v3, :cond_3

    .line 44
    .line 45
    iget p0, v3, Lw32;->v:I

    .line 46
    .line 47
    :cond_3
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    add-int/lit8 p0, p0, 0x1

    .line 52
    .line 53
    iput p0, v1, Lw32;->v:I

    .line 54
    .line 55
    return-void
.end method

.method public final g(Lw32;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lw32;->o:Lw32;

    .line 2
    .line 3
    iget-object v1, p1, Lw32;->p:Lw32;

    .line 4
    .line 5
    iget-object v2, v0, Lw32;->o:Lw32;

    .line 6
    .line 7
    iget-object v3, v0, Lw32;->p:Lw32;

    .line 8
    .line 9
    iput-object v3, p1, Lw32;->o:Lw32;

    .line 10
    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    iput-object p1, v3, Lw32;->n:Lw32;

    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0, p1, v0}, Lx32;->e(Lw32;Lw32;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, v0, Lw32;->p:Lw32;

    .line 19
    .line 20
    iput-object v0, p1, Lw32;->n:Lw32;

    .line 21
    .line 22
    const/4 p0, 0x0

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    iget v1, v1, Lw32;->v:I

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move v1, p0

    .line 29
    :goto_0
    if-eqz v3, :cond_2

    .line 30
    .line 31
    iget v3, v3, Lw32;->v:I

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    move v3, p0

    .line 35
    :goto_1
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    add-int/lit8 v1, v1, 0x1

    .line 40
    .line 41
    iput v1, p1, Lw32;->v:I

    .line 42
    .line 43
    if-eqz v2, :cond_3

    .line 44
    .line 45
    iget p0, v2, Lw32;->v:I

    .line 46
    .line 47
    :cond_3
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    add-int/lit8 p0, p0, 0x1

    .line 52
    .line 53
    iput p0, v0, Lw32;->v:I

    .line 54
    .line 55
    return-void
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lx32;->a(Ljava/lang/Object;Z)Lw32;

    .line 6
    .line 7
    .line 8
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    :cond_0
    move-object p0, v0

    .line 11
    :goto_0
    if-eqz p0, :cond_1

    .line 12
    .line 13
    iget-object p0, p0, Lw32;->u:Ljava/lang/Object;

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_1
    return-object v0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 2

    .line 1
    iget-object v0, p0, Lx32;->u:Lv32;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lv32;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-direct {v0, p0, v1}, Lv32;-><init>(Lx32;I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lx32;->u:Lv32;

    .line 12
    .line 13
    :cond_0
    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    if-nez p2, :cond_1

    .line 5
    .line 6
    iget-boolean v1, p0, Lx32;->o:Z

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-string p0, "value == null"

    .line 12
    .line 13
    invoke-static {p0}, Lq73;->r(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 18
    invoke-virtual {p0, p1, v0}, Lx32;->a(Ljava/lang/Object;Z)Lw32;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    iget-object p1, p0, Lw32;->u:Ljava/lang/Object;

    .line 23
    .line 24
    iput-object p2, p0, Lw32;->u:Ljava/lang/Object;

    .line 25
    .line 26
    return-object p1

    .line 27
    :cond_2
    const-string p0, "key == null"

    .line 28
    .line 29
    invoke-static {p0}, Lq73;->r(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lx32;->a(Ljava/lang/Object;Z)Lw32;

    .line 6
    .line 7
    .line 8
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    :cond_0
    move-object p1, v0

    .line 11
    :goto_0
    if-eqz p1, :cond_1

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {p0, p1, v1}, Lx32;->d(Lw32;Z)V

    .line 15
    .line 16
    .line 17
    :cond_1
    if-eqz p1, :cond_2

    .line 18
    .line 19
    iget-object p0, p1, Lw32;->u:Ljava/lang/Object;

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_2
    return-object v0
.end method

.method public final size()I
    .locals 0

    .line 1
    iget p0, p0, Lx32;->q:I

    .line 2
    .line 3
    return p0
.end method
