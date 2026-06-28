.class public final Lkotlinx/serialization/json/internal/b;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final a:Lsb0;

.field public final b:Lfv1;

.field public final c:Lrh4;

.field public final d:[Lkotlinx/serialization/json/internal/b;

.field public final e:Lb21;

.field public final f:Lpv1;

.field public g:Z

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lsb0;Lfv1;Lrh4;[Lkotlinx/serialization/json/internal/b;)V
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
    iput-object p1, p0, Lkotlinx/serialization/json/internal/b;->a:Lsb0;

    .line 8
    .line 9
    iput-object p2, p0, Lkotlinx/serialization/json/internal/b;->b:Lfv1;

    .line 10
    .line 11
    iput-object p3, p0, Lkotlinx/serialization/json/internal/b;->c:Lrh4;

    .line 12
    .line 13
    iput-object p4, p0, Lkotlinx/serialization/json/internal/b;->d:[Lkotlinx/serialization/json/internal/b;

    .line 14
    .line 15
    iget-object p1, p2, Lfv1;->b:Lb21;

    .line 16
    .line 17
    iput-object p1, p0, Lkotlinx/serialization/json/internal/b;->e:Lb21;

    .line 18
    .line 19
    iget-object p1, p2, Lfv1;->a:Lpv1;

    .line 20
    .line 21
    iput-object p1, p0, Lkotlinx/serialization/json/internal/b;->f:Lpv1;

    .line 22
    .line 23
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p4, :cond_1

    .line 28
    .line 29
    aget-object p2, p4, p1

    .line 30
    .line 31
    if-nez p2, :cond_0

    .line 32
    .line 33
    if-eq p2, p0, :cond_1

    .line 34
    .line 35
    :cond_0
    aput-object p0, p4, p1

    .line 36
    .line 37
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lgi3;)Lkotlinx/serialization/json/internal/b;
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lkotlinx/serialization/json/internal/b;->b:Lfv1;

    .line 5
    .line 6
    invoke-static {v0, p1}, Lsh4;->b(Lfv1;Lgi3;)Lrh4;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iget-char v2, v1, Lrh4;->n:C

    .line 11
    .line 12
    iget-object v3, p0, Lkotlinx/serialization/json/internal/b;->a:Lsb0;

    .line 13
    .line 14
    invoke-virtual {v3, v2}, Lsb0;->d(C)V

    .line 15
    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    iput-boolean v2, v3, Lsb0;->n:Z

    .line 19
    .line 20
    iget-object v2, p0, Lkotlinx/serialization/json/internal/b;->h:Ljava/lang/String;

    .line 21
    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    iget-object v4, p0, Lkotlinx/serialization/json/internal/b;->i:Ljava/lang/String;

    .line 25
    .line 26
    if-nez v4, :cond_0

    .line 27
    .line 28
    invoke-interface {p1}, Lgi3;->b()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    :cond_0
    invoke-virtual {v3}, Lsb0;->b()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, v2}, Lsb0;->h(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/16 p1, 0x3a

    .line 39
    .line 40
    invoke-virtual {v3, p1}, Lsb0;->d(C)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v4}, Lkotlinx/serialization/json/internal/b;->r(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const/4 p1, 0x0

    .line 47
    iput-object p1, p0, Lkotlinx/serialization/json/internal/b;->h:Ljava/lang/String;

    .line 48
    .line 49
    iput-object p1, p0, Lkotlinx/serialization/json/internal/b;->i:Ljava/lang/String;

    .line 50
    .line 51
    :cond_1
    iget-object p1, p0, Lkotlinx/serialization/json/internal/b;->c:Lrh4;

    .line 52
    .line 53
    if-ne p1, v1, :cond_2

    .line 54
    .line 55
    return-object p0

    .line 56
    :cond_2
    iget-object p0, p0, Lkotlinx/serialization/json/internal/b;->d:[Lkotlinx/serialization/json/internal/b;

    .line 57
    .line 58
    if-eqz p0, :cond_3

    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    aget-object p1, p0, p1

    .line 65
    .line 66
    if-eqz p1, :cond_3

    .line 67
    .line 68
    return-object p1

    .line 69
    :cond_3
    new-instance p1, Lkotlinx/serialization/json/internal/b;

    .line 70
    .line 71
    invoke-direct {p1, v3, v0, v1, p0}, Lkotlinx/serialization/json/internal/b;-><init>(Lsb0;Lfv1;Lrh4;[Lkotlinx/serialization/json/internal/b;)V

    .line 72
    .line 73
    .line 74
    return-object p1
.end method

.method public final b(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/b;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/b;->r(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object p0, p0, Lkotlinx/serialization/json/internal/b;->a:Lsb0;

    .line 14
    .line 15
    iget-object p0, p0, Lsb0;->o:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p0, Ld90;

    .line 18
    .line 19
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p0, p1}, Ld90;->q(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final c(B)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/b;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/b;->r(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object p0, p0, Lkotlinx/serialization/json/internal/b;->a:Lsb0;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lsb0;->c(B)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final d(C)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/b;->r(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final e(D)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/b;->g:Z

    .line 2
    .line 3
    iget-object v1, p0, Lkotlinx/serialization/json/internal/b;->a:Lsb0;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/b;->r(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, v1, Lsb0;->o:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Ld90;

    .line 18
    .line 19
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v0, v2}, Ld90;->q(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    iget-object p0, p0, Lkotlinx/serialization/json/internal/b;->f:Lpv1;

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-nez p0, :cond_1

    .line 36
    .line 37
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-nez p0, :cond_1

    .line 42
    .line 43
    return-void

    .line 44
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    iget-object p1, v1, Lsb0;->o:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast p1, Ld90;

    .line 51
    .line 52
    invoke-virtual {p1}, Ld90;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-static {p0, p1}, Lbi4;->d(Ljava/lang/Number;Ljava/lang/String;)Lvv1;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    throw p0
.end method

.method public final f(Lgi3;I)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lkotlinx/serialization/json/internal/b;->c:Lrh4;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/16 v1, 0x2c

    .line 11
    .line 12
    iget-object v2, p0, Lkotlinx/serialization/json/internal/b;->a:Lsb0;

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    if-eq v0, v3, :cond_7

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    const/16 v5, 0x3a

    .line 19
    .line 20
    const/4 v6, 0x2

    .line 21
    if-eq v0, v6, :cond_4

    .line 22
    .line 23
    const/4 v6, 0x3

    .line 24
    if-eq v0, v6, :cond_1

    .line 25
    .line 26
    iget-boolean v0, v2, Lsb0;->n:Z

    .line 27
    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    invoke-virtual {v2, v1}, Lsb0;->d(C)V

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-virtual {v2}, Lsb0;->b()V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lkotlinx/serialization/json/internal/b;->b:Lfv1;

    .line 37
    .line 38
    invoke-static {v0, p1}, Ljw1;->a(Lfv1;Lgi3;)V

    .line 39
    .line 40
    .line 41
    invoke-interface {p1, p2}, Lgi3;->e(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/b;->r(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v5}, Lsb0;->d(C)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Lsb0;->i()V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_1
    if-nez p2, :cond_2

    .line 56
    .line 57
    iput-boolean v3, p0, Lkotlinx/serialization/json/internal/b;->g:Z

    .line 58
    .line 59
    :cond_2
    if-ne p2, v3, :cond_3

    .line 60
    .line 61
    invoke-virtual {v2, v1}, Lsb0;->d(C)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Lsb0;->i()V

    .line 65
    .line 66
    .line 67
    iput-boolean v4, p0, Lkotlinx/serialization/json/internal/b;->g:Z

    .line 68
    .line 69
    :cond_3
    return-void

    .line 70
    :cond_4
    iget-boolean p1, v2, Lsb0;->n:Z

    .line 71
    .line 72
    if-nez p1, :cond_6

    .line 73
    .line 74
    rem-int/2addr p2, v6

    .line 75
    if-nez p2, :cond_5

    .line 76
    .line 77
    invoke-virtual {v2, v1}, Lsb0;->d(C)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2}, Lsb0;->b()V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_5
    invoke-virtual {v2, v5}, Lsb0;->d(C)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2}, Lsb0;->i()V

    .line 88
    .line 89
    .line 90
    move v3, v4

    .line 91
    :goto_0
    iput-boolean v3, p0, Lkotlinx/serialization/json/internal/b;->g:Z

    .line 92
    .line 93
    return-void

    .line 94
    :cond_6
    iput-boolean v3, p0, Lkotlinx/serialization/json/internal/b;->g:Z

    .line 95
    .line 96
    invoke-virtual {v2}, Lsb0;->b()V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :cond_7
    iget-boolean p0, v2, Lsb0;->n:Z

    .line 101
    .line 102
    if-nez p0, :cond_8

    .line 103
    .line 104
    invoke-virtual {v2, v1}, Lsb0;->d(C)V

    .line 105
    .line 106
    .line 107
    :cond_8
    invoke-virtual {v2}, Lsb0;->b()V

    .line 108
    .line 109
    .line 110
    return-void
.end method

.method public final g(F)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/b;->g:Z

    .line 2
    .line 3
    iget-object v1, p0, Lkotlinx/serialization/json/internal/b;->a:Lsb0;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/b;->r(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, v1, Lsb0;->o:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Ld90;

    .line 18
    .line 19
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v0, v2}, Ld90;->q(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    iget-object p0, p0, Lkotlinx/serialization/json/internal/b;->f:Lpv1;

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-nez p0, :cond_1

    .line 36
    .line 37
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-nez p0, :cond_1

    .line 42
    .line 43
    return-void

    .line 44
    :cond_1
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    iget-object p1, v1, Lsb0;->o:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast p1, Ld90;

    .line 51
    .line 52
    invoke-virtual {p1}, Ld90;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-static {p0, p1}, Lbi4;->d(Ljava/lang/Number;Ljava/lang/String;)Lvv1;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    throw p0
.end method

.method public final h(Lgi3;)Lkotlinx/serialization/json/internal/b;
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lts3;->a(Lgi3;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    iget-object v2, p0, Lkotlinx/serialization/json/internal/b;->c:Lrh4;

    .line 10
    .line 11
    iget-object v3, p0, Lkotlinx/serialization/json/internal/b;->b:Lfv1;

    .line 12
    .line 13
    iget-object v4, p0, Lkotlinx/serialization/json/internal/b;->a:Lsb0;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    instance-of p1, v4, Lvb0;

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object p1, v4, Lsb0;->o:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p1, Ld90;

    .line 25
    .line 26
    iget-boolean p0, p0, Lkotlinx/serialization/json/internal/b;->g:Z

    .line 27
    .line 28
    new-instance v4, Lvb0;

    .line 29
    .line 30
    invoke-direct {v4, p1, p0}, Lvb0;-><init>(Ld90;Z)V

    .line 31
    .line 32
    .line 33
    :goto_0
    new-instance p0, Lkotlinx/serialization/json/internal/b;

    .line 34
    .line 35
    invoke-direct {p0, v4, v3, v2, v1}, Lkotlinx/serialization/json/internal/b;-><init>(Lsb0;Lfv1;Lrh4;[Lkotlinx/serialization/json/internal/b;)V

    .line 36
    .line 37
    .line 38
    return-object p0

    .line 39
    :cond_1
    invoke-interface {p1}, Lgi3;->f()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    sget-object v0, Lzv1;->a:Lwq1;

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    instance-of p1, v4, Lub0;

    .line 54
    .line 55
    if-eqz p1, :cond_2

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    iget-object p1, v4, Lsb0;->o:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast p1, Ld90;

    .line 61
    .line 62
    iget-boolean p0, p0, Lkotlinx/serialization/json/internal/b;->g:Z

    .line 63
    .line 64
    new-instance v4, Lub0;

    .line 65
    .line 66
    invoke-direct {v4, p1, p0}, Lub0;-><init>(Ld90;Z)V

    .line 67
    .line 68
    .line 69
    :goto_1
    new-instance p0, Lkotlinx/serialization/json/internal/b;

    .line 70
    .line 71
    invoke-direct {p0, v4, v3, v2, v1}, Lkotlinx/serialization/json/internal/b;-><init>(Lsb0;Lfv1;Lrh4;[Lkotlinx/serialization/json/internal/b;)V

    .line 72
    .line 73
    .line 74
    return-object p0

    .line 75
    :cond_3
    iget-object v0, p0, Lkotlinx/serialization/json/internal/b;->h:Ljava/lang/String;

    .line 76
    .line 77
    if-eqz v0, :cond_4

    .line 78
    .line 79
    invoke-interface {p1}, Lgi3;->b()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    iput-object p1, p0, Lkotlinx/serialization/json/internal/b;->i:Ljava/lang/String;

    .line 84
    .line 85
    :cond_4
    return-object p0
.end method

.method public final i(Lly2;I)Lkotlinx/serialization/json/internal/b;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/internal/b;->f(Lgi3;I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p2}, Le42;->j(I)Lgi3;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/b;->h(Lgi3;)Lkotlinx/serialization/json/internal/b;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public final j(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/b;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/b;->r(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object p0, p0, Lkotlinx/serialization/json/internal/b;->a:Lsb0;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lsb0;->e(I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final k(J)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/b;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/b;->r(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object p0, p0, Lkotlinx/serialization/json/internal/b;->a:Lsb0;

    .line 14
    .line 15
    invoke-virtual {p0, p1, p2}, Lsb0;->f(J)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final l(Lgi3;IJ)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/internal/b;->f(Lgi3;I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p3, p4}, Lkotlinx/serialization/json/internal/b;->k(J)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final m()V
    .locals 1

    .line 1
    iget-object p0, p0, Lkotlinx/serialization/json/internal/b;->a:Lsb0;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lsb0;->o:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Ld90;

    .line 9
    .line 10
    const-string v0, "null"

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Ld90;->q(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final n(Lgi3;ILlx1;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    if-nez p4, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lkotlinx/serialization/json/internal/b;->f:Lpv1;

    .line 10
    .line 11
    iget-boolean v0, v0, Lpv1;->c:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    return-void

    .line 17
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/internal/b;->f(Lgi3;I)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p3}, Llx1;->d()Lgi3;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-interface {p1}, Lgi3;->h()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    invoke-virtual {p0, p3, p4}, Lkotlinx/serialization/json/internal/b;->p(Llx1;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    if-nez p4, :cond_3

    .line 41
    .line 42
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/b;->m()V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_3
    invoke-virtual {p0, p3, p4}, Lkotlinx/serialization/json/internal/b;->p(Llx1;Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    :goto_1
    return-void
.end method

.method public final o(Lgi3;ILlx1;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/internal/b;->f(Lgi3;I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p3, p4}, Lkotlinx/serialization/json/internal/b;->p(Llx1;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final p(Llx1;Ljava/lang/Object;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lkotlinx/serialization/json/internal/b;->b:Lfv1;

    .line 5
    .line 6
    iget-object v1, v0, Lfv1;->a:Lpv1;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    instance-of v2, p1, Ljw2;

    .line 12
    .line 13
    iget-object v1, v1, Lpv1;->f:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, Lh50;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    sget-object v4, Lh50;->n:Lh50;

    .line 21
    .line 22
    if-eq v1, v4, :cond_4

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_4

    .line 30
    .line 31
    const/4 v4, 0x1

    .line 32
    if-eq v1, v4, :cond_2

    .line 33
    .line 34
    const/4 v0, 0x2

    .line 35
    if-ne v1, v0, :cond_1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    invoke-static {}, Lp61;->x()V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_2
    invoke-interface {p1}, Llx1;->d()Lgi3;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-interface {v1}, Lgi3;->c()Ldm0;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    sget-object v4, Lit3;->P:Lit3;

    .line 51
    .line 52
    invoke-static {v1, v4}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-nez v4, :cond_3

    .line 57
    .line 58
    sget-object v4, Lit3;->S:Lit3;

    .line 59
    .line 60
    invoke-static {v1, v4}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_4

    .line 65
    .line 66
    :cond_3
    :goto_0
    invoke-interface {p1}, Llx1;->d()Lgi3;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-static {v0, v1}, Lqn0;->l(Lfv1;Lgi3;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    goto :goto_2

    .line 75
    :cond_4
    :goto_1
    move-object v0, v3

    .line 76
    :goto_2
    if-eqz v2, :cond_6

    .line 77
    .line 78
    check-cast p1, Ljw2;

    .line 79
    .line 80
    if-nez p2, :cond_5

    .line 81
    .line 82
    invoke-interface {p1}, Llx1;->d()Lgi3;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    const-string p1, " should always be non-null. Please report issue to the kotlinx.serialization tracker."

    .line 87
    .line 88
    const-string p2, "Value for serializer "

    .line 89
    .line 90
    invoke-static {p0, p1, p2}, Lp61;->h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_5
    invoke-static {p1, p0, p2}, Lmt1;->r(Ljw2;Lkotlinx/serialization/json/internal/b;Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    throw v3

    .line 98
    :cond_6
    if-eqz v0, :cond_7

    .line 99
    .line 100
    invoke-interface {p1}, Llx1;->d()Lgi3;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-interface {v1}, Lgi3;->b()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    iput-object v0, p0, Lkotlinx/serialization/json/internal/b;->h:Ljava/lang/String;

    .line 109
    .line 110
    iput-object v1, p0, Lkotlinx/serialization/json/internal/b;->i:Ljava/lang/String;

    .line 111
    .line 112
    :cond_7
    invoke-interface {p1, p0, p2}, Llx1;->c(Lkotlinx/serialization/json/internal/b;Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    return-void
.end method

.method public final q(S)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/b;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/b;->r(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object p0, p0, Lkotlinx/serialization/json/internal/b;->a:Lsb0;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lsb0;->g(S)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final r(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lkotlinx/serialization/json/internal/b;->a:Lsb0;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lsb0;->h(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final s(Lgi3;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lkotlinx/serialization/json/internal/b;->a:Lsb0;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p1, Lsb0;->n:Z

    .line 11
    .line 12
    iget-object p0, p0, Lkotlinx/serialization/json/internal/b;->c:Lrh4;

    .line 13
    .line 14
    iget-char p0, p0, Lrh4;->o:C

    .line 15
    .line 16
    invoke-virtual {p1, p0}, Lsb0;->d(C)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final t(Lgi3;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlinx/serialization/json/internal/b;->f:Lpv1;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    return p0
.end method
