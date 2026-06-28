.class public abstract Lc75;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ln01;


# static fields
.field public static a:Landroid/os/UserManager; = null

.field public static volatile b:Z = false

.field public static final c:Lka0;

.field public static final d:Lds0;

.field public static final e:Lyb;

.field public static final f:Lqv1;

.field public static final g:Lj71;

.field public static h:Lso1;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lsq;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, v1}, Lsq;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Lka0;

    .line 8
    .line 9
    const v2, -0x1a19d4b6

    .line 10
    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-direct {v1, v2, v3, v0}, Lka0;-><init>(IZLef1;)V

    .line 14
    .line 15
    .line 16
    sput-object v1, Lc75;->c:Lka0;

    .line 17
    .line 18
    new-instance v0, Lds0;

    .line 19
    .line 20
    const/high16 v1, 0x3f800000    # 1.0f

    .line 21
    .line 22
    invoke-direct {v0, v1, v1}, Lds0;-><init>(FF)V

    .line 23
    .line 24
    .line 25
    sput-object v0, Lc75;->d:Lds0;

    .line 26
    .line 27
    new-instance v0, Lyb;

    .line 28
    .line 29
    const/16 v1, 0x8

    .line 30
    .line 31
    invoke-direct {v0, v1}, Lyb;-><init>(I)V

    .line 32
    .line 33
    .line 34
    sput-object v0, Lc75;->e:Lyb;

    .line 35
    .line 36
    new-instance v0, Lqv1;

    .line 37
    .line 38
    const/4 v1, 0x2

    .line 39
    invoke-direct {v0, v1}, Lqv1;-><init>(I)V

    .line 40
    .line 41
    .line 42
    sput-object v0, Lc75;->f:Lqv1;

    .line 43
    .line 44
    new-instance v0, Lj71;

    .line 45
    .line 46
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lc75;->g:Lj71;

    .line 50
    .line 51
    return-void
.end method

.method public static A(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    if-nez p0, :cond_1

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public static B([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-nez p0, :cond_1

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    return v1

    .line 9
    :cond_1
    if-eqz p1, :cond_4

    .line 10
    .line 11
    array-length v2, p0

    .line 12
    array-length v3, p1

    .line 13
    if-ne v2, v3, :cond_4

    .line 14
    .line 15
    move v2, v1

    .line 16
    :goto_0
    array-length v3, p0

    .line 17
    if-ge v2, v3, :cond_3

    .line 18
    .line 19
    aget-object v3, p0, v2

    .line 20
    .line 21
    aget-object v4, p1, v2

    .line 22
    .line 23
    invoke-static {v3, v4}, Lc75;->A(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-nez v3, :cond_2

    .line 28
    .line 29
    return v1

    .line 30
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_3
    return v0

    .line 34
    :cond_4
    return v1
.end method

.method public static final C(Lw41;Lw41;)F
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lw41;->a:Ljava/util/List;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-object v1, p1, Lw41;->a:Ljava/util/List;

    .line 10
    .line 11
    instance-of v2, p0, Lu41;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    instance-of v2, p1, Lu41;

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    check-cast p0, Lu41;

    .line 20
    .line 21
    iget-boolean p0, p0, Lu41;->d:Z

    .line 22
    .line 23
    check-cast p1, Lu41;

    .line 24
    .line 25
    iget-boolean p1, p1, Lu41;->d:Z

    .line 26
    .line 27
    if-eq p0, p1, :cond_0

    .line 28
    .line 29
    const p0, 0x7f7fffff    # Float.MAX_VALUE

    .line 30
    .line 31
    .line 32
    return p0

    .line 33
    :cond_0
    invoke-static {v0}, Lo70;->h0(Ljava/util/List;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    check-cast p0, Lcl0;

    .line 38
    .line 39
    iget-object p0, p0, Lcl0;->a:[F

    .line 40
    .line 41
    const/4 p1, 0x0

    .line 42
    aget p0, p0, p1

    .line 43
    .line 44
    invoke-static {v0}, Lo70;->o0(Ljava/util/List;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Lcl0;

    .line 49
    .line 50
    invoke-virtual {v2}, Lcl0;->a()F

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    add-float/2addr v2, p0

    .line 55
    const/high16 p0, 0x40000000    # 2.0f

    .line 56
    .line 57
    div-float/2addr v2, p0

    .line 58
    invoke-static {v0}, Lo70;->h0(Ljava/util/List;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    check-cast v3, Lcl0;

    .line 63
    .line 64
    iget-object v3, v3, Lcl0;->a:[F

    .line 65
    .line 66
    const/4 v4, 0x1

    .line 67
    aget v3, v3, v4

    .line 68
    .line 69
    invoke-static {v0}, Lo70;->o0(Ljava/util/List;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    check-cast v0, Lcl0;

    .line 74
    .line 75
    invoke-virtual {v0}, Lcl0;->b()F

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    add-float/2addr v0, v3

    .line 80
    div-float/2addr v0, p0

    .line 81
    invoke-static {v1}, Lo70;->h0(Ljava/util/List;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    check-cast v3, Lcl0;

    .line 86
    .line 87
    iget-object v3, v3, Lcl0;->a:[F

    .line 88
    .line 89
    aget p1, v3, p1

    .line 90
    .line 91
    invoke-static {v1}, Lo70;->o0(Ljava/util/List;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    check-cast v3, Lcl0;

    .line 96
    .line 97
    invoke-virtual {v3}, Lcl0;->a()F

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    add-float/2addr v3, p1

    .line 102
    div-float/2addr v3, p0

    .line 103
    invoke-static {v1}, Lo70;->h0(Ljava/util/List;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    check-cast p1, Lcl0;

    .line 108
    .line 109
    iget-object p1, p1, Lcl0;->a:[F

    .line 110
    .line 111
    aget p1, p1, v4

    .line 112
    .line 113
    invoke-static {v1}, Lo70;->o0(Ljava/util/List;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    check-cast v1, Lcl0;

    .line 118
    .line 119
    invoke-virtual {v1}, Lcl0;->b()F

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    add-float/2addr v1, p1

    .line 124
    div-float/2addr v1, p0

    .line 125
    sub-float/2addr v2, v3

    .line 126
    sub-float/2addr v0, v1

    .line 127
    mul-float/2addr v2, v2

    .line 128
    mul-float/2addr v0, v0

    .line 129
    add-float/2addr v0, v2

    .line 130
    return v0
.end method

.method public static final D()I
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    new-instance v2, Luh4;

    .line 6
    .line 7
    long-to-int v3, v0

    .line 8
    const/16 v4, 0x20

    .line 9
    .line 10
    shr-long/2addr v0, v4

    .line 11
    long-to-int v0, v0

    .line 12
    not-int v1, v3

    .line 13
    shl-int/lit8 v4, v3, 0xa

    .line 14
    .line 15
    ushr-int/lit8 v5, v0, 0x4

    .line 16
    .line 17
    xor-int/2addr v4, v5

    .line 18
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    iput v3, v2, Luh4;->o:I

    .line 22
    .line 23
    iput v0, v2, Luh4;->p:I

    .line 24
    .line 25
    const/4 v5, 0x0

    .line 26
    iput v5, v2, Luh4;->q:I

    .line 27
    .line 28
    iput v5, v2, Luh4;->r:I

    .line 29
    .line 30
    iput v1, v2, Luh4;->s:I

    .line 31
    .line 32
    iput v4, v2, Luh4;->t:I

    .line 33
    .line 34
    or-int/2addr v0, v3

    .line 35
    or-int/2addr v0, v1

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    :goto_0
    const/16 v0, 0x40

    .line 39
    .line 40
    if-ge v5, v0, :cond_0

    .line 41
    .line 42
    invoke-virtual {v2}, Luh4;->a()I

    .line 43
    .line 44
    .line 45
    add-int/lit8 v5, v5, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {v2}, Luh4;->a()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    return v0

    .line 53
    :cond_1
    const-string v0, "Initial state must have at least one non-zero element."

    .line 54
    .line 55
    invoke-static {v0}, Lk21;->f(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const/4 v0, 0x0

    .line 59
    return v0
.end method

.method public static final E(Lhi0;)Lqc;
    .locals 1

    .line 1
    sget-object v0, Lmj1;->Y:Lmj1;

    .line 2
    .line 3
    invoke-interface {p0, v0}, Lhi0;->K(Lgi0;)Lfi0;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lqc;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    const-string p0, "A MonotonicFrameClock is not available in this CoroutineContext. Callers should supply an appropriate MonotonicFrameClock using withContext."

    .line 13
    .line 14
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return-object p0
.end method

.method public static final F(Ljava/lang/Object;)Lrg3;
    .locals 1

    .line 1
    sget-object v0, Lqc0;->a:Lsg0;

    .line 2
    .line 3
    if-eq p0, v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lrg3;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const-string p0, "Does not contain segment"

    .line 9
    .line 10
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return-object p0
.end method

.method public static G(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "widget_preferences"

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "service_type_"

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method

.method public static H(II)I
    .locals 0

    .line 1
    mul-int/lit8 p0, p0, 0x25

    .line 2
    .line 3
    add-int/2addr p0, p1

    .line 4
    return p0
.end method

.method public static I(ILjava/lang/Object;)I
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    invoke-static {p0, p1}, Lc75;->H(II)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public static final J(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    sget-object v0, Lqc0;->a:Lsg0;

    .line 2
    .line 3
    if-ne p0, v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public static K(Landroid/content/Context;I)Z
    .locals 3

    .line 1
    const-string v0, "widget_preferences"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v2, "is_refreshing_"

    .line 11
    .line 12
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    sget-object p1, Lez3;->a:Lra3;

    .line 27
    .line 28
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    new-array v0, v1, [Ljava/lang/Object;

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Lra3;->c([Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    return p0
.end method

.method public static final L(Lg12;Z)I
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget p1, p0, Lg12;->o:I

    .line 4
    .line 5
    iget p0, p0, Lg12;->q:I

    .line 6
    .line 7
    :goto_0
    add-int/2addr p1, p0

    .line 8
    return p1

    .line 9
    :cond_0
    iget p1, p0, Lg12;->n:I

    .line 10
    .line 11
    iget p0, p0, Lg12;->p:I

    .line 12
    .line 13
    goto :goto_0
.end method

.method public static M(Lcu3;)Lcu3;
    .locals 1

    .line 1
    instance-of v0, p0, Leu3;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    instance-of v0, p0, Ldu3;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    instance-of v0, p0, Ljava/io/Serializable;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    new-instance v0, Ldu3;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Ldu3;-><init>(Lcu3;)V

    .line 17
    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Leu3;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Leu3;-><init>(Lcu3;)V

    .line 23
    .line 24
    .line 25
    return-object v0

    .line 26
    :cond_2
    return-object p0
.end method

.method public static N(Ljava/lang/String;)J
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_29

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    const/4 v5, 0x1

    .line 15
    const/16 v6, 0x2d

    .line 16
    .line 17
    const/16 v7, 0x2b

    .line 18
    .line 19
    if-eq v4, v7, :cond_1

    .line 20
    .line 21
    if-eq v4, v6, :cond_0

    .line 22
    .line 23
    move v4, v1

    .line 24
    :goto_0
    move v8, v4

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    move v4, v5

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move v8, v1

    .line 29
    move v4, v5

    .line 30
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 31
    .line 32
    .line 33
    move-result v9

    .line 34
    if-le v9, v4, :cond_28

    .line 35
    .line 36
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    .line 37
    .line 38
    .line 39
    move-result v9

    .line 40
    const/16 v10, 0x50

    .line 41
    .line 42
    const-string v11, ""

    .line 43
    .line 44
    if-ne v9, v10, :cond_27

    .line 45
    .line 46
    add-int/2addr v4, v5

    .line 47
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 48
    .line 49
    .line 50
    move-result v9

    .line 51
    if-eq v4, v9, :cond_26

    .line 52
    .line 53
    move v10, v1

    .line 54
    const/4 v1, 0x0

    .line 55
    const-wide/16 v12, 0x0

    .line 56
    .line 57
    const-wide/16 v14, 0x0

    .line 58
    .line 59
    const-wide/16 v16, 0x0

    .line 60
    .line 61
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-ge v4, v2, :cond_23

    .line 66
    .line 67
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    const/16 v3, 0x54

    .line 72
    .line 73
    if-ne v2, v3, :cond_3

    .line 74
    .line 75
    if-nez v10, :cond_2

    .line 76
    .line 77
    add-int/lit8 v4, v4, 0x1

    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-eq v4, v2, :cond_2

    .line 84
    .line 85
    move v10, v5

    .line 86
    goto :goto_2

    .line 87
    :cond_2
    invoke-static {v11}, Lk21;->f(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    return-wide v16

    .line 91
    :cond_3
    sget-object v3, Lb82;->c:Lb82;

    .line 92
    .line 93
    move/from16 v18, v5

    .line 94
    .line 95
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    if-eq v5, v7, :cond_5

    .line 100
    .line 101
    if-eq v5, v6, :cond_4

    .line 102
    .line 103
    move v5, v4

    .line 104
    :goto_3
    move/from16 v9, v18

    .line 105
    .line 106
    goto :goto_4

    .line 107
    :cond_4
    add-int/lit8 v5, v4, 0x1

    .line 108
    .line 109
    const/16 v19, -0x1

    .line 110
    .line 111
    move/from16 v9, v19

    .line 112
    .line 113
    goto :goto_4

    .line 114
    :cond_5
    add-int/lit8 v5, v4, 0x1

    .line 115
    .line 116
    goto :goto_3

    .line 117
    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 118
    .line 119
    .line 120
    move-result v6

    .line 121
    const/16 v7, 0x30

    .line 122
    .line 123
    if-ge v5, v6, :cond_6

    .line 124
    .line 125
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    .line 126
    .line 127
    .line 128
    move-result v6

    .line 129
    if-ne v6, v7, :cond_6

    .line 130
    .line 131
    add-int/lit8 v5, v5, 0x1

    .line 132
    .line 133
    const/16 v7, 0x2b

    .line 134
    .line 135
    goto :goto_4

    .line 136
    :cond_6
    move-wide/from16 v20, v16

    .line 137
    .line 138
    :goto_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 139
    .line 140
    .line 141
    move-result v6

    .line 142
    const/16 v7, 0x3a

    .line 143
    .line 144
    if-ge v5, v6, :cond_c

    .line 145
    .line 146
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    .line 147
    .line 148
    .line 149
    move-result v6

    .line 150
    move/from16 v23, v4

    .line 151
    .line 152
    const/16 v4, 0x30

    .line 153
    .line 154
    if-gt v4, v6, :cond_d

    .line 155
    .line 156
    if-ge v6, v7, :cond_d

    .line 157
    .line 158
    add-int/lit8 v6, v6, -0x30

    .line 159
    .line 160
    move v4, v8

    .line 161
    iget-wide v7, v3, Lb82;->a:J

    .line 162
    .line 163
    cmp-long v7, v20, v7

    .line 164
    .line 165
    if-gtz v7, :cond_7

    .line 166
    .line 167
    if-nez v7, :cond_8

    .line 168
    .line 169
    int-to-long v7, v6

    .line 170
    move-wide/from16 v24, v7

    .line 171
    .line 172
    iget-wide v7, v3, Lb82;->b:J

    .line 173
    .line 174
    cmp-long v7, v24, v7

    .line 175
    .line 176
    if-lez v7, :cond_8

    .line 177
    .line 178
    :cond_7
    move/from16 v25, v4

    .line 179
    .line 180
    goto :goto_6

    .line 181
    :cond_8
    const/4 v7, 0x3

    .line 182
    shl-long v7, v20, v7

    .line 183
    .line 184
    shl-long v20, v20, v18

    .line 185
    .line 186
    add-long v7, v7, v20

    .line 187
    .line 188
    move-object/from16 v24, v3

    .line 189
    .line 190
    move/from16 v25, v4

    .line 191
    .line 192
    int-to-long v3, v6

    .line 193
    add-long v20, v7, v3

    .line 194
    .line 195
    add-int/lit8 v5, v5, 0x1

    .line 196
    .line 197
    move/from16 v4, v23

    .line 198
    .line 199
    move-object/from16 v3, v24

    .line 200
    .line 201
    move/from16 v8, v25

    .line 202
    .line 203
    const/16 v7, 0x30

    .line 204
    .line 205
    goto :goto_5

    .line 206
    :goto_6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 207
    .line 208
    .line 209
    move-result v3

    .line 210
    if-ge v5, v3, :cond_9

    .line 211
    .line 212
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    .line 213
    .line 214
    .line 215
    move-result v3

    .line 216
    const/16 v4, 0x30

    .line 217
    .line 218
    if-gt v4, v3, :cond_9

    .line 219
    .line 220
    const/16 v4, 0x3a

    .line 221
    .line 222
    if-ge v3, v4, :cond_9

    .line 223
    .line 224
    add-int/lit8 v5, v5, 0x1

    .line 225
    .line 226
    goto :goto_6

    .line 227
    :cond_9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 228
    .line 229
    .line 230
    move-result v3

    .line 231
    if-eq v5, v3, :cond_b

    .line 232
    .line 233
    const/16 v3, 0x2b

    .line 234
    .line 235
    if-eq v2, v3, :cond_a

    .line 236
    .line 237
    const/16 v3, 0x2d

    .line 238
    .line 239
    if-eq v2, v3, :cond_a

    .line 240
    .line 241
    const/4 v2, 0x0

    .line 242
    goto :goto_7

    .line 243
    :cond_a
    move/from16 v2, v18

    .line 244
    .line 245
    :goto_7
    add-int v4, v23, v2

    .line 246
    .line 247
    if-eq v5, v4, :cond_b

    .line 248
    .line 249
    const-wide v20, 0x3fffffffffffffffL    # 1.9999999999999998

    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    const/16 v3, 0x2b

    .line 255
    .line 256
    const/16 v4, 0x2d

    .line 257
    .line 258
    :goto_8
    move-wide/from16 v6, v20

    .line 259
    .line 260
    goto :goto_a

    .line 261
    :cond_b
    invoke-static {v11}, Lk21;->f(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    return-wide v16

    .line 265
    :cond_c
    move/from16 v23, v4

    .line 266
    .line 267
    :cond_d
    move/from16 v25, v8

    .line 268
    .line 269
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 270
    .line 271
    .line 272
    move-result v3

    .line 273
    if-eq v5, v3, :cond_22

    .line 274
    .line 275
    const/16 v3, 0x2b

    .line 276
    .line 277
    const/16 v4, 0x2d

    .line 278
    .line 279
    if-eq v2, v3, :cond_e

    .line 280
    .line 281
    if-eq v2, v4, :cond_e

    .line 282
    .line 283
    const/4 v2, 0x0

    .line 284
    goto :goto_9

    .line 285
    :cond_e
    move/from16 v2, v18

    .line 286
    .line 287
    :goto_9
    add-int v2, v23, v2

    .line 288
    .line 289
    if-eq v5, v2, :cond_22

    .line 290
    .line 291
    goto :goto_8

    .line 292
    :goto_a
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    .line 293
    .line 294
    .line 295
    move-result v2

    .line 296
    sget-object v8, Lgy0;->q:Lgy0;

    .line 297
    .line 298
    const/16 v3, 0x2e

    .line 299
    .line 300
    if-ne v2, v3, :cond_16

    .line 301
    .line 302
    add-int/lit8 v2, v5, 0x1

    .line 303
    .line 304
    add-int/lit8 v5, v5, 0x7

    .line 305
    .line 306
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 307
    .line 308
    .line 309
    move-result v3

    .line 310
    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    .line 311
    .line 312
    .line 313
    move-result v3

    .line 314
    move v5, v2

    .line 315
    const/4 v14, 0x0

    .line 316
    :goto_b
    if-ge v5, v3, :cond_f

    .line 317
    .line 318
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    .line 319
    .line 320
    .line 321
    move-result v15

    .line 322
    const/16 v4, 0x30

    .line 323
    .line 324
    if-gt v4, v15, :cond_f

    .line 325
    .line 326
    const/16 v4, 0x3a

    .line 327
    .line 328
    if-ge v15, v4, :cond_f

    .line 329
    .line 330
    shl-int/lit8 v4, v14, 0x3

    .line 331
    .line 332
    shl-int/lit8 v14, v14, 0x1

    .line 333
    .line 334
    add-int/2addr v4, v14

    .line 335
    add-int/lit8 v15, v15, -0x30

    .line 336
    .line 337
    add-int v14, v15, v4

    .line 338
    .line 339
    add-int/lit8 v5, v5, 0x1

    .line 340
    .line 341
    goto :goto_b

    .line 342
    :cond_f
    sub-int v3, v5, v2

    .line 343
    .line 344
    rsub-int/lit8 v3, v3, 0x6

    .line 345
    .line 346
    const/4 v4, 0x0

    .line 347
    :goto_c
    if-ge v4, v3, :cond_10

    .line 348
    .line 349
    shl-int/lit8 v15, v14, 0x3

    .line 350
    .line 351
    shl-int/lit8 v14, v14, 0x1

    .line 352
    .line 353
    add-int/2addr v14, v15

    .line 354
    add-int/lit8 v4, v4, 0x1

    .line 355
    .line 356
    goto :goto_c

    .line 357
    :cond_10
    add-int/lit8 v3, v5, 0x9

    .line 358
    .line 359
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 360
    .line 361
    .line 362
    move-result v4

    .line 363
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 364
    .line 365
    .line 366
    move-result v3

    .line 367
    move v4, v5

    .line 368
    const/4 v15, 0x0

    .line 369
    :goto_d
    if-ge v4, v3, :cond_11

    .line 370
    .line 371
    move/from16 v21, v3

    .line 372
    .line 373
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    .line 374
    .line 375
    .line 376
    move-result v3

    .line 377
    move/from16 v23, v4

    .line 378
    .line 379
    const/16 v4, 0x30

    .line 380
    .line 381
    if-gt v4, v3, :cond_12

    .line 382
    .line 383
    const/16 v4, 0x3a

    .line 384
    .line 385
    if-ge v3, v4, :cond_12

    .line 386
    .line 387
    shl-int/lit8 v4, v15, 0x3

    .line 388
    .line 389
    shl-int/lit8 v15, v15, 0x1

    .line 390
    .line 391
    add-int/2addr v4, v15

    .line 392
    add-int/lit8 v3, v3, -0x30

    .line 393
    .line 394
    add-int v15, v3, v4

    .line 395
    .line 396
    add-int/lit8 v4, v23, 0x1

    .line 397
    .line 398
    move/from16 v3, v21

    .line 399
    .line 400
    goto :goto_d

    .line 401
    :cond_11
    move/from16 v23, v4

    .line 402
    .line 403
    :cond_12
    sub-int v4, v23, v5

    .line 404
    .line 405
    rsub-int/lit8 v3, v4, 0x9

    .line 406
    .line 407
    const/4 v4, 0x0

    .line 408
    :goto_e
    if-ge v4, v3, :cond_13

    .line 409
    .line 410
    shl-int/lit8 v5, v15, 0x3

    .line 411
    .line 412
    shl-int/lit8 v15, v15, 0x1

    .line 413
    .line 414
    add-int/2addr v15, v5

    .line 415
    add-int/lit8 v4, v4, 0x1

    .line 416
    .line 417
    goto :goto_e

    .line 418
    :cond_13
    move/from16 v5, v23

    .line 419
    .line 420
    :goto_f
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 421
    .line 422
    .line 423
    move-result v3

    .line 424
    if-ge v5, v3, :cond_14

    .line 425
    .line 426
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    .line 427
    .line 428
    .line 429
    move-result v3

    .line 430
    const/16 v4, 0x30

    .line 431
    .line 432
    if-gt v4, v3, :cond_14

    .line 433
    .line 434
    const/16 v4, 0x3a

    .line 435
    .line 436
    if-ge v3, v4, :cond_14

    .line 437
    .line 438
    add-int/lit8 v5, v5, 0x1

    .line 439
    .line 440
    goto :goto_f

    .line 441
    :cond_14
    if-eq v5, v2, :cond_15

    .line 442
    .line 443
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 444
    .line 445
    .line 446
    move-result v2

    .line 447
    if-eq v5, v2, :cond_15

    .line 448
    .line 449
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    .line 450
    .line 451
    .line 452
    move-result v2

    .line 453
    const/16 v3, 0x53

    .line 454
    .line 455
    if-ne v2, v3, :cond_15

    .line 456
    .line 457
    int-to-long v2, v14

    .line 458
    const-wide/32 v21, 0x3b9aca00

    .line 459
    .line 460
    .line 461
    mul-long v2, v2, v21

    .line 462
    .line 463
    int-to-long v14, v15

    .line 464
    add-long/2addr v2, v14

    .line 465
    int-to-long v14, v9

    .line 466
    long-to-double v2, v2

    .line 467
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    .line 468
    .line 469
    .line 470
    move-result v4

    .line 471
    packed-switch v4, :pswitch_data_0

    .line 472
    .line 473
    .line 474
    const-string v2, "Unknown unit: "

    .line 475
    .line 476
    invoke-static {v8, v2}, Lmk0;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 477
    .line 478
    .line 479
    move-wide/from16 v2, v16

    .line 480
    .line 481
    goto :goto_11

    .line 482
    :pswitch_0
    const-wide v21, 0x3fb61e4f765fd8aeL    # 0.0864

    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    goto :goto_10

    .line 488
    :pswitch_1
    const-wide v21, 0x3f6d7dbf487fcb92L    # 0.0036

    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    goto :goto_10

    .line 494
    :pswitch_2
    const-wide v21, 0x3f0f75104d551d69L    # 6.0E-5

    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    goto :goto_10

    .line 500
    :pswitch_3
    const-wide v21, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    goto :goto_10

    .line 506
    :pswitch_4
    const-wide v21, 0x3e112e0be826d695L    # 1.0E-9

    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    goto :goto_10

    .line 512
    :pswitch_5
    const-wide v21, 0x3d719799812dea11L    # 1.0E-12

    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    goto :goto_10

    .line 518
    :pswitch_6
    const-wide v21, 0x3cd203af9ee75616L    # 1.0E-15

    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    :goto_10
    mul-double v2, v2, v21

    .line 524
    .line 525
    invoke-static {v2, v3}, Lis0;->W(D)J

    .line 526
    .line 527
    .line 528
    move-result-wide v2

    .line 529
    :goto_11
    mul-long/2addr v2, v14

    .line 530
    move-wide v14, v2

    .line 531
    goto :goto_12

    .line 532
    :cond_15
    invoke-static {v11}, Lk21;->f(Ljava/lang/String;)V

    .line 533
    .line 534
    .line 535
    return-wide v16

    .line 536
    :cond_16
    :goto_12
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    .line 537
    .line 538
    .line 539
    move-result v2

    .line 540
    const/16 v3, 0x44

    .line 541
    .line 542
    sget-object v4, Lgy0;->t:Lgy0;

    .line 543
    .line 544
    if-eq v2, v3, :cond_19

    .line 545
    .line 546
    const/16 v3, 0x48

    .line 547
    .line 548
    if-eq v2, v3, :cond_18

    .line 549
    .line 550
    const/16 v3, 0x4d

    .line 551
    .line 552
    if-eq v2, v3, :cond_17

    .line 553
    .line 554
    const/16 v3, 0x53

    .line 555
    .line 556
    if-eq v2, v3, :cond_1a

    .line 557
    .line 558
    const/4 v8, 0x0

    .line 559
    goto :goto_13

    .line 560
    :cond_17
    sget-object v8, Lgy0;->r:Lgy0;

    .line 561
    .line 562
    goto :goto_13

    .line 563
    :cond_18
    sget-object v8, Lgy0;->s:Lgy0;

    .line 564
    .line 565
    goto :goto_13

    .line 566
    :cond_19
    move-object v8, v4

    .line 567
    :cond_1a
    :goto_13
    if-eqz v8, :cond_21

    .line 568
    .line 569
    if-eqz v1, :cond_1c

    .line 570
    .line 571
    invoke-virtual {v1, v8}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 572
    .line 573
    .line 574
    move-result v1

    .line 575
    if-lez v1, :cond_1b

    .line 576
    .line 577
    goto :goto_14

    .line 578
    :cond_1b
    const-string v0, "Unexpected order of duration components"

    .line 579
    .line 580
    invoke-static {v0}, Lk21;->f(Ljava/lang/String;)V

    .line 581
    .line 582
    .line 583
    return-wide v16

    .line 584
    :cond_1c
    :goto_14
    if-ne v8, v4, :cond_1e

    .line 585
    .line 586
    if-nez v10, :cond_1d

    .line 587
    .line 588
    int-to-long v1, v9

    .line 589
    invoke-static {v6, v7, v8}, Lk75;->p(JLgy0;)J

    .line 590
    .line 591
    .line 592
    move-result-wide v3

    .line 593
    mul-long/2addr v3, v1

    .line 594
    move-wide v12, v3

    .line 595
    goto :goto_15

    .line 596
    :cond_1d
    invoke-static {v11}, Lk21;->f(Ljava/lang/String;)V

    .line 597
    .line 598
    .line 599
    return-wide v16

    .line 600
    :cond_1e
    if-eqz v10, :cond_20

    .line 601
    .line 602
    int-to-long v1, v9

    .line 603
    invoke-static {v6, v7, v8}, Lk75;->p(JLgy0;)J

    .line 604
    .line 605
    .line 606
    move-result-wide v3

    .line 607
    mul-long/2addr v3, v1

    .line 608
    invoke-static {v12, v13, v3, v4}, Lc75;->j(JJ)J

    .line 609
    .line 610
    .line 611
    move-result-wide v1

    .line 612
    const-wide v3, 0x7fffffffffffc0deL

    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    cmp-long v3, v1, v3

    .line 618
    .line 619
    if-eqz v3, :cond_1f

    .line 620
    .line 621
    move-wide v12, v1

    .line 622
    :goto_15
    add-int/lit8 v4, v5, 0x1

    .line 623
    .line 624
    move-object v1, v8

    .line 625
    move/from16 v5, v18

    .line 626
    .line 627
    move/from16 v8, v25

    .line 628
    .line 629
    const/16 v6, 0x2d

    .line 630
    .line 631
    const/16 v7, 0x2b

    .line 632
    .line 633
    goto/16 :goto_2

    .line 634
    .line 635
    :cond_1f
    invoke-static {v11}, Lk21;->f(Ljava/lang/String;)V

    .line 636
    .line 637
    .line 638
    return-wide v16

    .line 639
    :cond_20
    invoke-static {v11}, Lk21;->f(Ljava/lang/String;)V

    .line 640
    .line 641
    .line 642
    return-wide v16

    .line 643
    :cond_21
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    .line 644
    .line 645
    .line 646
    move-result v0

    .line 647
    new-instance v1, Ljava/lang/StringBuilder;

    .line 648
    .line 649
    const-string v2, "Unknown duration unit short name: "

    .line 650
    .line 651
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 652
    .line 653
    .line 654
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 655
    .line 656
    .line 657
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 658
    .line 659
    .line 660
    move-result-object v0

    .line 661
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 662
    .line 663
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 664
    .line 665
    .line 666
    throw v1

    .line 667
    :cond_22
    invoke-static {v11}, Lk21;->f(Ljava/lang/String;)V

    .line 668
    .line 669
    .line 670
    return-wide v16

    .line 671
    :cond_23
    move/from16 v25, v8

    .line 672
    .line 673
    sget-object v0, Lgy0;->p:Lgy0;

    .line 674
    .line 675
    invoke-static {v12, v13, v0}, Lc75;->T(JLgy0;)J

    .line 676
    .line 677
    .line 678
    move-result-wide v0

    .line 679
    sget-object v2, Lgy0;->o:Lgy0;

    .line 680
    .line 681
    invoke-static {v14, v15, v2}, Lc75;->T(JLgy0;)J

    .line 682
    .line 683
    .line 684
    move-result-wide v2

    .line 685
    invoke-static {v0, v1, v2, v3}, Lcy0;->g(JJ)J

    .line 686
    .line 687
    .line 688
    move-result-wide v0

    .line 689
    if-eqz v25, :cond_25

    .line 690
    .line 691
    sget-wide v2, Lcy0;->r:J

    .line 692
    .line 693
    cmp-long v2, v0, v2

    .line 694
    .line 695
    if-nez v2, :cond_24

    .line 696
    .line 697
    return-wide v0

    .line 698
    :cond_24
    invoke-static {v0, v1}, Lcy0;->i(J)J

    .line 699
    .line 700
    .line 701
    move-result-wide v0

    .line 702
    :cond_25
    return-wide v0

    .line 703
    :cond_26
    const-wide/16 v16, 0x0

    .line 704
    .line 705
    invoke-static {v11}, Lk21;->f(Ljava/lang/String;)V

    .line 706
    .line 707
    .line 708
    return-wide v16

    .line 709
    :cond_27
    const-wide/16 v16, 0x0

    .line 710
    .line 711
    invoke-static {v11}, Lk21;->f(Ljava/lang/String;)V

    .line 712
    .line 713
    .line 714
    return-wide v16

    .line 715
    :cond_28
    const-wide/16 v16, 0x0

    .line 716
    .line 717
    const-string v0, "No components"

    .line 718
    .line 719
    invoke-static {v0}, Lk21;->f(Ljava/lang/String;)V

    .line 720
    .line 721
    .line 722
    return-wide v16

    .line 723
    :cond_29
    const-wide/16 v16, 0x0

    .line 724
    .line 725
    const-string v0, "The string is empty"

    .line 726
    .line 727
    invoke-static {v0}, Lk21;->f(Ljava/lang/String;)V

    .line 728
    .line 729
    .line 730
    return-wide v16

    .line 731
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static O(ILjava/lang/String;)J
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p0, p1, v0}, Lc75;->x(IILjava/lang/String;Z)I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    sget-object v2, Lhh0;->n:Ljava/util/regex/Pattern;

    .line 7
    .line 8
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const/4 v3, -0x1

    .line 13
    move v4, v3

    .line 14
    move v5, v4

    .line 15
    move v6, v5

    .line 16
    move v7, v6

    .line 17
    move v8, v7

    .line 18
    move v9, v8

    .line 19
    :goto_0
    const/4 v10, 0x2

    .line 20
    const/4 v11, 0x1

    .line 21
    if-ge v1, p0, :cond_4

    .line 22
    .line 23
    add-int/lit8 v12, v1, 0x1

    .line 24
    .line 25
    invoke-static {v12, p0, p1, v11}, Lc75;->x(IILjava/lang/String;Z)I

    .line 26
    .line 27
    .line 28
    move-result v12

    .line 29
    invoke-virtual {v2, v1, v12}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 30
    .line 31
    .line 32
    if-ne v5, v3, :cond_0

    .line 33
    .line 34
    sget-object v1, Lhh0;->n:Ljava/util/regex/Pattern;

    .line 35
    .line 36
    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_0

    .line 45
    .line 46
    invoke-virtual {v2, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    invoke-virtual {v2, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result v8

    .line 68
    const/4 v1, 0x3

    .line 69
    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result v9

    .line 80
    goto :goto_1

    .line 81
    :cond_0
    if-ne v6, v3, :cond_1

    .line 82
    .line 83
    sget-object v1, Lhh0;->m:Ljava/util/regex/Pattern;

    .line 84
    .line 85
    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-eqz v1, :cond_1

    .line 94
    .line 95
    invoke-virtual {v2, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    move-result v6

    .line 106
    goto :goto_1

    .line 107
    :cond_1
    if-ne v7, v3, :cond_2

    .line 108
    .line 109
    sget-object v1, Lhh0;->l:Ljava/util/regex/Pattern;

    .line 110
    .line 111
    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 112
    .line 113
    .line 114
    move-result-object v10

    .line 115
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    .line 116
    .line 117
    .line 118
    move-result v10

    .line 119
    if-eqz v10, :cond_2

    .line 120
    .line 121
    invoke-virtual {v2, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v7

    .line 125
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 129
    .line 130
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v7, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v7

    .line 137
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    .line 146
    .line 147
    const/4 v10, 0x6

    .line 148
    invoke-static {v1, v7, v0, v0, v10}, Lzs3;->G0(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    div-int/lit8 v7, v1, 0x4

    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_2
    if-ne v4, v3, :cond_3

    .line 156
    .line 157
    sget-object v1, Lhh0;->k:Ljava/util/regex/Pattern;

    .line 158
    .line 159
    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    if-eqz v1, :cond_3

    .line 168
    .line 169
    invoke-virtual {v2, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    .line 175
    .line 176
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 177
    .line 178
    .line 179
    move-result v4

    .line 180
    :cond_3
    :goto_1
    add-int/lit8 v12, v12, 0x1

    .line 181
    .line 182
    invoke-static {v12, p0, p1, v0}, Lc75;->x(IILjava/lang/String;Z)I

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    goto/16 :goto_0

    .line 187
    .line 188
    :cond_4
    const/16 p0, 0x46

    .line 189
    .line 190
    if-gt p0, v4, :cond_5

    .line 191
    .line 192
    const/16 p1, 0x64

    .line 193
    .line 194
    if-ge v4, p1, :cond_5

    .line 195
    .line 196
    add-int/lit16 v4, v4, 0x76c

    .line 197
    .line 198
    :cond_5
    if-ltz v4, :cond_6

    .line 199
    .line 200
    if-ge v4, p0, :cond_6

    .line 201
    .line 202
    add-int/lit16 v4, v4, 0x7d0

    .line 203
    .line 204
    :cond_6
    const/16 p0, 0x641

    .line 205
    .line 206
    const-wide/16 v1, 0x0

    .line 207
    .line 208
    const-string p1, "Failed requirement."

    .line 209
    .line 210
    if-lt v4, p0, :cond_c

    .line 211
    .line 212
    if-eq v7, v3, :cond_b

    .line 213
    .line 214
    if-gt v11, v6, :cond_a

    .line 215
    .line 216
    const/16 p0, 0x20

    .line 217
    .line 218
    if-ge v6, p0, :cond_a

    .line 219
    .line 220
    if-ltz v5, :cond_9

    .line 221
    .line 222
    const/16 p0, 0x18

    .line 223
    .line 224
    if-ge v5, p0, :cond_9

    .line 225
    .line 226
    if-ltz v8, :cond_8

    .line 227
    .line 228
    const/16 p0, 0x3c

    .line 229
    .line 230
    if-ge v8, p0, :cond_8

    .line 231
    .line 232
    if-ltz v9, :cond_7

    .line 233
    .line 234
    if-ge v9, p0, :cond_7

    .line 235
    .line 236
    new-instance p0, Ljava/util/GregorianCalendar;

    .line 237
    .line 238
    sget-object p1, Lhi4;->a:Ljava/util/TimeZone;

    .line 239
    .line 240
    invoke-direct {p0, p1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->setLenient(Z)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {p0, v11, v4}, Ljava/util/Calendar;->set(II)V

    .line 247
    .line 248
    .line 249
    sub-int/2addr v7, v11

    .line 250
    invoke-virtual {p0, v10, v7}, Ljava/util/Calendar;->set(II)V

    .line 251
    .line 252
    .line 253
    const/4 p1, 0x5

    .line 254
    invoke-virtual {p0, p1, v6}, Ljava/util/Calendar;->set(II)V

    .line 255
    .line 256
    .line 257
    const/16 p1, 0xb

    .line 258
    .line 259
    invoke-virtual {p0, p1, v5}, Ljava/util/Calendar;->set(II)V

    .line 260
    .line 261
    .line 262
    const/16 p1, 0xc

    .line 263
    .line 264
    invoke-virtual {p0, p1, v8}, Ljava/util/Calendar;->set(II)V

    .line 265
    .line 266
    .line 267
    const/16 p1, 0xd

    .line 268
    .line 269
    invoke-virtual {p0, p1, v9}, Ljava/util/Calendar;->set(II)V

    .line 270
    .line 271
    .line 272
    const/16 p1, 0xe

    .line 273
    .line 274
    invoke-virtual {p0, p1, v0}, Ljava/util/Calendar;->set(II)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 278
    .line 279
    .line 280
    move-result-wide p0

    .line 281
    return-wide p0

    .line 282
    :cond_7
    invoke-static {p1}, Lk21;->f(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    return-wide v1

    .line 286
    :cond_8
    invoke-static {p1}, Lk21;->f(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    return-wide v1

    .line 290
    :cond_9
    invoke-static {p1}, Lk21;->f(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    return-wide v1

    .line 294
    :cond_a
    invoke-static {p1}, Lk21;->f(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    return-wide v1

    .line 298
    :cond_b
    invoke-static {p1}, Lk21;->f(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    return-wide v1

    .line 302
    :cond_c
    invoke-static {p1}, Lk21;->f(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    return-wide v1
.end method

.method public static P(Landroid/content/Context;IZ)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "widget_preferences"

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v2, "is_refreshing_"

    .line 14
    .line 15
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 26
    .line 27
    .line 28
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 49
    .line 50
    .line 51
    sget-object p0, Lez3;->a:Lra3;

    .line 52
    .line 53
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    new-array p1, v1, [Ljava/lang/Object;

    .line 61
    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    invoke-static {p1}, Lra3;->c([Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public static final Q(FJ)J
    .locals 5

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    shr-long v1, p1, v0

    .line 4
    .line 5
    long-to-int v1, v1

    .line 6
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    sub-float/2addr v1, p0

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const-wide v3, 0xffffffffL

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    and-long/2addr p1, v3

    .line 22
    long-to-int p1, p1

    .line 23
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    sub-float/2addr p1, p0

    .line 28
    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    int-to-long p1, p1

    .line 37
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    int-to-long v1, p0

    .line 42
    shl-long p0, p1, v0

    .line 43
    .line 44
    and-long v0, v1, v3

    .line 45
    .line 46
    or-long/2addr p0, v0

    .line 47
    return-wide p0
.end method

.method public static final R(J)I
    .locals 1

    .line 1
    sget-object v0, Le80;->a:[F

    .line 2
    .line 3
    sget-object v0, Le80;->e:Lw83;

    .line 4
    .line 5
    invoke-static {p0, p1, v0}, Lt70;->a(JLb80;)J

    .line 6
    .line 7
    .line 8
    move-result-wide p0

    .line 9
    const/16 v0, 0x20

    .line 10
    .line 11
    ushr-long/2addr p0, v0

    .line 12
    long-to-int p0, p0

    .line 13
    return p0
.end method

.method public static final S(ILgy0;)J
    .locals 2

    .line 1
    sget-object v0, Lgy0;->q:Lgy0;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-gtz v0, :cond_0

    .line 8
    .line 9
    int-to-long v0, p0

    .line 10
    sget-object p0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 11
    .line 12
    iget-object p1, p1, Lgy0;->n:Ljava/util/concurrent/TimeUnit;

    .line 13
    .line 14
    invoke-virtual {p0, v0, v1, p1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    .line 15
    .line 16
    .line 17
    move-result-wide p0

    .line 18
    sget-object v0, Lcy0;->o:Lbx3;

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    shl-long/2addr p0, v0

    .line 22
    sget v0, Ley0;->a:I

    .line 23
    .line 24
    return-wide p0

    .line 25
    :cond_0
    int-to-long v0, p0

    .line 26
    invoke-static {v0, v1, p1}, Lc75;->T(JLgy0;)J

    .line 27
    .line 28
    .line 29
    move-result-wide p0

    .line 30
    return-wide p0
.end method

.method public static final T(JLgy0;)J
    .locals 7

    .line 1
    iget-object v0, p2, Lgy0;->n:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    const-wide v1, 0x3ffffffffffa14bfL    # 1.9999999999138678

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    .line 11
    .line 12
    .line 13
    move-result-wide v1

    .line 14
    neg-long v4, v1

    .line 15
    cmp-long v4, v4, p0

    .line 16
    .line 17
    if-gtz v4, :cond_0

    .line 18
    .line 19
    cmp-long v1, p0, v1

    .line 20
    .line 21
    if-gtz v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {v3, p0, p1, v0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    .line 24
    .line 25
    .line 26
    move-result-wide p0

    .line 27
    sget-object p2, Lcy0;->o:Lbx3;

    .line 28
    .line 29
    const/4 p2, 0x1

    .line 30
    shl-long/2addr p0, p2

    .line 31
    sget p2, Ley0;->a:I

    .line 32
    .line 33
    return-wide p0

    .line 34
    :cond_0
    sget-object v1, Lgy0;->p:Lgy0;

    .line 35
    .line 36
    invoke-virtual {p2, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-ltz v1, :cond_2

    .line 41
    .line 42
    invoke-static {p0, p1}, Ljava/lang/Long;->signum(J)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    int-to-long v0, v0

    .line 47
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    cmp-long v4, p0, v2

    .line 53
    .line 54
    if-gez v4, :cond_1

    .line 55
    .line 56
    move-wide p0, v2

    .line 57
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    .line 58
    .line 59
    .line 60
    move-result-wide p0

    .line 61
    invoke-static {p0, p1, p2}, Lk75;->p(JLgy0;)J

    .line 62
    .line 63
    .line 64
    move-result-wide p0

    .line 65
    mul-long/2addr p0, v0

    .line 66
    invoke-static {p0, p1}, Lc75;->z(J)J

    .line 67
    .line 68
    .line 69
    move-result-wide p0

    .line 70
    return-wide p0

    .line 71
    :cond_2
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 72
    .line 73
    invoke-virtual {p2, p0, p1, v0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    .line 74
    .line 75
    .line 76
    move-result-wide v1

    .line 77
    const-wide v3, -0x3fffffffffffffffL    # -2.0000000000000004

    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    const-wide v5, 0x3fffffffffffffffL    # 1.9999999999999998

    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    invoke-static/range {v1 .. v6}, Lix;->l(JJJ)J

    .line 88
    .line 89
    .line 90
    move-result-wide p0

    .line 91
    invoke-static {p0, p1}, Lc75;->z(J)J

    .line 92
    .line 93
    .line 94
    move-result-wide p0

    .line 95
    return-wide p0
.end method

.method public static U(Lcu0;Lrd3;)I
    .locals 1

    .line 1
    instance-of v0, p0, Lau0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lau0;

    .line 6
    .line 7
    iget p0, p0, Lau0;->a:I

    .line 8
    .line 9
    return p0

    .line 10
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-eqz p0, :cond_2

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    if-ne p0, p1, :cond_1

    .line 18
    .line 19
    const p0, 0x7fffffff

    .line 20
    .line 21
    .line 22
    return p0

    .line 23
    :cond_1
    invoke-static {}, Lp61;->x()V

    .line 24
    .line 25
    .line 26
    const/4 p0, 0x0

    .line 27
    return p0

    .line 28
    :cond_2
    const/high16 p0, -0x80000000

    .line 29
    .line 30
    return p0
.end method

.method public static V(Landroid/content/Context;Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Ls0;
    .locals 12

    .line 1
    new-instance v4, Lgt4;

    .line 2
    .line 3
    const/4 v0, 0x7

    .line 4
    invoke-direct {v4, v0, p1}, Lgt4;-><init>(ILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Lc75;->W(Landroid/content/Context;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    new-instance p0, La34;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance p1, Lz24;

    .line 19
    .line 20
    invoke-direct {p1, p0, v4}, Lz24;-><init>(La34;Lpi;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, La34;->v:Lht1;

    .line 24
    .line 25
    invoke-interface {p2, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 26
    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_0
    new-instance v3, Ljk3;

    .line 30
    .line 31
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 32
    .line 33
    .line 34
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 35
    .line 36
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 37
    .line 38
    .line 39
    new-instance v0, Lb75;

    .line 40
    .line 41
    move-object v2, p0

    .line 42
    move-object v5, p2

    .line 43
    invoke-direct/range {v0 .. v5}, Lb75;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/content/Context;Ljk3;Lgt4;Ljava/util/concurrent/Executor;)V

    .line 44
    .line 45
    .line 46
    new-instance p0, Landroid/content/IntentFilter;

    .line 47
    .line 48
    const-string p1, "android.intent.action.USER_UNLOCKED"

    .line 49
    .line 50
    invoke-direct {p0, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 54
    .line 55
    .line 56
    invoke-static {v2}, Lc75;->W(Landroid/content/Context;)Z

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    if-eqz p0, :cond_1

    .line 61
    .line 62
    const/4 p0, 0x0

    .line 63
    const/4 p1, 0x1

    .line 64
    invoke-virtual {v1, p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    if-eqz p0, :cond_1

    .line 69
    .line 70
    :try_start_0
    invoke-virtual {v2, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    move-object p0, v0

    .line 76
    const-string p1, "DirectBootUtils"

    .line 77
    .line 78
    const-string p2, "Failed to unregister receiver"

    .line 79
    .line 80
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    .line 82
    .line 83
    :goto_0
    new-instance p0, La34;

    .line 84
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    .line 87
    .line 88
    new-instance p1, Lz24;

    .line 89
    .line 90
    invoke-direct {p1, p0, v4}, Lz24;-><init>(La34;Lpi;)V

    .line 91
    .line 92
    .line 93
    iput-object p1, p0, La34;->v:Lht1;

    .line 94
    .line 95
    invoke-interface {v5, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3, p0}, Ls0;->o(Lcom/google/common/util/concurrent/ListenableFuture;)Z

    .line 99
    .line 100
    .line 101
    return-object v3

    .line 102
    :cond_1
    new-instance v5, Le30;

    .line 103
    .line 104
    const/4 v10, 0x6

    .line 105
    const/4 v11, 0x0

    .line 106
    move-object v9, v0

    .line 107
    move-object v7, v1

    .line 108
    move-object v8, v2

    .line 109
    move-object v6, v3

    .line 110
    invoke-direct/range {v5 .. v11}, Le30;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IZ)V

    .line 111
    .line 112
    .line 113
    sget-object p0, Lfu0;->n:Lfu0;

    .line 114
    .line 115
    invoke-virtual {v3, v5, p0}, Ls0;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 116
    .line 117
    .line 118
    return-object v3
.end method

.method public static W(Landroid/content/Context;)Z
    .locals 7

    .line 1
    sget-boolean v0, Lc75;->b:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const-class v0, Lc75;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    sget-boolean v2, Lc75;->b:Z

    .line 11
    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return v1

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_3

    .line 18
    :cond_1
    move v2, v1

    .line 19
    :goto_0
    const/4 v3, 0x2

    .line 20
    const/4 v4, 0x0

    .line 21
    const/4 v5, 0x0

    .line 22
    if-gt v2, v3, :cond_5

    .line 23
    .line 24
    sget-object v3, Lc75;->a:Landroid/os/UserManager;

    .line 25
    .line 26
    if-nez v3, :cond_2

    .line 27
    .line 28
    const-class v3, Landroid/os/UserManager;

    .line 29
    .line 30
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Landroid/os/UserManager;

    .line 35
    .line 36
    sput-object v3, Lc75;->a:Landroid/os/UserManager;

    .line 37
    .line 38
    :cond_2
    sget-object v3, Lc75;->a:Landroid/os/UserManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    if-nez v3, :cond_3

    .line 41
    .line 42
    move v5, v1

    .line 43
    goto :goto_2

    .line 44
    :cond_3
    :try_start_1
    invoke-virtual {v3}, Landroid/os/UserManager;->isUserUnlocked()Z

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    if-nez v6, :cond_4

    .line 49
    .line 50
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    invoke-virtual {v3, v6}, Landroid/os/UserManager;->isUserRunning(Landroid/os/UserHandle;)Z

    .line 55
    .line 56
    .line 57
    move-result p0
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    if-nez p0, :cond_5

    .line 59
    .line 60
    :cond_4
    move v5, v1

    .line 61
    goto :goto_1

    .line 62
    :catch_0
    move-exception v3

    .line 63
    :try_start_2
    const-string v5, "DirectBootUtils"

    .line 64
    .line 65
    const-string v6, "Failed to check if user is unlocked."

    .line 66
    .line 67
    invoke-static {v5, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    .line 69
    .line 70
    sput-object v4, Lc75;->a:Landroid/os/UserManager;

    .line 71
    .line 72
    add-int/lit8 v2, v2, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_5
    :goto_1
    if-eqz v5, :cond_6

    .line 76
    .line 77
    sput-object v4, Lc75;->a:Landroid/os/UserManager;

    .line 78
    .line 79
    :cond_6
    :goto_2
    if-eqz v5, :cond_7

    .line 80
    .line 81
    sput-boolean v1, Lc75;->b:Z

    .line 82
    .line 83
    :cond_7
    monitor-exit v0

    .line 84
    return v5

    .line 85
    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    throw p0
.end method

.method public static final a(FFFFLb80;)J
    .locals 21

    .line 1
    move-object/from16 v0, p4

    .line 2
    .line 3
    invoke-virtual {v0}, Lb80;->c()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/16 v2, 0x10

    .line 8
    .line 9
    const/16 v3, 0x20

    .line 10
    .line 11
    const/high16 v4, 0x3f000000    # 0.5f

    .line 12
    .line 13
    const/high16 v5, 0x3f800000    # 1.0f

    .line 14
    .line 15
    const/4 v6, 0x0

    .line 16
    if-eqz v1, :cond_8

    .line 17
    .line 18
    cmpg-float v0, p3, v6

    .line 19
    .line 20
    if-gez v0, :cond_0

    .line 21
    .line 22
    move v0, v6

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move/from16 v0, p3

    .line 25
    .line 26
    :goto_0
    cmpl-float v1, v0, v5

    .line 27
    .line 28
    if-lez v1, :cond_1

    .line 29
    .line 30
    move v0, v5

    .line 31
    :cond_1
    const/high16 v1, 0x437f0000    # 255.0f

    .line 32
    .line 33
    mul-float/2addr v0, v1

    .line 34
    add-float/2addr v0, v4

    .line 35
    float-to-int v0, v0

    .line 36
    shl-int/lit8 v0, v0, 0x18

    .line 37
    .line 38
    cmpg-float v7, p0, v6

    .line 39
    .line 40
    if-gez v7, :cond_2

    .line 41
    .line 42
    move v7, v6

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    move/from16 v7, p0

    .line 45
    .line 46
    :goto_1
    cmpl-float v8, v7, v5

    .line 47
    .line 48
    if-lez v8, :cond_3

    .line 49
    .line 50
    move v7, v5

    .line 51
    :cond_3
    mul-float/2addr v7, v1

    .line 52
    add-float/2addr v7, v4

    .line 53
    float-to-int v7, v7

    .line 54
    shl-int/lit8 v2, v7, 0x10

    .line 55
    .line 56
    or-int/2addr v0, v2

    .line 57
    cmpg-float v2, p1, v6

    .line 58
    .line 59
    if-gez v2, :cond_4

    .line 60
    .line 61
    move v2, v6

    .line 62
    goto :goto_2

    .line 63
    :cond_4
    move/from16 v2, p1

    .line 64
    .line 65
    :goto_2
    cmpl-float v7, v2, v5

    .line 66
    .line 67
    if-lez v7, :cond_5

    .line 68
    .line 69
    move v2, v5

    .line 70
    :cond_5
    mul-float/2addr v2, v1

    .line 71
    add-float/2addr v2, v4

    .line 72
    float-to-int v2, v2

    .line 73
    shl-int/lit8 v2, v2, 0x8

    .line 74
    .line 75
    or-int/2addr v0, v2

    .line 76
    cmpg-float v2, p2, v6

    .line 77
    .line 78
    if-gez v2, :cond_6

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_6
    move/from16 v6, p2

    .line 82
    .line 83
    :goto_3
    cmpl-float v2, v6, v5

    .line 84
    .line 85
    if-lez v2, :cond_7

    .line 86
    .line 87
    goto :goto_4

    .line 88
    :cond_7
    move v5, v6

    .line 89
    :goto_4
    mul-float/2addr v5, v1

    .line 90
    add-float/2addr v5, v4

    .line 91
    float-to-int v1, v5

    .line 92
    or-int/2addr v0, v1

    .line 93
    int-to-long v0, v0

    .line 94
    shl-long/2addr v0, v3

    .line 95
    sget v2, Lt70;->g:I

    .line 96
    .line 97
    return-wide v0

    .line 98
    :cond_8
    iget-wide v7, v0, Lb80;->b:J

    .line 99
    .line 100
    shr-long/2addr v7, v3

    .line 101
    long-to-int v1, v7

    .line 102
    const/4 v7, 0x3

    .line 103
    if-ne v1, v7, :cond_9

    .line 104
    .line 105
    goto :goto_5

    .line 106
    :cond_9
    const-string v1, "Color only works with ColorSpaces with 3 components"

    .line 107
    .line 108
    invoke-static {v1}, Lzq1;->a(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    :goto_5
    iget v1, v0, Lb80;->c:I

    .line 112
    .line 113
    const/4 v7, -0x1

    .line 114
    if-eq v1, v7, :cond_a

    .line 115
    .line 116
    goto :goto_6

    .line 117
    :cond_a
    const-string v7, "Unknown color space, please use a color space in ColorSpaces"

    .line 118
    .line 119
    invoke-static {v7}, Lzq1;->a(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    :goto_6
    const/4 v7, 0x0

    .line 123
    invoke-virtual {v0, v7}, Lb80;->b(I)F

    .line 124
    .line 125
    .line 126
    move-result v8

    .line 127
    invoke-virtual {v0, v7}, Lb80;->a(I)F

    .line 128
    .line 129
    .line 130
    move-result v9

    .line 131
    cmpg-float v10, p0, v8

    .line 132
    .line 133
    if-gez v10, :cond_b

    .line 134
    .line 135
    goto :goto_7

    .line 136
    :cond_b
    move/from16 v8, p0

    .line 137
    .line 138
    :goto_7
    cmpl-float v10, v8, v9

    .line 139
    .line 140
    if-lez v10, :cond_c

    .line 141
    .line 142
    goto :goto_8

    .line 143
    :cond_c
    move v9, v8

    .line 144
    :goto_8
    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 145
    .line 146
    .line 147
    move-result v8

    .line 148
    ushr-int/lit8 v9, v8, 0x1f

    .line 149
    .line 150
    ushr-int/lit8 v10, v8, 0x17

    .line 151
    .line 152
    const/16 v11, 0xff

    .line 153
    .line 154
    and-int/2addr v10, v11

    .line 155
    const v12, 0x7fffff

    .line 156
    .line 157
    .line 158
    and-int v13, v8, v12

    .line 159
    .line 160
    const/high16 v14, 0x800000

    .line 161
    .line 162
    const/16 v15, -0xa

    .line 163
    .line 164
    const/16 v16, 0x31

    .line 165
    .line 166
    const/16 v17, 0x200

    .line 167
    .line 168
    move/from16 v18, v2

    .line 169
    .line 170
    const/16 v2, 0x1f

    .line 171
    .line 172
    move/from16 v19, v3

    .line 173
    .line 174
    const/4 v3, 0x1

    .line 175
    if-ne v10, v11, :cond_e

    .line 176
    .line 177
    if-eqz v13, :cond_d

    .line 178
    .line 179
    move/from16 v8, v17

    .line 180
    .line 181
    goto :goto_9

    .line 182
    :cond_d
    move v8, v7

    .line 183
    :goto_9
    move v10, v2

    .line 184
    goto :goto_b

    .line 185
    :cond_e
    add-int/lit8 v10, v10, -0x70

    .line 186
    .line 187
    if-lt v10, v2, :cond_f

    .line 188
    .line 189
    move v8, v7

    .line 190
    move/from16 v10, v16

    .line 191
    .line 192
    goto :goto_b

    .line 193
    :cond_f
    if-gtz v10, :cond_12

    .line 194
    .line 195
    if-lt v10, v15, :cond_11

    .line 196
    .line 197
    or-int v8, v13, v14

    .line 198
    .line 199
    rsub-int/lit8 v10, v10, 0x1

    .line 200
    .line 201
    shr-int/2addr v8, v10

    .line 202
    and-int/lit16 v10, v8, 0x1000

    .line 203
    .line 204
    if-eqz v10, :cond_10

    .line 205
    .line 206
    add-int/lit16 v8, v8, 0x2000

    .line 207
    .line 208
    :cond_10
    shr-int/lit8 v8, v8, 0xd

    .line 209
    .line 210
    move v10, v7

    .line 211
    goto :goto_b

    .line 212
    :cond_11
    move v8, v7

    .line 213
    move v10, v8

    .line 214
    goto :goto_b

    .line 215
    :cond_12
    shr-int/lit8 v13, v13, 0xd

    .line 216
    .line 217
    and-int/lit16 v8, v8, 0x1000

    .line 218
    .line 219
    if-eqz v8, :cond_13

    .line 220
    .line 221
    shl-int/lit8 v8, v10, 0xa

    .line 222
    .line 223
    or-int/2addr v8, v13

    .line 224
    add-int/2addr v8, v3

    .line 225
    shl-int/lit8 v9, v9, 0xf

    .line 226
    .line 227
    or-int/2addr v8, v9

    .line 228
    :goto_a
    int-to-short v8, v8

    .line 229
    goto :goto_c

    .line 230
    :cond_13
    move v8, v13

    .line 231
    :goto_b
    shl-int/lit8 v9, v9, 0xf

    .line 232
    .line 233
    shl-int/lit8 v10, v10, 0xa

    .line 234
    .line 235
    or-int/2addr v9, v10

    .line 236
    or-int/2addr v8, v9

    .line 237
    goto :goto_a

    .line 238
    :goto_c
    invoke-virtual {v0, v3}, Lb80;->b(I)F

    .line 239
    .line 240
    .line 241
    move-result v9

    .line 242
    invoke-virtual {v0, v3}, Lb80;->a(I)F

    .line 243
    .line 244
    .line 245
    move-result v10

    .line 246
    cmpg-float v13, p1, v9

    .line 247
    .line 248
    if-gez v13, :cond_14

    .line 249
    .line 250
    goto :goto_d

    .line 251
    :cond_14
    move/from16 v9, p1

    .line 252
    .line 253
    :goto_d
    cmpl-float v13, v9, v10

    .line 254
    .line 255
    if-lez v13, :cond_15

    .line 256
    .line 257
    goto :goto_e

    .line 258
    :cond_15
    move v10, v9

    .line 259
    :goto_e
    invoke-static {v10}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 260
    .line 261
    .line 262
    move-result v9

    .line 263
    ushr-int/lit8 v10, v9, 0x1f

    .line 264
    .line 265
    ushr-int/lit8 v13, v9, 0x17

    .line 266
    .line 267
    and-int/2addr v13, v11

    .line 268
    and-int v20, v9, v12

    .line 269
    .line 270
    if-ne v13, v11, :cond_17

    .line 271
    .line 272
    if-eqz v20, :cond_16

    .line 273
    .line 274
    move/from16 v9, v17

    .line 275
    .line 276
    goto :goto_f

    .line 277
    :cond_16
    move v9, v7

    .line 278
    :goto_f
    move v13, v2

    .line 279
    goto :goto_11

    .line 280
    :cond_17
    add-int/lit8 v13, v13, -0x70

    .line 281
    .line 282
    if-lt v13, v2, :cond_18

    .line 283
    .line 284
    move v9, v7

    .line 285
    move/from16 v13, v16

    .line 286
    .line 287
    goto :goto_11

    .line 288
    :cond_18
    if-gtz v13, :cond_1b

    .line 289
    .line 290
    if-lt v13, v15, :cond_1a

    .line 291
    .line 292
    or-int v9, v20, v14

    .line 293
    .line 294
    rsub-int/lit8 v13, v13, 0x1

    .line 295
    .line 296
    shr-int/2addr v9, v13

    .line 297
    and-int/lit16 v13, v9, 0x1000

    .line 298
    .line 299
    if-eqz v13, :cond_19

    .line 300
    .line 301
    add-int/lit16 v9, v9, 0x2000

    .line 302
    .line 303
    :cond_19
    shr-int/lit8 v9, v9, 0xd

    .line 304
    .line 305
    move v13, v7

    .line 306
    goto :goto_11

    .line 307
    :cond_1a
    move v9, v7

    .line 308
    move v13, v9

    .line 309
    goto :goto_11

    .line 310
    :cond_1b
    shr-int/lit8 v20, v20, 0xd

    .line 311
    .line 312
    and-int/lit16 v9, v9, 0x1000

    .line 313
    .line 314
    if-eqz v9, :cond_1c

    .line 315
    .line 316
    shl-int/lit8 v9, v13, 0xa

    .line 317
    .line 318
    or-int v9, v9, v20

    .line 319
    .line 320
    add-int/2addr v9, v3

    .line 321
    shl-int/lit8 v10, v10, 0xf

    .line 322
    .line 323
    or-int/2addr v9, v10

    .line 324
    :goto_10
    int-to-short v9, v9

    .line 325
    goto :goto_12

    .line 326
    :cond_1c
    move/from16 v9, v20

    .line 327
    .line 328
    :goto_11
    shl-int/lit8 v10, v10, 0xf

    .line 329
    .line 330
    shl-int/lit8 v13, v13, 0xa

    .line 331
    .line 332
    or-int/2addr v10, v13

    .line 333
    or-int/2addr v9, v10

    .line 334
    goto :goto_10

    .line 335
    :goto_12
    const/4 v10, 0x2

    .line 336
    invoke-virtual {v0, v10}, Lb80;->b(I)F

    .line 337
    .line 338
    .line 339
    move-result v13

    .line 340
    invoke-virtual {v0, v10}, Lb80;->a(I)F

    .line 341
    .line 342
    .line 343
    move-result v0

    .line 344
    cmpg-float v10, p2, v13

    .line 345
    .line 346
    if-gez v10, :cond_1d

    .line 347
    .line 348
    goto :goto_13

    .line 349
    :cond_1d
    move/from16 v13, p2

    .line 350
    .line 351
    :goto_13
    cmpl-float v10, v13, v0

    .line 352
    .line 353
    if-lez v10, :cond_1e

    .line 354
    .line 355
    goto :goto_14

    .line 356
    :cond_1e
    move v0, v13

    .line 357
    :goto_14
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 358
    .line 359
    .line 360
    move-result v0

    .line 361
    ushr-int/lit8 v10, v0, 0x1f

    .line 362
    .line 363
    ushr-int/lit8 v13, v0, 0x17

    .line 364
    .line 365
    and-int/2addr v13, v11

    .line 366
    and-int/2addr v12, v0

    .line 367
    if-ne v13, v11, :cond_20

    .line 368
    .line 369
    if-eqz v12, :cond_1f

    .line 370
    .line 371
    move/from16 v7, v17

    .line 372
    .line 373
    :cond_1f
    move v0, v7

    .line 374
    move v7, v2

    .line 375
    goto :goto_16

    .line 376
    :cond_20
    add-int/lit8 v13, v13, -0x70

    .line 377
    .line 378
    if-lt v13, v2, :cond_21

    .line 379
    .line 380
    move v0, v7

    .line 381
    move/from16 v7, v16

    .line 382
    .line 383
    goto :goto_16

    .line 384
    :cond_21
    if-gtz v13, :cond_24

    .line 385
    .line 386
    if-lt v13, v15, :cond_23

    .line 387
    .line 388
    or-int v0, v12, v14

    .line 389
    .line 390
    rsub-int/lit8 v2, v13, 0x1

    .line 391
    .line 392
    shr-int/2addr v0, v2

    .line 393
    and-int/lit16 v2, v0, 0x1000

    .line 394
    .line 395
    if-eqz v2, :cond_22

    .line 396
    .line 397
    add-int/lit16 v0, v0, 0x2000

    .line 398
    .line 399
    :cond_22
    shr-int/lit8 v0, v0, 0xd

    .line 400
    .line 401
    goto :goto_16

    .line 402
    :cond_23
    move v0, v7

    .line 403
    goto :goto_16

    .line 404
    :cond_24
    shr-int/lit8 v7, v12, 0xd

    .line 405
    .line 406
    and-int/lit16 v0, v0, 0x1000

    .line 407
    .line 408
    if-eqz v0, :cond_25

    .line 409
    .line 410
    shl-int/lit8 v0, v13, 0xa

    .line 411
    .line 412
    or-int/2addr v0, v7

    .line 413
    add-int/2addr v0, v3

    .line 414
    shl-int/lit8 v2, v10, 0xf

    .line 415
    .line 416
    or-int/2addr v0, v2

    .line 417
    :goto_15
    int-to-short v0, v0

    .line 418
    goto :goto_17

    .line 419
    :cond_25
    move v0, v7

    .line 420
    move v7, v13

    .line 421
    :goto_16
    shl-int/lit8 v2, v10, 0xf

    .line 422
    .line 423
    shl-int/lit8 v3, v7, 0xa

    .line 424
    .line 425
    or-int/2addr v2, v3

    .line 426
    or-int/2addr v0, v2

    .line 427
    goto :goto_15

    .line 428
    :goto_17
    cmpg-float v2, p3, v6

    .line 429
    .line 430
    if-gez v2, :cond_26

    .line 431
    .line 432
    goto :goto_18

    .line 433
    :cond_26
    move/from16 v6, p3

    .line 434
    .line 435
    :goto_18
    cmpl-float v2, v6, v5

    .line 436
    .line 437
    if-lez v2, :cond_27

    .line 438
    .line 439
    goto :goto_19

    .line 440
    :cond_27
    move v5, v6

    .line 441
    :goto_19
    const v2, 0x447fc000    # 1023.0f

    .line 442
    .line 443
    .line 444
    mul-float/2addr v5, v2

    .line 445
    add-float/2addr v5, v4

    .line 446
    float-to-int v2, v5

    .line 447
    int-to-long v3, v8

    .line 448
    const-wide/32 v5, 0xffff

    .line 449
    .line 450
    .line 451
    and-long/2addr v3, v5

    .line 452
    const/16 v7, 0x30

    .line 453
    .line 454
    shl-long/2addr v3, v7

    .line 455
    int-to-long v7, v9

    .line 456
    and-long/2addr v7, v5

    .line 457
    shl-long v7, v7, v19

    .line 458
    .line 459
    or-long/2addr v3, v7

    .line 460
    int-to-long v7, v0

    .line 461
    and-long/2addr v5, v7

    .line 462
    shl-long v5, v5, v18

    .line 463
    .line 464
    or-long/2addr v3, v5

    .line 465
    int-to-long v5, v2

    .line 466
    const-wide/16 v7, 0x3ff

    .line 467
    .line 468
    and-long/2addr v5, v7

    .line 469
    const/4 v0, 0x6

    .line 470
    shl-long/2addr v5, v0

    .line 471
    or-long v2, v3, v5

    .line 472
    .line 473
    int-to-long v0, v1

    .line 474
    const-wide/16 v4, 0x3f

    .line 475
    .line 476
    and-long/2addr v0, v4

    .line 477
    or-long/2addr v0, v2

    .line 478
    sget v2, Lt70;->g:I

    .line 479
    .line 480
    return-wide v0
.end method

.method public static final b(I)J
    .locals 2

    .line 1
    int-to-long v0, p0

    .line 2
    const/16 p0, 0x20

    .line 3
    .line 4
    shl-long/2addr v0, p0

    .line 5
    sget p0, Lt70;->g:I

    .line 6
    .line 7
    return-wide v0
.end method

.method public static final c(J)J
    .locals 1

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    shl-long/2addr p0, v0

    .line 4
    sget v0, Lt70;->g:I

    .line 5
    .line 6
    return-wide p0
.end method

.method public static d(III)J
    .locals 1

    .line 1
    and-int/lit16 p0, p0, 0xff

    .line 2
    .line 3
    shl-int/lit8 p0, p0, 0x10

    .line 4
    .line 5
    const/high16 v0, -0x1000000

    .line 6
    .line 7
    or-int/2addr p0, v0

    .line 8
    and-int/lit16 p1, p1, 0xff

    .line 9
    .line 10
    shl-int/lit8 p1, p1, 0x8

    .line 11
    .line 12
    or-int/2addr p0, p1

    .line 13
    and-int/lit16 p1, p2, 0xff

    .line 14
    .line 15
    or-int/2addr p0, p1

    .line 16
    invoke-static {p0}, Lc75;->b(I)J

    .line 17
    .line 18
    .line 19
    move-result-wide p0

    .line 20
    return-wide p0
.end method

.method public static final e(Lka0;Ldf1;Ldf1;Lay3;JJLag1;I)V
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    move-object/from16 v4, p3

    .line 8
    .line 9
    move-wide/from16 v5, p4

    .line 10
    .line 11
    move-wide/from16 v7, p6

    .line 12
    .line 13
    move-object/from16 v0, p8

    .line 14
    .line 15
    const v9, -0x132ee795

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v9}, Lag1;->X(I)Lag1;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lag1;->h(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v9

    .line 25
    if-eqz v9, :cond_0

    .line 26
    .line 27
    const/4 v9, 0x4

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v9, 0x2

    .line 30
    :goto_0
    or-int v9, p9, v9

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Lag1;->h(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v10

    .line 36
    if-eqz v10, :cond_1

    .line 37
    .line 38
    const/16 v10, 0x20

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const/16 v10, 0x10

    .line 42
    .line 43
    :goto_1
    or-int/2addr v9, v10

    .line 44
    invoke-virtual {v0, v3}, Lag1;->h(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v10

    .line 48
    if-eqz v10, :cond_2

    .line 49
    .line 50
    const/16 v10, 0x100

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_2
    const/16 v10, 0x80

    .line 54
    .line 55
    :goto_2
    or-int/2addr v9, v10

    .line 56
    invoke-virtual {v0, v4}, Lag1;->f(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v10

    .line 60
    if-eqz v10, :cond_3

    .line 61
    .line 62
    const/16 v10, 0x800

    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_3
    const/16 v10, 0x400

    .line 66
    .line 67
    :goto_3
    or-int/2addr v9, v10

    .line 68
    invoke-virtual {v0, v5, v6}, Lag1;->e(J)Z

    .line 69
    .line 70
    .line 71
    move-result v10

    .line 72
    if-eqz v10, :cond_4

    .line 73
    .line 74
    const/16 v10, 0x4000

    .line 75
    .line 76
    goto :goto_4

    .line 77
    :cond_4
    const/16 v10, 0x2000

    .line 78
    .line 79
    :goto_4
    or-int/2addr v9, v10

    .line 80
    invoke-virtual {v0, v7, v8}, Lag1;->e(J)Z

    .line 81
    .line 82
    .line 83
    move-result v10

    .line 84
    if-eqz v10, :cond_5

    .line 85
    .line 86
    const/high16 v10, 0x20000

    .line 87
    .line 88
    goto :goto_5

    .line 89
    :cond_5
    const/high16 v10, 0x10000

    .line 90
    .line 91
    :goto_5
    or-int/2addr v9, v10

    .line 92
    const v10, 0x12493

    .line 93
    .line 94
    .line 95
    and-int/2addr v10, v9

    .line 96
    const v11, 0x12492

    .line 97
    .line 98
    .line 99
    if-eq v10, v11, :cond_6

    .line 100
    .line 101
    const/4 v10, 0x1

    .line 102
    goto :goto_6

    .line 103
    :cond_6
    const/4 v10, 0x0

    .line 104
    :goto_6
    and-int/lit8 v11, v9, 0x1

    .line 105
    .line 106
    invoke-virtual {v0, v11, v10}, Lag1;->N(IZ)Z

    .line 107
    .line 108
    .line 109
    move-result v10

    .line 110
    if-eqz v10, :cond_f

    .line 111
    .line 112
    const/4 v10, 0x0

    .line 113
    if-nez v3, :cond_7

    .line 114
    .line 115
    const/high16 v11, 0x41000000    # 8.0f

    .line 116
    .line 117
    goto :goto_7

    .line 118
    :cond_7
    move v11, v10

    .line 119
    :goto_7
    const/16 v14, 0xa

    .line 120
    .line 121
    sget-object v15, Lkd2;->b:Lkd2;

    .line 122
    .line 123
    const/high16 v13, 0x41800000    # 16.0f

    .line 124
    .line 125
    invoke-static {v15, v13, v11, v10, v14}, Lis0;->O(Lnd2;FFFI)Lnd2;

    .line 126
    .line 127
    .line 128
    move-result-object v11

    .line 129
    invoke-virtual {v0}, Lag1;->K()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v13

    .line 133
    sget-object v14, Lrb0;->a:Lbx3;

    .line 134
    .line 135
    if-ne v13, v14, :cond_8

    .line 136
    .line 137
    new-instance v13, Loa;

    .line 138
    .line 139
    const/4 v14, 0x5

    .line 140
    invoke-direct {v13, v14}, Loa;-><init>(I)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, v13}, Lag1;->g0(Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    :cond_8
    check-cast v13, Ldb2;

    .line 147
    .line 148
    iget-wide v14, v0, Lag1;->T:J

    .line 149
    .line 150
    invoke-static {v14, v15}, Ljava/lang/Long;->hashCode(J)I

    .line 151
    .line 152
    .line 153
    move-result v14

    .line 154
    invoke-virtual {v0}, Lag1;->l()Lhu2;

    .line 155
    .line 156
    .line 157
    move-result-object v15

    .line 158
    invoke-static {v0, v11}, Lis0;->H(Lag1;Lnd2;)Lnd2;

    .line 159
    .line 160
    .line 161
    move-result-object v11

    .line 162
    sget-object v16, Llb0;->c:Lkb0;

    .line 163
    .line 164
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    .line 166
    .line 167
    sget-object v10, Lkb0;->b:Lic0;

    .line 168
    .line 169
    invoke-virtual {v0}, Lag1;->Z()V

    .line 170
    .line 171
    .line 172
    iget-boolean v12, v0, Lag1;->S:Z

    .line 173
    .line 174
    if-eqz v12, :cond_9

    .line 175
    .line 176
    invoke-virtual {v0, v10}, Lag1;->k(Lne1;)V

    .line 177
    .line 178
    .line 179
    goto :goto_8

    .line 180
    :cond_9
    invoke-virtual {v0}, Lag1;->j0()V

    .line 181
    .line 182
    .line 183
    :goto_8
    sget-object v12, Lkb0;->f:Lfd;

    .line 184
    .line 185
    invoke-static {v12, v0, v13}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    sget-object v13, Lkb0;->e:Lfd;

    .line 189
    .line 190
    invoke-static {v13, v0, v15}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 194
    .line 195
    .line 196
    move-result-object v14

    .line 197
    sget-object v15, Lkb0;->g:Lfd;

    .line 198
    .line 199
    invoke-static {v15, v0, v14}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    sget-object v14, Lkb0;->h:Ll9;

    .line 203
    .line 204
    invoke-static {v0, v14}, Lht4;->y(Lag1;Lpe1;)V

    .line 205
    .line 206
    .line 207
    move/from16 v17, v9

    .line 208
    .line 209
    sget-object v9, Lkb0;->d:Lfd;

    .line 210
    .line 211
    invoke-static {v9, v0, v11}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    const-string v11, "text"

    .line 215
    .line 216
    invoke-static {v11}, Lon4;->E(Ljava/lang/String;)Lnd2;

    .line 217
    .line 218
    .line 219
    move-result-object v11

    .line 220
    const/high16 v3, 0x40c00000    # 6.0f

    .line 221
    .line 222
    const/4 v7, 0x0

    .line 223
    const/4 v8, 0x1

    .line 224
    invoke-static {v11, v7, v3, v8}, Lis0;->M(Lnd2;FFI)Lnd2;

    .line 225
    .line 226
    .line 227
    move-result-object v3

    .line 228
    sget-object v7, Lmj1;->o:Lcw;

    .line 229
    .line 230
    const/4 v8, 0x0

    .line 231
    invoke-static {v7, v8}, Lqx;->d(Lcw;Z)Ldb2;

    .line 232
    .line 233
    .line 234
    move-result-object v11

    .line 235
    iget-wide v4, v0, Lag1;->T:J

    .line 236
    .line 237
    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    .line 238
    .line 239
    .line 240
    move-result v4

    .line 241
    invoke-virtual {v0}, Lag1;->l()Lhu2;

    .line 242
    .line 243
    .line 244
    move-result-object v5

    .line 245
    invoke-static {v0, v3}, Lis0;->H(Lag1;Lnd2;)Lnd2;

    .line 246
    .line 247
    .line 248
    move-result-object v3

    .line 249
    invoke-virtual {v0}, Lag1;->Z()V

    .line 250
    .line 251
    .line 252
    iget-boolean v6, v0, Lag1;->S:Z

    .line 253
    .line 254
    if-eqz v6, :cond_a

    .line 255
    .line 256
    invoke-virtual {v0, v10}, Lag1;->k(Lne1;)V

    .line 257
    .line 258
    .line 259
    goto :goto_9

    .line 260
    :cond_a
    invoke-virtual {v0}, Lag1;->j0()V

    .line 261
    .line 262
    .line 263
    :goto_9
    invoke-static {v12, v0, v11}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 264
    .line 265
    .line 266
    invoke-static {v13, v0, v5}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 267
    .line 268
    .line 269
    invoke-static {v4, v0, v15, v0, v14}, Ldi0;->C(ILag1;Lfd;Lag1;Ll9;)V

    .line 270
    .line 271
    .line 272
    invoke-static {v9, v0, v3}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 273
    .line 274
    .line 275
    and-int/lit8 v3, v17, 0xe

    .line 276
    .line 277
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 278
    .line 279
    .line 280
    move-result-object v3

    .line 281
    invoke-virtual {v1, v0, v3}, Lka0;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    const/4 v8, 0x1

    .line 285
    invoke-virtual {v0, v8}, Lag1;->p(Z)V

    .line 286
    .line 287
    .line 288
    if-eqz v2, :cond_c

    .line 289
    .line 290
    const v4, 0x3af62978

    .line 291
    .line 292
    .line 293
    invoke-virtual {v0, v4}, Lag1;->W(I)V

    .line 294
    .line 295
    .line 296
    const-string v4, "action"

    .line 297
    .line 298
    invoke-static {v4}, Lon4;->E(Ljava/lang/String;)Lnd2;

    .line 299
    .line 300
    .line 301
    move-result-object v4

    .line 302
    const/4 v8, 0x0

    .line 303
    invoke-static {v7, v8}, Lqx;->d(Lcw;Z)Ldb2;

    .line 304
    .line 305
    .line 306
    move-result-object v5

    .line 307
    move-object v8, v4

    .line 308
    const/16 v6, 0x8

    .line 309
    .line 310
    iget-wide v3, v0, Lag1;->T:J

    .line 311
    .line 312
    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    .line 313
    .line 314
    .line 315
    move-result v3

    .line 316
    invoke-virtual {v0}, Lag1;->l()Lhu2;

    .line 317
    .line 318
    .line 319
    move-result-object v4

    .line 320
    invoke-static {v0, v8}, Lis0;->H(Lag1;Lnd2;)Lnd2;

    .line 321
    .line 322
    .line 323
    move-result-object v8

    .line 324
    invoke-virtual {v0}, Lag1;->Z()V

    .line 325
    .line 326
    .line 327
    iget-boolean v11, v0, Lag1;->S:Z

    .line 328
    .line 329
    if-eqz v11, :cond_b

    .line 330
    .line 331
    invoke-virtual {v0, v10}, Lag1;->k(Lne1;)V

    .line 332
    .line 333
    .line 334
    goto :goto_a

    .line 335
    :cond_b
    invoke-virtual {v0}, Lag1;->j0()V

    .line 336
    .line 337
    .line 338
    :goto_a
    invoke-static {v12, v0, v5}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 339
    .line 340
    .line 341
    invoke-static {v13, v0, v4}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 342
    .line 343
    .line 344
    invoke-static {v3, v0, v15, v0, v14}, Ldi0;->C(ILag1;Lfd;Lag1;Ll9;)V

    .line 345
    .line 346
    .line 347
    invoke-static {v9, v0, v8}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 348
    .line 349
    .line 350
    sget-object v3, Lbg0;->a:Llc0;

    .line 351
    .line 352
    new-instance v4, Lt70;

    .line 353
    .line 354
    move v8, v6

    .line 355
    move-object v5, v7

    .line 356
    move-wide/from16 v6, p4

    .line 357
    .line 358
    invoke-direct {v4, v6, v7}, Lt70;-><init>(J)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v3, v4}, Llc0;->a(Ljava/lang/Object;)Lj03;

    .line 362
    .line 363
    .line 364
    move-result-object v3

    .line 365
    sget-object v4, Llx3;->a:Llc0;

    .line 366
    .line 367
    move-object/from16 v11, p3

    .line 368
    .line 369
    invoke-virtual {v4, v11}, Llc0;->a(Ljava/lang/Object;)Lj03;

    .line 370
    .line 371
    .line 372
    move-result-object v4

    .line 373
    filled-new-array {v3, v4}, [Lj03;

    .line 374
    .line 375
    .line 376
    move-result-object v3

    .line 377
    and-int/lit8 v4, v17, 0x70

    .line 378
    .line 379
    or-int/2addr v4, v8

    .line 380
    invoke-static {v3, v2, v0, v4}, Lgg4;->b([Lj03;Ldf1;Lag1;I)V

    .line 381
    .line 382
    .line 383
    const/4 v3, 0x1

    .line 384
    invoke-virtual {v0, v3}, Lag1;->p(Z)V

    .line 385
    .line 386
    .line 387
    const/4 v3, 0x0

    .line 388
    invoke-virtual {v0, v3}, Lag1;->p(Z)V

    .line 389
    .line 390
    .line 391
    goto :goto_b

    .line 392
    :cond_c
    move-object/from16 v11, p3

    .line 393
    .line 394
    move-object v5, v7

    .line 395
    const/4 v3, 0x0

    .line 396
    const/16 v8, 0x8

    .line 397
    .line 398
    move-wide/from16 v6, p4

    .line 399
    .line 400
    const v4, 0x3afaf8c0

    .line 401
    .line 402
    .line 403
    invoke-virtual {v0, v4}, Lag1;->W(I)V

    .line 404
    .line 405
    .line 406
    invoke-virtual {v0, v3}, Lag1;->p(Z)V

    .line 407
    .line 408
    .line 409
    :goto_b
    if-eqz p2, :cond_e

    .line 410
    .line 411
    const v4, 0x3afbb5a8

    .line 412
    .line 413
    .line 414
    invoke-virtual {v0, v4}, Lag1;->W(I)V

    .line 415
    .line 416
    .line 417
    const-string v4, "dismissAction"

    .line 418
    .line 419
    invoke-static {v4}, Lon4;->E(Ljava/lang/String;)Lnd2;

    .line 420
    .line 421
    .line 422
    move-result-object v4

    .line 423
    invoke-static {v5, v3}, Lqx;->d(Lcw;Z)Ldb2;

    .line 424
    .line 425
    .line 426
    move-result-object v5

    .line 427
    move/from16 v16, v8

    .line 428
    .line 429
    move-object v3, v9

    .line 430
    iget-wide v8, v0, Lag1;->T:J

    .line 431
    .line 432
    invoke-static {v8, v9}, Ljava/lang/Long;->hashCode(J)I

    .line 433
    .line 434
    .line 435
    move-result v8

    .line 436
    invoke-virtual {v0}, Lag1;->l()Lhu2;

    .line 437
    .line 438
    .line 439
    move-result-object v9

    .line 440
    invoke-static {v0, v4}, Lis0;->H(Lag1;Lnd2;)Lnd2;

    .line 441
    .line 442
    .line 443
    move-result-object v4

    .line 444
    invoke-virtual {v0}, Lag1;->Z()V

    .line 445
    .line 446
    .line 447
    iget-boolean v1, v0, Lag1;->S:Z

    .line 448
    .line 449
    if-eqz v1, :cond_d

    .line 450
    .line 451
    invoke-virtual {v0, v10}, Lag1;->k(Lne1;)V

    .line 452
    .line 453
    .line 454
    goto :goto_c

    .line 455
    :cond_d
    invoke-virtual {v0}, Lag1;->j0()V

    .line 456
    .line 457
    .line 458
    :goto_c
    invoke-static {v12, v0, v5}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 459
    .line 460
    .line 461
    invoke-static {v13, v0, v9}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 462
    .line 463
    .line 464
    invoke-static {v8, v0, v15, v0, v14}, Ldi0;->C(ILag1;Lfd;Lag1;Ll9;)V

    .line 465
    .line 466
    .line 467
    invoke-static {v3, v0, v4}, Lht4;->D(Ldf1;Lag1;Ljava/lang/Object;)V

    .line 468
    .line 469
    .line 470
    sget-object v1, Lbg0;->a:Llc0;

    .line 471
    .line 472
    new-instance v3, Lt70;

    .line 473
    .line 474
    move-wide/from16 v4, p6

    .line 475
    .line 476
    invoke-direct {v3, v4, v5}, Lt70;-><init>(J)V

    .line 477
    .line 478
    .line 479
    invoke-virtual {v1, v3}, Llc0;->a(Ljava/lang/Object;)Lj03;

    .line 480
    .line 481
    .line 482
    move-result-object v1

    .line 483
    shr-int/lit8 v3, v17, 0x3

    .line 484
    .line 485
    and-int/lit8 v3, v3, 0x70

    .line 486
    .line 487
    or-int v3, v16, v3

    .line 488
    .line 489
    move-object/from16 v8, p2

    .line 490
    .line 491
    invoke-static {v1, v8, v0, v3}, Lgg4;->a(Lj03;Ldf1;Lag1;I)V

    .line 492
    .line 493
    .line 494
    const/4 v3, 0x1

    .line 495
    invoke-virtual {v0, v3}, Lag1;->p(Z)V

    .line 496
    .line 497
    .line 498
    const/4 v1, 0x0

    .line 499
    invoke-virtual {v0, v1}, Lag1;->p(Z)V

    .line 500
    .line 501
    .line 502
    goto :goto_d

    .line 503
    :cond_e
    move-object/from16 v8, p2

    .line 504
    .line 505
    move-wide/from16 v4, p6

    .line 506
    .line 507
    move v1, v3

    .line 508
    const/4 v3, 0x1

    .line 509
    const v9, 0x3affd0c0

    .line 510
    .line 511
    .line 512
    invoke-virtual {v0, v9}, Lag1;->W(I)V

    .line 513
    .line 514
    .line 515
    invoke-virtual {v0, v1}, Lag1;->p(Z)V

    .line 516
    .line 517
    .line 518
    :goto_d
    invoke-virtual {v0, v3}, Lag1;->p(Z)V

    .line 519
    .line 520
    .line 521
    goto :goto_e

    .line 522
    :cond_f
    move-object v11, v4

    .line 523
    move-wide/from16 v18, v7

    .line 524
    .line 525
    move-object v8, v3

    .line 526
    move-wide v6, v5

    .line 527
    move-wide/from16 v4, v18

    .line 528
    .line 529
    invoke-virtual {v0}, Lag1;->Q()V

    .line 530
    .line 531
    .line 532
    :goto_e
    invoke-virtual {v0}, Lag1;->r()Lc33;

    .line 533
    .line 534
    .line 535
    move-result-object v10

    .line 536
    if-eqz v10, :cond_10

    .line 537
    .line 538
    new-instance v0, Llo3;

    .line 539
    .line 540
    move-object/from16 v1, p0

    .line 541
    .line 542
    move/from16 v9, p9

    .line 543
    .line 544
    move-object v3, v8

    .line 545
    move-wide/from16 v18, v4

    .line 546
    .line 547
    move-object v4, v11

    .line 548
    move-wide v5, v6

    .line 549
    move-wide/from16 v7, v18

    .line 550
    .line 551
    invoke-direct/range {v0 .. v9}, Llo3;-><init>(Lka0;Ldf1;Ldf1;Lay3;JJI)V

    .line 552
    .line 553
    .line 554
    iput-object v0, v10, Lc33;->d:Ldf1;

    .line 555
    .line 556
    :cond_10
    return-void
.end method

.method public static final f([FLbi0;Ljava/util/AbstractList;FF)Lpa3;
    .locals 39

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const/high16 v2, 0x3f800000    # 1.0f

    .line 6
    .line 7
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    array-length v4, v0

    .line 15
    const/4 v5, 0x6

    .line 16
    const/4 v6, 0x0

    .line 17
    if-lt v4, v5, :cond_18

    .line 18
    .line 19
    array-length v4, v0

    .line 20
    const/4 v5, 0x2

    .line 21
    rem-int/2addr v4, v5

    .line 22
    const/4 v7, 0x1

    .line 23
    if-eq v4, v7, :cond_17

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    mul-int/2addr v4, v5

    .line 32
    array-length v8, v0

    .line 33
    if-ne v4, v8, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const-string v0, "perVertexRounding list should be either null or the same size as the number of vertices (vertices.size / 2)"

    .line 37
    .line 38
    invoke-static {v0}, Lk21;->f(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-object v6

    .line 42
    :cond_1
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    array-length v8, v0

    .line 48
    div-int/2addr v8, v5

    .line 49
    new-instance v9, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .line 53
    .line 54
    const/4 v10, 0x0

    .line 55
    move v11, v10

    .line 56
    :goto_1
    if-ge v11, v8, :cond_4

    .line 57
    .line 58
    if-eqz v1, :cond_3

    .line 59
    .line 60
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v12

    .line 64
    check-cast v12, Lbi0;

    .line 65
    .line 66
    if-nez v12, :cond_2

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_2
    move-object/from16 v20, v12

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_3
    :goto_2
    move-object/from16 v20, p1

    .line 73
    .line 74
    :goto_3
    add-int v12, v11, v8

    .line 75
    .line 76
    sub-int/2addr v12, v7

    .line 77
    rem-int/2addr v12, v8

    .line 78
    mul-int/2addr v12, v5

    .line 79
    add-int/lit8 v21, v11, 0x1

    .line 80
    .line 81
    rem-int v13, v21, v8

    .line 82
    .line 83
    mul-int/2addr v13, v5

    .line 84
    move v14, v13

    .line 85
    new-instance v13, Lla3;

    .line 86
    .line 87
    aget v15, v0, v12

    .line 88
    .line 89
    add-int/2addr v12, v7

    .line 90
    aget v12, v0, v12

    .line 91
    .line 92
    invoke-static {v15, v12}, Lv71;->a(FF)J

    .line 93
    .line 94
    .line 95
    move-result-wide v15

    .line 96
    mul-int/lit8 v11, v11, 0x2

    .line 97
    .line 98
    aget v12, v0, v11

    .line 99
    .line 100
    add-int/2addr v11, v7

    .line 101
    aget v11, v0, v11

    .line 102
    .line 103
    invoke-static {v12, v11}, Lv71;->a(FF)J

    .line 104
    .line 105
    .line 106
    move-result-wide v11

    .line 107
    move/from16 v22, v2

    .line 108
    .line 109
    aget v2, v0, v14

    .line 110
    .line 111
    add-int/2addr v14, v7

    .line 112
    aget v14, v0, v14

    .line 113
    .line 114
    invoke-static {v2, v14}, Lv71;->a(FF)J

    .line 115
    .line 116
    .line 117
    move-result-wide v18

    .line 118
    move-wide v14, v15

    .line 119
    move-wide/from16 v16, v11

    .line 120
    .line 121
    invoke-direct/range {v13 .. v20}, Lla3;-><init>(JJJLbi0;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move/from16 v11, v21

    .line 128
    .line 129
    move/from16 v2, v22

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_4
    move/from16 v22, v2

    .line 133
    .line 134
    invoke-static {v10, v8}, Lix;->a0(II)Lms1;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    new-instance v2, Ljava/util/ArrayList;

    .line 139
    .line 140
    const/16 v11, 0xa

    .line 141
    .line 142
    invoke-static {v1, v11}, Lp70;->a0(Ljava/lang/Iterable;I)I

    .line 143
    .line 144
    .line 145
    move-result v11

    .line 146
    invoke-direct {v2, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1}, Lks1;->iterator()Ljava/util/Iterator;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    :goto_4
    move-object v11, v1

    .line 154
    check-cast v11, Lls1;

    .line 155
    .line 156
    iget-boolean v11, v11, Lls1;->p:Z

    .line 157
    .line 158
    const/4 v12, 0x0

    .line 159
    if-eqz v11, :cond_7

    .line 160
    .line 161
    move-object v11, v1

    .line 162
    check-cast v11, Les1;

    .line 163
    .line 164
    invoke-virtual {v11}, Les1;->nextInt()I

    .line 165
    .line 166
    .line 167
    move-result v11

    .line 168
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v13

    .line 172
    check-cast v13, Lla3;

    .line 173
    .line 174
    iget v13, v13, Lla3;->h:F

    .line 175
    .line 176
    add-int/lit8 v14, v11, 0x1

    .line 177
    .line 178
    rem-int/2addr v14, v8

    .line 179
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v15

    .line 183
    check-cast v15, Lla3;

    .line 184
    .line 185
    iget v15, v15, Lla3;->h:F

    .line 186
    .line 187
    add-float/2addr v13, v15

    .line 188
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v15

    .line 192
    check-cast v15, Lla3;

    .line 193
    .line 194
    invoke-virtual {v15}, Lla3;->c()F

    .line 195
    .line 196
    .line 197
    move-result v15

    .line 198
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v16

    .line 202
    check-cast v16, Lla3;

    .line 203
    .line 204
    invoke-virtual/range {v16 .. v16}, Lla3;->c()F

    .line 205
    .line 206
    .line 207
    move-result v16

    .line 208
    add-float v16, v16, v15

    .line 209
    .line 210
    mul-int/2addr v11, v5

    .line 211
    aget v15, v0, v11

    .line 212
    .line 213
    add-int/2addr v11, v7

    .line 214
    aget v11, v0, v11

    .line 215
    .line 216
    mul-int/2addr v14, v5

    .line 217
    aget v17, v0, v14

    .line 218
    .line 219
    add-int/2addr v14, v7

    .line 220
    aget v14, v0, v14

    .line 221
    .line 222
    sub-float v15, v15, v17

    .line 223
    .line 224
    sub-float/2addr v11, v14

    .line 225
    sget v14, Lk94;->b:F

    .line 226
    .line 227
    mul-float/2addr v15, v15

    .line 228
    mul-float/2addr v11, v11

    .line 229
    add-float/2addr v11, v15

    .line 230
    float-to-double v14, v11

    .line 231
    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    .line 232
    .line 233
    .line 234
    move-result-wide v14

    .line 235
    double-to-float v11, v14

    .line 236
    cmpl-float v14, v13, v11

    .line 237
    .line 238
    if-lez v14, :cond_5

    .line 239
    .line 240
    div-float/2addr v11, v13

    .line 241
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 242
    .line 243
    .line 244
    move-result-object v11

    .line 245
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 246
    .line 247
    .line 248
    move-result-object v12

    .line 249
    new-instance v13, Ljs2;

    .line 250
    .line 251
    invoke-direct {v13, v11, v12}, Ljs2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 252
    .line 253
    .line 254
    goto :goto_5

    .line 255
    :cond_5
    cmpl-float v12, v16, v11

    .line 256
    .line 257
    if-lez v12, :cond_6

    .line 258
    .line 259
    sub-float/2addr v11, v13

    .line 260
    sub-float v16, v16, v13

    .line 261
    .line 262
    div-float v11, v11, v16

    .line 263
    .line 264
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 265
    .line 266
    .line 267
    move-result-object v11

    .line 268
    new-instance v13, Ljs2;

    .line 269
    .line 270
    invoke-direct {v13, v3, v11}, Ljs2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 271
    .line 272
    .line 273
    goto :goto_5

    .line 274
    :cond_6
    new-instance v13, Ljs2;

    .line 275
    .line 276
    invoke-direct {v13, v3, v3}, Ljs2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 277
    .line 278
    .line 279
    :goto_5
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    goto/16 :goto_4

    .line 283
    .line 284
    :cond_7
    move v1, v10

    .line 285
    :goto_6
    if-ge v1, v8, :cond_11

    .line 286
    .line 287
    new-array v14, v5, [F

    .line 288
    .line 289
    move-object/from16 v16, v6

    .line 290
    .line 291
    move v6, v10

    .line 292
    move v15, v6

    .line 293
    :goto_7
    const/16 v17, 0x3

    .line 294
    .line 295
    if-ge v15, v5, :cond_9

    .line 296
    .line 297
    add-int v18, v1, v8

    .line 298
    .line 299
    add-int/lit8 v18, v18, -0x1

    .line 300
    .line 301
    add-int v18, v18, v15

    .line 302
    .line 303
    move/from16 v19, v5

    .line 304
    .line 305
    rem-int v5, v18, v8

    .line 306
    .line 307
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v5

    .line 311
    check-cast v5, Ljs2;

    .line 312
    .line 313
    move/from16 v18, v10

    .line 314
    .line 315
    iget-object v10, v5, Ljs2;->n:Ljava/lang/Object;

    .line 316
    .line 317
    check-cast v10, Ljava/lang/Number;

    .line 318
    .line 319
    invoke-virtual {v10}, Ljava/lang/Number;->floatValue()F

    .line 320
    .line 321
    .line 322
    move-result v10

    .line 323
    iget-object v5, v5, Ljs2;->o:Ljava/lang/Object;

    .line 324
    .line 325
    check-cast v5, Ljava/lang/Number;

    .line 326
    .line 327
    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    .line 328
    .line 329
    .line 330
    move-result v5

    .line 331
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object v20

    .line 335
    move/from16 p1, v12

    .line 336
    .line 337
    move-object/from16 v12, v20

    .line 338
    .line 339
    check-cast v12, Lla3;

    .line 340
    .line 341
    iget v12, v12, Lla3;->h:F

    .line 342
    .line 343
    mul-float/2addr v12, v10

    .line 344
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    move-result-object v10

    .line 348
    check-cast v10, Lla3;

    .line 349
    .line 350
    invoke-virtual {v10}, Lla3;->c()F

    .line 351
    .line 352
    .line 353
    move-result v10

    .line 354
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object v20

    .line 358
    move-object/from16 v13, v20

    .line 359
    .line 360
    check-cast v13, Lla3;

    .line 361
    .line 362
    iget v13, v13, Lla3;->h:F

    .line 363
    .line 364
    sub-float/2addr v10, v13

    .line 365
    mul-float/2addr v10, v5

    .line 366
    add-float/2addr v10, v12

    .line 367
    add-int/lit8 v5, v6, 0x1

    .line 368
    .line 369
    array-length v12, v14

    .line 370
    if-ge v12, v5, :cond_8

    .line 371
    .line 372
    array-length v12, v14

    .line 373
    mul-int/lit8 v12, v12, 0x3

    .line 374
    .line 375
    div-int/lit8 v12, v12, 0x2

    .line 376
    .line 377
    invoke-static {v5, v12}, Ljava/lang/Math;->max(II)I

    .line 378
    .line 379
    .line 380
    move-result v12

    .line 381
    invoke-static {v14, v12}, Ljava/util/Arrays;->copyOf([FI)[F

    .line 382
    .line 383
    .line 384
    move-result-object v12

    .line 385
    move-object v14, v12

    .line 386
    :cond_8
    aput v10, v14, v6

    .line 387
    .line 388
    add-int/lit8 v15, v15, 0x1

    .line 389
    .line 390
    move/from16 v12, p1

    .line 391
    .line 392
    move v6, v5

    .line 393
    move/from16 v10, v18

    .line 394
    .line 395
    move/from16 v5, v19

    .line 396
    .line 397
    goto :goto_7

    .line 398
    :cond_9
    move/from16 v19, v5

    .line 399
    .line 400
    move/from16 v18, v10

    .line 401
    .line 402
    move/from16 p1, v12

    .line 403
    .line 404
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 405
    .line 406
    .line 407
    move-result-object v5

    .line 408
    check-cast v5, Lla3;

    .line 409
    .line 410
    const-string v10, "Index must be between 0 and size"

    .line 411
    .line 412
    if-lez v6, :cond_10

    .line 413
    .line 414
    aget v12, v14, v18

    .line 415
    .line 416
    if-ge v7, v6, :cond_f

    .line 417
    .line 418
    aget v6, v14, v7

    .line 419
    .line 420
    iget-wide v13, v5, Lla3;->e:J

    .line 421
    .line 422
    move v15, v7

    .line 423
    move/from16 v20, v8

    .line 424
    .line 425
    iget-wide v7, v5, Lla3;->d:J

    .line 426
    .line 427
    iget v10, v5, Lla3;->f:F

    .line 428
    .line 429
    move-object/from16 v21, v4

    .line 430
    .line 431
    iget-wide v3, v5, Lla3;->b:J

    .line 432
    .line 433
    move/from16 v24, v15

    .line 434
    .line 435
    invoke-static {v12, v6}, Ljava/lang/Math;->min(FF)F

    .line 436
    .line 437
    .line 438
    move-result v15

    .line 439
    iget v11, v5, Lla3;->h:F

    .line 440
    .line 441
    const v25, 0x38d1b717    # 1.0E-4f

    .line 442
    .line 443
    .line 444
    cmpg-float v26, v11, v25

    .line 445
    .line 446
    if-ltz v26, :cond_a

    .line 447
    .line 448
    cmpg-float v26, v15, v25

    .line 449
    .line 450
    if-ltz v26, :cond_a

    .line 451
    .line 452
    cmpg-float v25, v10, v25

    .line 453
    .line 454
    if-gez v25, :cond_b

    .line 455
    .line 456
    :cond_a
    move/from16 v25, v1

    .line 457
    .line 458
    move-object/from16 v34, v2

    .line 459
    .line 460
    goto/16 :goto_c

    .line 461
    .line 462
    :cond_b
    invoke-static {v15, v11}, Ljava/lang/Math;->min(FF)F

    .line 463
    .line 464
    .line 465
    move-result v15

    .line 466
    invoke-virtual {v5, v12}, Lla3;->a(F)F

    .line 467
    .line 468
    .line 469
    move-result v27

    .line 470
    invoke-virtual {v5, v6}, Lla3;->a(F)F

    .line 471
    .line 472
    .line 473
    move-result v6

    .line 474
    mul-float/2addr v10, v15

    .line 475
    div-float v38, v10, v11

    .line 476
    .line 477
    sget v10, Lk94;->b:F

    .line 478
    .line 479
    mul-float v10, v38, v38

    .line 480
    .line 481
    mul-float v11, v15, v15

    .line 482
    .line 483
    add-float/2addr v11, v10

    .line 484
    float-to-double v10, v11

    .line 485
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    .line 486
    .line 487
    .line 488
    move-result-wide v10

    .line 489
    double-to-float v10, v10

    .line 490
    invoke-static {v7, v8, v13, v14}, Lix;->K(JJ)J

    .line 491
    .line 492
    .line 493
    move-result-wide v11

    .line 494
    move/from16 v25, v1

    .line 495
    .line 496
    const/high16 v1, 0x40000000    # 2.0f

    .line 497
    .line 498
    invoke-static {v1, v11, v12}, Lix;->o(FJ)J

    .line 499
    .line 500
    .line 501
    move-result-wide v11

    .line 502
    invoke-static {v11, v12}, Lix;->u(J)J

    .line 503
    .line 504
    .line 505
    move-result-wide v11

    .line 506
    invoke-static {v10, v11, v12}, Lix;->V(FJ)J

    .line 507
    .line 508
    .line 509
    move-result-wide v10

    .line 510
    invoke-static {v3, v4, v10, v11}, Lix;->K(JJ)J

    .line 511
    .line 512
    .line 513
    move-result-wide v10

    .line 514
    iput-wide v10, v5, Lla3;->i:J

    .line 515
    .line 516
    invoke-static {v15, v7, v8}, Lix;->V(FJ)J

    .line 517
    .line 518
    .line 519
    move-result-wide v7

    .line 520
    invoke-static {v3, v4, v7, v8}, Lix;->K(JJ)J

    .line 521
    .line 522
    .line 523
    move-result-wide v32

    .line 524
    invoke-static {v15, v13, v14}, Lix;->V(FJ)J

    .line 525
    .line 526
    .line 527
    move-result-wide v7

    .line 528
    invoke-static {v3, v4, v7, v8}, Lix;->K(JJ)J

    .line 529
    .line 530
    .line 531
    move-result-wide v34

    .line 532
    iget-wide v3, v5, Lla3;->b:J

    .line 533
    .line 534
    iget-wide v7, v5, Lla3;->a:J

    .line 535
    .line 536
    iget-wide v10, v5, Lla3;->i:J

    .line 537
    .line 538
    move-wide/from16 v28, v3

    .line 539
    .line 540
    move-wide/from16 v30, v7

    .line 541
    .line 542
    move-wide/from16 v36, v10

    .line 543
    .line 544
    move/from16 v26, v15

    .line 545
    .line 546
    invoke-static/range {v26 .. v38}, Lla3;->b(FFJJJJJF)Lcl0;

    .line 547
    .line 548
    .line 549
    move-result-object v1

    .line 550
    iget-wide v3, v5, Lla3;->b:J

    .line 551
    .line 552
    iget-wide v7, v5, Lla3;->c:J

    .line 553
    .line 554
    iget-wide v10, v5, Lla3;->i:J

    .line 555
    .line 556
    move-wide/from16 v27, v34

    .line 557
    .line 558
    move-wide/from16 v34, v32

    .line 559
    .line 560
    move-wide/from16 v32, v27

    .line 561
    .line 562
    move-wide/from16 v28, v3

    .line 563
    .line 564
    move/from16 v27, v6

    .line 565
    .line 566
    move-wide/from16 v30, v7

    .line 567
    .line 568
    move-wide/from16 v36, v10

    .line 569
    .line 570
    invoke-static/range {v26 .. v38}, Lla3;->b(FFJJJJJF)Lcl0;

    .line 571
    .line 572
    .line 573
    move-result-object v3

    .line 574
    invoke-virtual {v3}, Lcl0;->a()F

    .line 575
    .line 576
    .line 577
    move-result v26

    .line 578
    invoke-virtual {v3}, Lcl0;->b()F

    .line 579
    .line 580
    .line 581
    move-result v27

    .line 582
    iget-object v3, v3, Lcl0;->a:[F

    .line 583
    .line 584
    const/4 v4, 0x4

    .line 585
    aget v28, v3, v4

    .line 586
    .line 587
    const/4 v4, 0x5

    .line 588
    aget v29, v3, v4

    .line 589
    .line 590
    aget v30, v3, v19

    .line 591
    .line 592
    aget v31, v3, v17

    .line 593
    .line 594
    aget v32, v3, v18

    .line 595
    .line 596
    aget v33, v3, v24

    .line 597
    .line 598
    invoke-static/range {v26 .. v33}, Lis0;->a(FFFFFFFF)Lcl0;

    .line 599
    .line 600
    .line 601
    move-result-object v3

    .line 602
    iget-wide v6, v5, Lla3;->i:J

    .line 603
    .line 604
    invoke-static {v6, v7}, Lix;->x(J)F

    .line 605
    .line 606
    .line 607
    move-result v4

    .line 608
    iget-wide v5, v5, Lla3;->i:J

    .line 609
    .line 610
    invoke-static {v5, v6}, Lix;->y(J)F

    .line 611
    .line 612
    .line 613
    move-result v5

    .line 614
    invoke-virtual {v1}, Lcl0;->a()F

    .line 615
    .line 616
    .line 617
    move-result v6

    .line 618
    invoke-virtual {v1}, Lcl0;->b()F

    .line 619
    .line 620
    .line 621
    move-result v7

    .line 622
    iget-object v8, v3, Lcl0;->a:[F

    .line 623
    .line 624
    aget v10, v8, v18

    .line 625
    .line 626
    aget v8, v8, v24

    .line 627
    .line 628
    sub-float v11, v6, v4

    .line 629
    .line 630
    sub-float v12, v7, v5

    .line 631
    .line 632
    invoke-static {v11, v12}, Lk94;->b(FF)J

    .line 633
    .line 634
    .line 635
    move-result-wide v13

    .line 636
    sub-float v4, v10, v4

    .line 637
    .line 638
    sub-float v5, v8, v5

    .line 639
    .line 640
    move v15, v11

    .line 641
    move/from16 v17, v12

    .line 642
    .line 643
    invoke-static {v4, v5}, Lk94;->b(FF)J

    .line 644
    .line 645
    .line 646
    move-result-wide v11

    .line 647
    move-object/from16 v34, v2

    .line 648
    .line 649
    invoke-static {v13, v14}, Lix;->y(J)F

    .line 650
    .line 651
    .line 652
    move-result v2

    .line 653
    neg-float v2, v2

    .line 654
    move/from16 v26, v4

    .line 655
    .line 656
    invoke-static {v13, v14}, Lix;->x(J)F

    .line 657
    .line 658
    .line 659
    move-result v4

    .line 660
    invoke-static {v2, v4}, Lv71;->a(FF)J

    .line 661
    .line 662
    .line 663
    move-result-wide v27

    .line 664
    invoke-static {v11, v12}, Lix;->y(J)F

    .line 665
    .line 666
    .line 667
    move-result v2

    .line 668
    neg-float v2, v2

    .line 669
    invoke-static {v11, v12}, Lix;->x(J)F

    .line 670
    .line 671
    .line 672
    move-result v4

    .line 673
    invoke-static {v2, v4}, Lv71;->a(FF)J

    .line 674
    .line 675
    .line 676
    move-result-wide v29

    .line 677
    invoke-static/range {v27 .. v28}, Lix;->x(J)F

    .line 678
    .line 679
    .line 680
    move-result v2

    .line 681
    mul-float v2, v2, v26

    .line 682
    .line 683
    invoke-static/range {v27 .. v28}, Lix;->y(J)F

    .line 684
    .line 685
    .line 686
    move-result v4

    .line 687
    mul-float/2addr v4, v5

    .line 688
    add-float/2addr v4, v2

    .line 689
    cmpl-float v2, v4, p1

    .line 690
    .line 691
    if-ltz v2, :cond_c

    .line 692
    .line 693
    move/from16 v2, v24

    .line 694
    .line 695
    goto :goto_8

    .line 696
    :cond_c
    move/from16 v2, v18

    .line 697
    .line 698
    :goto_8
    invoke-static {v13, v14, v11, v12}, Lix;->p(JJ)F

    .line 699
    .line 700
    .line 701
    move-result v4

    .line 702
    const v5, 0x3f7fbe77    # 0.999f

    .line 703
    .line 704
    .line 705
    cmpl-float v5, v4, v5

    .line 706
    .line 707
    if-lez v5, :cond_d

    .line 708
    .line 709
    const v5, 0x3eaaaaab

    .line 710
    .line 711
    .line 712
    invoke-static {v6, v10, v5}, Lk94;->c(FFF)F

    .line 713
    .line 714
    .line 715
    move-result v28

    .line 716
    invoke-static {v7, v8, v5}, Lk94;->c(FFF)F

    .line 717
    .line 718
    .line 719
    move-result v29

    .line 720
    const v2, 0x3f2aaaab

    .line 721
    .line 722
    .line 723
    invoke-static {v6, v10, v2}, Lk94;->c(FFF)F

    .line 724
    .line 725
    .line 726
    move-result v30

    .line 727
    invoke-static {v7, v8, v2}, Lk94;->c(FFF)F

    .line 728
    .line 729
    .line 730
    move-result v31

    .line 731
    move/from16 v26, v6

    .line 732
    .line 733
    move/from16 v27, v7

    .line 734
    .line 735
    move/from16 v33, v8

    .line 736
    .line 737
    move/from16 v32, v10

    .line 738
    .line 739
    invoke-static/range {v26 .. v33}, Lis0;->a(FFFFFFFF)Lcl0;

    .line 740
    .line 741
    .line 742
    move-result-object v2

    .line 743
    goto :goto_a

    .line 744
    :cond_d
    move/from16 v26, v6

    .line 745
    .line 746
    move/from16 v33, v8

    .line 747
    .line 748
    move/from16 v32, v10

    .line 749
    .line 750
    move-wide/from16 v5, v27

    .line 751
    .line 752
    move/from16 v27, v7

    .line 753
    .line 754
    mul-float v11, v15, v15

    .line 755
    .line 756
    mul-float v12, v17, v17

    .line 757
    .line 758
    add-float/2addr v12, v11

    .line 759
    float-to-double v7, v12

    .line 760
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    .line 761
    .line 762
    .line 763
    move-result-wide v7

    .line 764
    double-to-float v7, v7

    .line 765
    const/high16 v8, 0x40800000    # 4.0f

    .line 766
    .line 767
    mul-float/2addr v7, v8

    .line 768
    const/high16 v8, 0x40400000    # 3.0f

    .line 769
    .line 770
    div-float/2addr v7, v8

    .line 771
    sub-float v8, v22, v4

    .line 772
    .line 773
    const/high16 v23, 0x40000000    # 2.0f

    .line 774
    .line 775
    mul-float v10, v23, v8

    .line 776
    .line 777
    float-to-double v10, v10

    .line 778
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    .line 779
    .line 780
    .line 781
    move-result-wide v10

    .line 782
    double-to-float v10, v10

    .line 783
    mul-float/2addr v4, v4

    .line 784
    sub-float v4, v22, v4

    .line 785
    .line 786
    float-to-double v11, v4

    .line 787
    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    .line 788
    .line 789
    .line 790
    move-result-wide v11

    .line 791
    double-to-float v4, v11

    .line 792
    sub-float/2addr v10, v4

    .line 793
    mul-float/2addr v10, v7

    .line 794
    div-float/2addr v10, v8

    .line 795
    if-eqz v2, :cond_e

    .line 796
    .line 797
    move/from16 v2, v22

    .line 798
    .line 799
    goto :goto_9

    .line 800
    :cond_e
    const/high16 v2, -0x40800000    # -1.0f

    .line 801
    .line 802
    :goto_9
    mul-float/2addr v10, v2

    .line 803
    invoke-static {v5, v6}, Lix;->x(J)F

    .line 804
    .line 805
    .line 806
    move-result v2

    .line 807
    mul-float/2addr v2, v10

    .line 808
    add-float v28, v2, v26

    .line 809
    .line 810
    invoke-static {v5, v6}, Lix;->y(J)F

    .line 811
    .line 812
    .line 813
    move-result v2

    .line 814
    mul-float/2addr v2, v10

    .line 815
    add-float v2, v2, v27

    .line 816
    .line 817
    invoke-static/range {v29 .. v30}, Lix;->x(J)F

    .line 818
    .line 819
    .line 820
    move-result v4

    .line 821
    mul-float/2addr v4, v10

    .line 822
    sub-float v4, v32, v4

    .line 823
    .line 824
    invoke-static/range {v29 .. v30}, Lix;->y(J)F

    .line 825
    .line 826
    .line 827
    move-result v5

    .line 828
    mul-float/2addr v5, v10

    .line 829
    sub-float v31, v33, v5

    .line 830
    .line 831
    move/from16 v29, v2

    .line 832
    .line 833
    move/from16 v30, v4

    .line 834
    .line 835
    invoke-static/range {v26 .. v33}, Lis0;->a(FFFFFFFF)Lcl0;

    .line 836
    .line 837
    .line 838
    move-result-object v2

    .line 839
    :goto_a
    filled-new-array {v1, v2, v3}, [Lcl0;

    .line 840
    .line 841
    .line 842
    move-result-object v1

    .line 843
    invoke-static {v1}, Ltv4;->F([Ljava/lang/Object;)Ljava/util/List;

    .line 844
    .line 845
    .line 846
    move-result-object v1

    .line 847
    :goto_b
    move-object/from16 v2, v21

    .line 848
    .line 849
    goto :goto_d

    .line 850
    :goto_c
    iput-wide v3, v5, Lla3;->i:J

    .line 851
    .line 852
    invoke-static {v3, v4}, Lix;->x(J)F

    .line 853
    .line 854
    .line 855
    move-result v1

    .line 856
    invoke-static {v3, v4}, Lix;->y(J)F

    .line 857
    .line 858
    .line 859
    move-result v2

    .line 860
    invoke-static {v3, v4}, Lix;->x(J)F

    .line 861
    .line 862
    .line 863
    move-result v5

    .line 864
    invoke-static {v3, v4}, Lix;->y(J)F

    .line 865
    .line 866
    .line 867
    move-result v3

    .line 868
    const v4, 0x3eaaaaab

    .line 869
    .line 870
    .line 871
    invoke-static {v1, v5, v4}, Lk94;->c(FFF)F

    .line 872
    .line 873
    .line 874
    move-result v28

    .line 875
    invoke-static {v2, v3, v4}, Lk94;->c(FFF)F

    .line 876
    .line 877
    .line 878
    move-result v29

    .line 879
    const v4, 0x3f2aaaab

    .line 880
    .line 881
    .line 882
    invoke-static {v1, v5, v4}, Lk94;->c(FFF)F

    .line 883
    .line 884
    .line 885
    move-result v30

    .line 886
    invoke-static {v2, v3, v4}, Lk94;->c(FFF)F

    .line 887
    .line 888
    .line 889
    move-result v31

    .line 890
    move/from16 v26, v1

    .line 891
    .line 892
    move/from16 v27, v2

    .line 893
    .line 894
    move/from16 v33, v3

    .line 895
    .line 896
    move/from16 v32, v5

    .line 897
    .line 898
    invoke-static/range {v26 .. v33}, Lis0;->a(FFFFFFFF)Lcl0;

    .line 899
    .line 900
    .line 901
    move-result-object v1

    .line 902
    invoke-static {v1}, Ltv4;->E(Ljava/lang/Object;)Ljava/util/List;

    .line 903
    .line 904
    .line 905
    move-result-object v1

    .line 906
    goto :goto_b

    .line 907
    :goto_d
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 908
    .line 909
    .line 910
    add-int/lit8 v1, v25, 0x1

    .line 911
    .line 912
    move/from16 v12, p1

    .line 913
    .line 914
    move-object v4, v2

    .line 915
    move-object/from16 v6, v16

    .line 916
    .line 917
    move/from16 v10, v18

    .line 918
    .line 919
    move/from16 v5, v19

    .line 920
    .line 921
    move/from16 v8, v20

    .line 922
    .line 923
    move/from16 v7, v24

    .line 924
    .line 925
    move-object/from16 v2, v34

    .line 926
    .line 927
    goto/16 :goto_6

    .line 928
    .line 929
    :cond_f
    invoke-static {v10}, Lmk0;->h(Ljava/lang/String;)V

    .line 930
    .line 931
    .line 932
    return-object v16

    .line 933
    :cond_10
    invoke-static {v10}, Lmk0;->h(Ljava/lang/String;)V

    .line 934
    .line 935
    .line 936
    return-object v16

    .line 937
    :cond_11
    move-object v2, v4

    .line 938
    move/from16 v19, v5

    .line 939
    .line 940
    move/from16 v24, v7

    .line 941
    .line 942
    move/from16 v20, v8

    .line 943
    .line 944
    move/from16 v18, v10

    .line 945
    .line 946
    move/from16 p1, v12

    .line 947
    .line 948
    new-instance v1, Ljava/util/ArrayList;

    .line 949
    .line 950
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 951
    .line 952
    .line 953
    move/from16 v3, v18

    .line 954
    .line 955
    :goto_e
    if-ge v3, v8, :cond_13

    .line 956
    .line 957
    add-int v4, v3, v8

    .line 958
    .line 959
    add-int/lit8 v4, v4, -0x1

    .line 960
    .line 961
    rem-int/2addr v4, v8

    .line 962
    add-int/lit8 v5, v3, 0x1

    .line 963
    .line 964
    rem-int v6, v5, v8

    .line 965
    .line 966
    mul-int/lit8 v7, v3, 0x2

    .line 967
    .line 968
    aget v10, v0, v7

    .line 969
    .line 970
    add-int/lit8 v7, v7, 0x1

    .line 971
    .line 972
    aget v7, v0, v7

    .line 973
    .line 974
    invoke-static {v10, v7}, Lv71;->a(FF)J

    .line 975
    .line 976
    .line 977
    move-result-wide v13

    .line 978
    mul-int/lit8 v4, v4, 0x2

    .line 979
    .line 980
    aget v7, v0, v4

    .line 981
    .line 982
    add-int/lit8 v4, v4, 0x1

    .line 983
    .line 984
    aget v4, v0, v4

    .line 985
    .line 986
    invoke-static {v7, v4}, Lv71;->a(FF)J

    .line 987
    .line 988
    .line 989
    move-result-wide v10

    .line 990
    mul-int/lit8 v4, v6, 0x2

    .line 991
    .line 992
    aget v7, v0, v4

    .line 993
    .line 994
    add-int/lit8 v4, v4, 0x1

    .line 995
    .line 996
    aget v4, v0, v4

    .line 997
    .line 998
    move/from16 v20, v5

    .line 999
    .line 1000
    invoke-static {v7, v4}, Lv71;->a(FF)J

    .line 1001
    .line 1002
    .line 1003
    move-result-wide v4

    .line 1004
    invoke-static {v13, v14, v10, v11}, Lix;->D(JJ)J

    .line 1005
    .line 1006
    .line 1007
    move-result-wide v10

    .line 1008
    invoke-static {v4, v5, v13, v14}, Lix;->D(JJ)J

    .line 1009
    .line 1010
    .line 1011
    move-result-wide v4

    .line 1012
    invoke-static {v10, v11}, Lix;->x(J)F

    .line 1013
    .line 1014
    .line 1015
    move-result v7

    .line 1016
    invoke-static {v4, v5}, Lix;->y(J)F

    .line 1017
    .line 1018
    .line 1019
    move-result v12

    .line 1020
    mul-float/2addr v12, v7

    .line 1021
    invoke-static {v10, v11}, Lix;->y(J)F

    .line 1022
    .line 1023
    .line 1024
    move-result v7

    .line 1025
    invoke-static {v4, v5}, Lix;->x(J)F

    .line 1026
    .line 1027
    .line 1028
    move-result v4

    .line 1029
    mul-float/2addr v4, v7

    .line 1030
    sub-float/2addr v12, v4

    .line 1031
    cmpl-float v4, v12, p1

    .line 1032
    .line 1033
    if-lez v4, :cond_12

    .line 1034
    .line 1035
    move/from16 v17, v24

    .line 1036
    .line 1037
    goto :goto_f

    .line 1038
    :cond_12
    move/from16 v17, v18

    .line 1039
    .line 1040
    :goto_f
    new-instance v11, Lu41;

    .line 1041
    .line 1042
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1043
    .line 1044
    .line 1045
    move-result-object v4

    .line 1046
    move-object v12, v4

    .line 1047
    check-cast v12, Ljava/util/List;

    .line 1048
    .line 1049
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1050
    .line 1051
    .line 1052
    move-result-object v4

    .line 1053
    check-cast v4, Lla3;

    .line 1054
    .line 1055
    iget-wide v4, v4, Lla3;->i:J

    .line 1056
    .line 1057
    move-wide v15, v4

    .line 1058
    invoke-direct/range {v11 .. v17}, Lu41;-><init>(Ljava/util/List;JJZ)V

    .line 1059
    .line 1060
    .line 1061
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1062
    .line 1063
    .line 1064
    new-instance v4, Lv41;

    .line 1065
    .line 1066
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1067
    .line 1068
    .line 1069
    move-result-object v5

    .line 1070
    check-cast v5, Ljava/util/List;

    .line 1071
    .line 1072
    invoke-static {v5}, Lo70;->o0(Ljava/util/List;)Ljava/lang/Object;

    .line 1073
    .line 1074
    .line 1075
    move-result-object v5

    .line 1076
    check-cast v5, Lcl0;

    .line 1077
    .line 1078
    invoke-virtual {v5}, Lcl0;->a()F

    .line 1079
    .line 1080
    .line 1081
    move-result v10

    .line 1082
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1083
    .line 1084
    .line 1085
    move-result-object v3

    .line 1086
    check-cast v3, Ljava/util/List;

    .line 1087
    .line 1088
    invoke-static {v3}, Lo70;->o0(Ljava/util/List;)Ljava/lang/Object;

    .line 1089
    .line 1090
    .line 1091
    move-result-object v3

    .line 1092
    check-cast v3, Lcl0;

    .line 1093
    .line 1094
    invoke-virtual {v3}, Lcl0;->b()F

    .line 1095
    .line 1096
    .line 1097
    move-result v11

    .line 1098
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1099
    .line 1100
    .line 1101
    move-result-object v3

    .line 1102
    check-cast v3, Ljava/util/List;

    .line 1103
    .line 1104
    invoke-static {v3}, Lo70;->h0(Ljava/util/List;)Ljava/lang/Object;

    .line 1105
    .line 1106
    .line 1107
    move-result-object v3

    .line 1108
    check-cast v3, Lcl0;

    .line 1109
    .line 1110
    iget-object v3, v3, Lcl0;->a:[F

    .line 1111
    .line 1112
    aget v3, v3, v18

    .line 1113
    .line 1114
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1115
    .line 1116
    .line 1117
    move-result-object v5

    .line 1118
    check-cast v5, Ljava/util/List;

    .line 1119
    .line 1120
    invoke-static {v5}, Lo70;->h0(Ljava/util/List;)Ljava/lang/Object;

    .line 1121
    .line 1122
    .line 1123
    move-result-object v5

    .line 1124
    check-cast v5, Lcl0;

    .line 1125
    .line 1126
    iget-object v5, v5, Lcl0;->a:[F

    .line 1127
    .line 1128
    aget v5, v5, v24

    .line 1129
    .line 1130
    const v6, 0x3eaaaaab

    .line 1131
    .line 1132
    .line 1133
    invoke-static {v10, v3, v6}, Lk94;->c(FFF)F

    .line 1134
    .line 1135
    .line 1136
    move-result v12

    .line 1137
    invoke-static {v11, v5, v6}, Lk94;->c(FFF)F

    .line 1138
    .line 1139
    .line 1140
    move-result v13

    .line 1141
    const v7, 0x3f2aaaab

    .line 1142
    .line 1143
    .line 1144
    invoke-static {v10, v3, v7}, Lk94;->c(FFF)F

    .line 1145
    .line 1146
    .line 1147
    move-result v14

    .line 1148
    invoke-static {v11, v5, v7}, Lk94;->c(FFF)F

    .line 1149
    .line 1150
    .line 1151
    move-result v15

    .line 1152
    move/from16 v16, v3

    .line 1153
    .line 1154
    move/from16 v17, v5

    .line 1155
    .line 1156
    invoke-static/range {v10 .. v17}, Lis0;->a(FFFFFFFF)Lcl0;

    .line 1157
    .line 1158
    .line 1159
    move-result-object v3

    .line 1160
    invoke-static {v3}, Ltv4;->E(Ljava/lang/Object;)Ljava/util/List;

    .line 1161
    .line 1162
    .line 1163
    move-result-object v3

    .line 1164
    invoke-direct {v4, v3}, Lw41;-><init>(Ljava/util/List;)V

    .line 1165
    .line 1166
    .line 1167
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1168
    .line 1169
    .line 1170
    move/from16 v3, v20

    .line 1171
    .line 1172
    goto/16 :goto_e

    .line 1173
    .line 1174
    :cond_13
    const/4 v2, 0x1

    .line 1175
    cmpg-float v3, p3, v2

    .line 1176
    .line 1177
    if-nez v3, :cond_14

    .line 1178
    .line 1179
    goto :goto_10

    .line 1180
    :cond_14
    cmpg-float v2, p4, v2

    .line 1181
    .line 1182
    if-nez v2, :cond_16

    .line 1183
    .line 1184
    :goto_10
    move/from16 v2, p1

    .line 1185
    .line 1186
    move v12, v2

    .line 1187
    move/from16 v10, v18

    .line 1188
    .line 1189
    :goto_11
    array-length v3, v0

    .line 1190
    if-ge v10, v3, :cond_15

    .line 1191
    .line 1192
    add-int/lit8 v3, v10, 0x1

    .line 1193
    .line 1194
    aget v4, v0, v10

    .line 1195
    .line 1196
    add-float/2addr v12, v4

    .line 1197
    add-int/lit8 v10, v10, 0x2

    .line 1198
    .line 1199
    aget v3, v0, v3

    .line 1200
    .line 1201
    add-float/2addr v2, v3

    .line 1202
    goto :goto_11

    .line 1203
    :cond_15
    array-length v3, v0

    .line 1204
    int-to-float v3, v3

    .line 1205
    div-float/2addr v12, v3

    .line 1206
    const/high16 v23, 0x40000000    # 2.0f

    .line 1207
    .line 1208
    div-float v12, v12, v23

    .line 1209
    .line 1210
    array-length v0, v0

    .line 1211
    int-to-float v0, v0

    .line 1212
    div-float/2addr v2, v0

    .line 1213
    div-float v2, v2, v23

    .line 1214
    .line 1215
    invoke-static {v12, v2}, Lv71;->a(FF)J

    .line 1216
    .line 1217
    .line 1218
    move-result-wide v2

    .line 1219
    goto :goto_12

    .line 1220
    :cond_16
    invoke-static/range {p3 .. p4}, Lv71;->a(FF)J

    .line 1221
    .line 1222
    .line 1223
    move-result-wide v2

    .line 1224
    :goto_12
    const/16 v0, 0x20

    .line 1225
    .line 1226
    shr-long v4, v2, v0

    .line 1227
    .line 1228
    long-to-int v0, v4

    .line 1229
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 1230
    .line 1231
    .line 1232
    move-result v0

    .line 1233
    const-wide v4, 0xffffffffL

    .line 1234
    .line 1235
    .line 1236
    .line 1237
    .line 1238
    and-long/2addr v2, v4

    .line 1239
    long-to-int v2, v2

    .line 1240
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 1241
    .line 1242
    .line 1243
    move-result v2

    .line 1244
    new-instance v3, Lpa3;

    .line 1245
    .line 1246
    invoke-direct {v3, v1, v0, v2}, Lpa3;-><init>(Ljava/util/AbstractList;FF)V

    .line 1247
    .line 1248
    .line 1249
    return-object v3

    .line 1250
    :cond_17
    move-object/from16 v16, v6

    .line 1251
    .line 1252
    const-string v0, "The vertices array should have even size"

    .line 1253
    .line 1254
    invoke-static {v0}, Lk21;->f(Ljava/lang/String;)V

    .line 1255
    .line 1256
    .line 1257
    return-object v16

    .line 1258
    :cond_18
    move-object/from16 v16, v6

    .line 1259
    .line 1260
    const-string v0, "Polygons must have at least 3 vertices"

    .line 1261
    .line 1262
    invoke-static {v0}, Lk21;->f(Ljava/lang/String;)V

    .line 1263
    .line 1264
    .line 1265
    return-object v16
.end method

.method public static final g(Lnd2;Ldf1;Ldf1;Ljl3;JJJJLka0;Lag1;I)V
    .locals 23

    .line 1
    move-object/from16 v9, p13

    .line 2
    .line 3
    move/from16 v14, p14

    .line 4
    .line 5
    const v0, -0x48a51b14

    .line 6
    .line 7
    .line 8
    invoke-virtual {v9, v0}, Lag1;->X(I)Lag1;

    .line 9
    .line 10
    .line 11
    and-int/lit8 v0, v14, 0x6

    .line 12
    .line 13
    move-object/from16 v1, p0

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v9, v1}, Lag1;->f(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x4

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x2

    .line 26
    :goto_0
    or-int/2addr v0, v14

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move v0, v14

    .line 29
    :goto_1
    and-int/lit8 v2, v14, 0x30

    .line 30
    .line 31
    if-nez v2, :cond_3

    .line 32
    .line 33
    move-object/from16 v2, p1

    .line 34
    .line 35
    invoke-virtual {v9, v2}, Lag1;->h(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_2

    .line 40
    .line 41
    const/16 v3, 0x20

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_2
    const/16 v3, 0x10

    .line 45
    .line 46
    :goto_2
    or-int/2addr v0, v3

    .line 47
    goto :goto_3

    .line 48
    :cond_3
    move-object/from16 v2, p1

    .line 49
    .line 50
    :goto_3
    and-int/lit16 v3, v14, 0x180

    .line 51
    .line 52
    if-nez v3, :cond_5

    .line 53
    .line 54
    move-object/from16 v3, p2

    .line 55
    .line 56
    invoke-virtual {v9, v3}, Lag1;->h(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_4

    .line 61
    .line 62
    const/16 v4, 0x100

    .line 63
    .line 64
    goto :goto_4

    .line 65
    :cond_4
    const/16 v4, 0x80

    .line 66
    .line 67
    :goto_4
    or-int/2addr v0, v4

    .line 68
    goto :goto_5

    .line 69
    :cond_5
    move-object/from16 v3, p2

    .line 70
    .line 71
    :goto_5
    and-int/lit16 v4, v14, 0xc00

    .line 72
    .line 73
    const/4 v5, 0x0

    .line 74
    if-nez v4, :cond_7

    .line 75
    .line 76
    invoke-virtual {v9, v5}, Lag1;->g(Z)Z

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    if-eqz v4, :cond_6

    .line 81
    .line 82
    const/16 v4, 0x800

    .line 83
    .line 84
    goto :goto_6

    .line 85
    :cond_6
    const/16 v4, 0x400

    .line 86
    .line 87
    :goto_6
    or-int/2addr v0, v4

    .line 88
    :cond_7
    and-int/lit16 v4, v14, 0x6000

    .line 89
    .line 90
    if-nez v4, :cond_9

    .line 91
    .line 92
    move-object/from16 v4, p3

    .line 93
    .line 94
    invoke-virtual {v9, v4}, Lag1;->f(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v6

    .line 98
    if-eqz v6, :cond_8

    .line 99
    .line 100
    const/16 v6, 0x4000

    .line 101
    .line 102
    goto :goto_7

    .line 103
    :cond_8
    const/16 v6, 0x2000

    .line 104
    .line 105
    :goto_7
    or-int/2addr v0, v6

    .line 106
    goto :goto_8

    .line 107
    :cond_9
    move-object/from16 v4, p3

    .line 108
    .line 109
    :goto_8
    const/high16 v6, 0x30000

    .line 110
    .line 111
    and-int/2addr v6, v14

    .line 112
    if-nez v6, :cond_b

    .line 113
    .line 114
    move-wide/from16 v6, p4

    .line 115
    .line 116
    invoke-virtual {v9, v6, v7}, Lag1;->e(J)Z

    .line 117
    .line 118
    .line 119
    move-result v8

    .line 120
    if-eqz v8, :cond_a

    .line 121
    .line 122
    const/high16 v8, 0x20000

    .line 123
    .line 124
    goto :goto_9

    .line 125
    :cond_a
    const/high16 v8, 0x10000

    .line 126
    .line 127
    :goto_9
    or-int/2addr v0, v8

    .line 128
    goto :goto_a

    .line 129
    :cond_b
    move-wide/from16 v6, p4

    .line 130
    .line 131
    :goto_a
    const/high16 v8, 0x180000

    .line 132
    .line 133
    and-int/2addr v8, v14

    .line 134
    move-wide/from16 v10, p6

    .line 135
    .line 136
    if-nez v8, :cond_d

    .line 137
    .line 138
    invoke-virtual {v9, v10, v11}, Lag1;->e(J)Z

    .line 139
    .line 140
    .line 141
    move-result v8

    .line 142
    if-eqz v8, :cond_c

    .line 143
    .line 144
    const/high16 v8, 0x100000

    .line 145
    .line 146
    goto :goto_b

    .line 147
    :cond_c
    const/high16 v8, 0x80000

    .line 148
    .line 149
    :goto_b
    or-int/2addr v0, v8

    .line 150
    :cond_d
    const/high16 v8, 0xc00000

    .line 151
    .line 152
    and-int/2addr v8, v14

    .line 153
    move-wide/from16 v12, p8

    .line 154
    .line 155
    if-nez v8, :cond_f

    .line 156
    .line 157
    invoke-virtual {v9, v12, v13}, Lag1;->e(J)Z

    .line 158
    .line 159
    .line 160
    move-result v8

    .line 161
    if-eqz v8, :cond_e

    .line 162
    .line 163
    const/high16 v8, 0x800000

    .line 164
    .line 165
    goto :goto_c

    .line 166
    :cond_e
    const/high16 v8, 0x400000

    .line 167
    .line 168
    :goto_c
    or-int/2addr v0, v8

    .line 169
    :cond_f
    const/high16 v8, 0x6000000

    .line 170
    .line 171
    and-int/2addr v8, v14

    .line 172
    move-wide/from16 v5, p10

    .line 173
    .line 174
    if-nez v8, :cond_11

    .line 175
    .line 176
    invoke-virtual {v9, v5, v6}, Lag1;->e(J)Z

    .line 177
    .line 178
    .line 179
    move-result v7

    .line 180
    if-eqz v7, :cond_10

    .line 181
    .line 182
    const/high16 v7, 0x4000000

    .line 183
    .line 184
    goto :goto_d

    .line 185
    :cond_10
    const/high16 v7, 0x2000000

    .line 186
    .line 187
    :goto_d
    or-int/2addr v0, v7

    .line 188
    :cond_11
    const/high16 v7, 0x30000000

    .line 189
    .line 190
    and-int/2addr v7, v14

    .line 191
    if-nez v7, :cond_13

    .line 192
    .line 193
    move-object/from16 v7, p12

    .line 194
    .line 195
    invoke-virtual {v9, v7}, Lag1;->h(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v15

    .line 199
    if-eqz v15, :cond_12

    .line 200
    .line 201
    const/high16 v15, 0x20000000

    .line 202
    .line 203
    goto :goto_e

    .line 204
    :cond_12
    const/high16 v15, 0x10000000

    .line 205
    .line 206
    :goto_e
    or-int/2addr v0, v15

    .line 207
    goto :goto_f

    .line 208
    :cond_13
    move-object/from16 v7, p12

    .line 209
    .line 210
    :goto_f
    const v15, 0x12492493

    .line 211
    .line 212
    .line 213
    and-int/2addr v15, v0

    .line 214
    const v8, 0x12492492

    .line 215
    .line 216
    .line 217
    if-eq v15, v8, :cond_14

    .line 218
    .line 219
    const/4 v8, 0x1

    .line 220
    goto :goto_10

    .line 221
    :cond_14
    const/4 v8, 0x0

    .line 222
    :goto_10
    and-int/lit8 v15, v0, 0x1

    .line 223
    .line 224
    invoke-virtual {v9, v15, v8}, Lag1;->N(IZ)Z

    .line 225
    .line 226
    .line 227
    move-result v8

    .line 228
    if-eqz v8, :cond_17

    .line 229
    .line 230
    invoke-virtual {v9}, Lag1;->S()V

    .line 231
    .line 232
    .line 233
    and-int/lit8 v8, v14, 0x1

    .line 234
    .line 235
    if-eqz v8, :cond_16

    .line 236
    .line 237
    invoke-virtual {v9}, Lag1;->x()Z

    .line 238
    .line 239
    .line 240
    move-result v8

    .line 241
    if-eqz v8, :cond_15

    .line 242
    .line 243
    goto :goto_11

    .line 244
    :cond_15
    invoke-virtual {v9}, Lag1;->Q()V

    .line 245
    .line 246
    .line 247
    :cond_16
    :goto_11
    invoke-virtual {v9}, Lag1;->q()V

    .line 248
    .line 249
    .line 250
    sget v6, Lmt1;->f:F

    .line 251
    .line 252
    new-instance v15, Lvj2;

    .line 253
    .line 254
    move-wide/from16 v21, p10

    .line 255
    .line 256
    move-object/from16 v16, v2

    .line 257
    .line 258
    move-object/from16 v18, v3

    .line 259
    .line 260
    move-object/from16 v17, v7

    .line 261
    .line 262
    move-wide/from16 v19, v12

    .line 263
    .line 264
    invoke-direct/range {v15 .. v22}, Lvj2;-><init>(Ldf1;Lka0;Ldf1;JJ)V

    .line 265
    .line 266
    .line 267
    const v2, -0x5014900f

    .line 268
    .line 269
    .line 270
    invoke-static {v2, v15, v9}, Lqj0;->U(ILef1;Lag1;)Lka0;

    .line 271
    .line 272
    .line 273
    move-result-object v8

    .line 274
    and-int/lit8 v2, v0, 0xe

    .line 275
    .line 276
    const/high16 v3, 0xc30000

    .line 277
    .line 278
    or-int/2addr v2, v3

    .line 279
    shr-int/lit8 v0, v0, 0x9

    .line 280
    .line 281
    and-int/lit8 v3, v0, 0x70

    .line 282
    .line 283
    or-int/2addr v2, v3

    .line 284
    and-int/lit16 v3, v0, 0x380

    .line 285
    .line 286
    or-int/2addr v2, v3

    .line 287
    and-int/lit16 v0, v0, 0x1c00

    .line 288
    .line 289
    or-int/2addr v0, v2

    .line 290
    const/16 v11, 0x50

    .line 291
    .line 292
    const/4 v7, 0x0

    .line 293
    move-wide/from16 v2, p4

    .line 294
    .line 295
    move v10, v0

    .line 296
    move-object v0, v1

    .line 297
    move-object v1, v4

    .line 298
    move-wide/from16 v4, p6

    .line 299
    .line 300
    invoke-static/range {v0 .. v11}, Lwu3;->a(Lnd2;Ljl3;JJFLfx;Lka0;Lag1;II)V

    .line 301
    .line 302
    .line 303
    goto :goto_12

    .line 304
    :cond_17
    invoke-virtual/range {p13 .. p13}, Lag1;->Q()V

    .line 305
    .line 306
    .line 307
    :goto_12
    invoke-virtual/range {p13 .. p13}, Lag1;->r()Lc33;

    .line 308
    .line 309
    .line 310
    move-result-object v15

    .line 311
    if-eqz v15, :cond_18

    .line 312
    .line 313
    new-instance v0, Lko3;

    .line 314
    .line 315
    move-object/from16 v1, p0

    .line 316
    .line 317
    move-object/from16 v2, p1

    .line 318
    .line 319
    move-object/from16 v3, p2

    .line 320
    .line 321
    move-object/from16 v4, p3

    .line 322
    .line 323
    move-wide/from16 v5, p4

    .line 324
    .line 325
    move-wide/from16 v7, p6

    .line 326
    .line 327
    move-wide/from16 v9, p8

    .line 328
    .line 329
    move-wide/from16 v11, p10

    .line 330
    .line 331
    move-object/from16 v13, p12

    .line 332
    .line 333
    invoke-direct/range {v0 .. v14}, Lko3;-><init>(Lnd2;Ldf1;Ldf1;Ljl3;JJJJLka0;I)V

    .line 334
    .line 335
    .line 336
    iput-object v0, v15, Lc33;->d:Ldf1;

    .line 337
    .line 338
    :cond_18
    return-void
.end method

.method public static final h(Lfo3;Lnd2;Ljl3;JJJJJLag1;I)V
    .locals 24

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v15, p13

    .line 4
    .line 5
    move/from16 v0, p14

    .line 6
    .line 7
    const v2, 0x105e641f

    .line 8
    .line 9
    .line 10
    invoke-virtual {v15, v2}, Lag1;->X(I)Lag1;

    .line 11
    .line 12
    .line 13
    and-int/lit8 v2, v0, 0x6

    .line 14
    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    invoke-virtual {v15, v1}, Lag1;->f(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    const/4 v2, 0x4

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v2, 0x2

    .line 26
    :goto_0
    or-int/2addr v2, v0

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move v2, v0

    .line 29
    :goto_1
    or-int/lit16 v3, v2, 0x1b0

    .line 30
    .line 31
    and-int/lit16 v4, v0, 0xc00

    .line 32
    .line 33
    if-nez v4, :cond_2

    .line 34
    .line 35
    or-int/lit16 v3, v2, 0x5b0

    .line 36
    .line 37
    :cond_2
    and-int/lit16 v2, v0, 0x6000

    .line 38
    .line 39
    if-nez v2, :cond_3

    .line 40
    .line 41
    or-int/lit16 v3, v3, 0x2000

    .line 42
    .line 43
    :cond_3
    const/high16 v2, 0x30000

    .line 44
    .line 45
    and-int/2addr v2, v0

    .line 46
    if-nez v2, :cond_4

    .line 47
    .line 48
    const/high16 v2, 0x10000

    .line 49
    .line 50
    or-int/2addr v3, v2

    .line 51
    :cond_4
    const/high16 v2, 0x180000

    .line 52
    .line 53
    and-int/2addr v2, v0

    .line 54
    if-nez v2, :cond_5

    .line 55
    .line 56
    const/high16 v2, 0x80000

    .line 57
    .line 58
    or-int/2addr v3, v2

    .line 59
    :cond_5
    const/high16 v2, 0xc00000

    .line 60
    .line 61
    and-int/2addr v2, v0

    .line 62
    if-nez v2, :cond_6

    .line 63
    .line 64
    const/high16 v2, 0x400000

    .line 65
    .line 66
    or-int/2addr v3, v2

    .line 67
    :cond_6
    const/high16 v2, 0x6000000

    .line 68
    .line 69
    and-int/2addr v2, v0

    .line 70
    if-nez v2, :cond_7

    .line 71
    .line 72
    const/high16 v2, 0x2000000

    .line 73
    .line 74
    or-int/2addr v3, v2

    .line 75
    :cond_7
    const v2, 0x2492493

    .line 76
    .line 77
    .line 78
    and-int/2addr v2, v3

    .line 79
    const v4, 0x2492492

    .line 80
    .line 81
    .line 82
    const/4 v5, 0x0

    .line 83
    if-eq v2, v4, :cond_8

    .line 84
    .line 85
    const/4 v2, 0x1

    .line 86
    goto :goto_2

    .line 87
    :cond_8
    move v2, v5

    .line 88
    :goto_2
    and-int/lit8 v4, v3, 0x1

    .line 89
    .line 90
    invoke-virtual {v15, v4, v2}, Lag1;->N(IZ)Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-eqz v2, :cond_b

    .line 95
    .line 96
    invoke-virtual {v15}, Lag1;->S()V

    .line 97
    .line 98
    .line 99
    and-int/lit8 v2, v0, 0x1

    .line 100
    .line 101
    const v4, -0xffffc01

    .line 102
    .line 103
    .line 104
    if-eqz v2, :cond_a

    .line 105
    .line 106
    invoke-virtual {v15}, Lag1;->x()Z

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    if-eqz v2, :cond_9

    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_9
    invoke-virtual {v15}, Lag1;->Q()V

    .line 114
    .line 115
    .line 116
    and-int v2, v3, v4

    .line 117
    .line 118
    move-object/from16 v3, p2

    .line 119
    .line 120
    move-wide/from16 v7, p3

    .line 121
    .line 122
    move-wide/from16 v9, p5

    .line 123
    .line 124
    move-wide/from16 v17, p7

    .line 125
    .line 126
    move-wide/from16 v11, p9

    .line 127
    .line 128
    move-wide/from16 v13, p11

    .line 129
    .line 130
    move v4, v2

    .line 131
    move-object/from16 v2, p1

    .line 132
    .line 133
    goto :goto_4

    .line 134
    :cond_a
    :goto_3
    sget-object v2, Lmt1;->g:Lll3;

    .line 135
    .line 136
    invoke-static {v2, v15}, Lol3;->a(Lll3;Lag1;)Ljl3;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    sget-object v7, Lmt1;->e:Lz70;

    .line 141
    .line 142
    invoke-static {v7, v15}, La80;->d(Lz70;Lag1;)J

    .line 143
    .line 144
    .line 145
    move-result-wide v7

    .line 146
    sget-object v9, Lmt1;->i:Lz70;

    .line 147
    .line 148
    invoke-static {v9, v15}, La80;->d(Lz70;Lag1;)J

    .line 149
    .line 150
    .line 151
    move-result-wide v9

    .line 152
    sget-object v11, Lmt1;->c:Lz70;

    .line 153
    .line 154
    invoke-static {v11, v15}, La80;->d(Lz70;Lag1;)J

    .line 155
    .line 156
    .line 157
    move-result-wide v12

    .line 158
    invoke-static {v11, v15}, La80;->d(Lz70;Lag1;)J

    .line 159
    .line 160
    .line 161
    move-result-wide v16

    .line 162
    sget-object v11, Lmt1;->h:Lz70;

    .line 163
    .line 164
    invoke-static {v11, v15}, La80;->d(Lz70;Lag1;)J

    .line 165
    .line 166
    .line 167
    move-result-wide v18

    .line 168
    and-int/2addr v3, v4

    .line 169
    sget-object v4, Lkd2;->b:Lkd2;

    .line 170
    .line 171
    move v11, v3

    .line 172
    move-object v3, v2

    .line 173
    move-object v2, v4

    .line 174
    move v4, v11

    .line 175
    move-wide/from16 v20, v16

    .line 176
    .line 177
    move-wide/from16 v22, v18

    .line 178
    .line 179
    move-wide/from16 v17, v12

    .line 180
    .line 181
    move-wide/from16 v11, v20

    .line 182
    .line 183
    move-wide/from16 v13, v22

    .line 184
    .line 185
    :goto_4
    invoke-virtual {v15}, Lag1;->q()V

    .line 186
    .line 187
    .line 188
    iget-object v6, v1, Lfo3;->a:Lgo3;

    .line 189
    .line 190
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 191
    .line 192
    .line 193
    const v6, -0x278ca5d9

    .line 194
    .line 195
    .line 196
    invoke-virtual {v15, v6}, Lag1;->W(I)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v15, v5}, Lag1;->p(Z)V

    .line 200
    .line 201
    .line 202
    iget-object v6, v1, Lfo3;->a:Lgo3;

    .line 203
    .line 204
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 205
    .line 206
    .line 207
    const v6, -0x277d5c19

    .line 208
    .line 209
    .line 210
    invoke-virtual {v15, v6}, Lag1;->W(I)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v15, v5}, Lag1;->p(Z)V

    .line 214
    .line 215
    .line 216
    const/high16 v5, 0x41400000    # 12.0f

    .line 217
    .line 218
    invoke-static {v2, v5}, Lis0;->K(Lnd2;F)Lnd2;

    .line 219
    .line 220
    .line 221
    move-result-object v5

    .line 222
    new-instance v6, Leo3;

    .line 223
    .line 224
    const/4 v0, 0x1

    .line 225
    invoke-direct {v6, v1, v0}, Leo3;-><init>(Lfo3;I)V

    .line 226
    .line 227
    .line 228
    const v0, -0x4b7b9086

    .line 229
    .line 230
    .line 231
    invoke-static {v0, v6, v15}, Lqj0;->U(ILef1;Lag1;)Lka0;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    shl-int/lit8 v4, v4, 0x3

    .line 236
    .line 237
    and-int/lit16 v4, v4, 0x1c00

    .line 238
    .line 239
    const/high16 v6, 0x30000000

    .line 240
    .line 241
    or-int v16, v4, v6

    .line 242
    .line 243
    move-object v4, v2

    .line 244
    move-object v2, v5

    .line 245
    move-object v5, v3

    .line 246
    const/4 v3, 0x0

    .line 247
    move-object v6, v4

    .line 248
    move-object v4, v3

    .line 249
    move-wide/from16 v20, v13

    .line 250
    .line 251
    move-object v14, v0

    .line 252
    move-object v0, v6

    .line 253
    move-wide v6, v7

    .line 254
    move-wide v8, v9

    .line 255
    move-wide v10, v11

    .line 256
    move-wide/from16 v12, v20

    .line 257
    .line 258
    invoke-static/range {v2 .. v16}, Lc75;->g(Lnd2;Ldf1;Ldf1;Ljl3;JJJJLka0;Lag1;I)V

    .line 259
    .line 260
    .line 261
    move-object v2, v0

    .line 262
    move-object v3, v5

    .line 263
    move-wide v4, v6

    .line 264
    move-wide v6, v8

    .line 265
    move-wide/from16 v8, v17

    .line 266
    .line 267
    goto :goto_5

    .line 268
    :cond_b
    invoke-virtual/range {p13 .. p13}, Lag1;->Q()V

    .line 269
    .line 270
    .line 271
    move-object/from16 v2, p1

    .line 272
    .line 273
    move-object/from16 v3, p2

    .line 274
    .line 275
    move-wide/from16 v4, p3

    .line 276
    .line 277
    move-wide/from16 v6, p5

    .line 278
    .line 279
    move-wide/from16 v8, p7

    .line 280
    .line 281
    move-wide/from16 v10, p9

    .line 282
    .line 283
    move-wide/from16 v12, p11

    .line 284
    .line 285
    :goto_5
    invoke-virtual/range {p13 .. p13}, Lag1;->r()Lc33;

    .line 286
    .line 287
    .line 288
    move-result-object v15

    .line 289
    if-eqz v15, :cond_c

    .line 290
    .line 291
    new-instance v0, Ljo3;

    .line 292
    .line 293
    move/from16 v14, p14

    .line 294
    .line 295
    invoke-direct/range {v0 .. v14}, Ljo3;-><init>(Lfo3;Lnd2;Ljl3;JJJJJI)V

    .line 296
    .line 297
    .line 298
    iput-object v0, v15, Lc33;->d:Ldf1;

    .line 299
    .line 300
    :cond_c
    return-void
.end method

.method public static final i(FFFFLb80;)J
    .locals 17

    .line 1
    move/from16 v0, p3

    .line 2
    .line 3
    invoke-virtual/range {p4 .. p4}, Lb80;->c()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/16 v2, 0x20

    .line 8
    .line 9
    const/16 v3, 0x10

    .line 10
    .line 11
    const/high16 v4, 0x3f000000    # 0.5f

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    const/high16 v1, 0x437f0000    # 255.0f

    .line 16
    .line 17
    mul-float/2addr v0, v1

    .line 18
    add-float/2addr v0, v4

    .line 19
    float-to-int v0, v0

    .line 20
    shl-int/lit8 v0, v0, 0x18

    .line 21
    .line 22
    mul-float v5, p0, v1

    .line 23
    .line 24
    add-float/2addr v5, v4

    .line 25
    float-to-int v5, v5

    .line 26
    shl-int/lit8 v3, v5, 0x10

    .line 27
    .line 28
    or-int/2addr v0, v3

    .line 29
    mul-float v3, p1, v1

    .line 30
    .line 31
    add-float/2addr v3, v4

    .line 32
    float-to-int v3, v3

    .line 33
    shl-int/lit8 v3, v3, 0x8

    .line 34
    .line 35
    or-int/2addr v0, v3

    .line 36
    mul-float v1, v1, p2

    .line 37
    .line 38
    add-float/2addr v1, v4

    .line 39
    float-to-int v1, v1

    .line 40
    or-int/2addr v0, v1

    .line 41
    int-to-long v0, v0

    .line 42
    shl-long/2addr v0, v2

    .line 43
    sget v2, Lt70;->g:I

    .line 44
    .line 45
    return-wide v0

    .line 46
    :cond_0
    invoke-static/range {p0 .. p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    ushr-int/lit8 v5, v1, 0x1f

    .line 51
    .line 52
    ushr-int/lit8 v6, v1, 0x17

    .line 53
    .line 54
    const/16 v7, 0xff

    .line 55
    .line 56
    and-int/2addr v6, v7

    .line 57
    const v8, 0x7fffff

    .line 58
    .line 59
    .line 60
    and-int v9, v1, v8

    .line 61
    .line 62
    const/high16 v10, 0x800000

    .line 63
    .line 64
    const/16 v11, -0xa

    .line 65
    .line 66
    const/16 v12, 0x31

    .line 67
    .line 68
    const/16 v13, 0x200

    .line 69
    .line 70
    const/4 v14, 0x0

    .line 71
    const/16 v15, 0x1f

    .line 72
    .line 73
    if-ne v6, v7, :cond_2

    .line 74
    .line 75
    if-eqz v9, :cond_1

    .line 76
    .line 77
    move v1, v13

    .line 78
    goto :goto_0

    .line 79
    :cond_1
    move v1, v14

    .line 80
    :goto_0
    move v6, v15

    .line 81
    goto :goto_2

    .line 82
    :cond_2
    add-int/lit8 v6, v6, -0x70

    .line 83
    .line 84
    if-lt v6, v15, :cond_3

    .line 85
    .line 86
    move v6, v12

    .line 87
    move v1, v14

    .line 88
    goto :goto_2

    .line 89
    :cond_3
    if-gtz v6, :cond_6

    .line 90
    .line 91
    if-lt v6, v11, :cond_5

    .line 92
    .line 93
    or-int v1, v9, v10

    .line 94
    .line 95
    rsub-int/lit8 v6, v6, 0x1

    .line 96
    .line 97
    shr-int/2addr v1, v6

    .line 98
    and-int/lit16 v6, v1, 0x1000

    .line 99
    .line 100
    if-eqz v6, :cond_4

    .line 101
    .line 102
    add-int/lit16 v1, v1, 0x2000

    .line 103
    .line 104
    :cond_4
    shr-int/lit8 v1, v1, 0xd

    .line 105
    .line 106
    move v6, v14

    .line 107
    goto :goto_2

    .line 108
    :cond_5
    move v1, v14

    .line 109
    move v6, v1

    .line 110
    goto :goto_2

    .line 111
    :cond_6
    shr-int/lit8 v9, v9, 0xd

    .line 112
    .line 113
    and-int/lit16 v1, v1, 0x1000

    .line 114
    .line 115
    if-eqz v1, :cond_7

    .line 116
    .line 117
    shl-int/lit8 v1, v6, 0xa

    .line 118
    .line 119
    or-int/2addr v1, v9

    .line 120
    add-int/lit8 v1, v1, 0x1

    .line 121
    .line 122
    shl-int/lit8 v5, v5, 0xf

    .line 123
    .line 124
    or-int/2addr v1, v5

    .line 125
    :goto_1
    int-to-short v1, v1

    .line 126
    goto :goto_3

    .line 127
    :cond_7
    move v1, v9

    .line 128
    :goto_2
    shl-int/lit8 v5, v5, 0xf

    .line 129
    .line 130
    shl-int/lit8 v6, v6, 0xa

    .line 131
    .line 132
    or-int/2addr v5, v6

    .line 133
    or-int/2addr v1, v5

    .line 134
    goto :goto_1

    .line 135
    :goto_3
    invoke-static/range {p1 .. p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 136
    .line 137
    .line 138
    move-result v5

    .line 139
    ushr-int/lit8 v6, v5, 0x1f

    .line 140
    .line 141
    ushr-int/lit8 v9, v5, 0x17

    .line 142
    .line 143
    and-int/2addr v9, v7

    .line 144
    and-int v16, v5, v8

    .line 145
    .line 146
    if-ne v9, v7, :cond_9

    .line 147
    .line 148
    if-eqz v16, :cond_8

    .line 149
    .line 150
    move v5, v13

    .line 151
    goto :goto_4

    .line 152
    :cond_8
    move v5, v14

    .line 153
    :goto_4
    move v9, v15

    .line 154
    goto :goto_6

    .line 155
    :cond_9
    add-int/lit8 v9, v9, -0x70

    .line 156
    .line 157
    if-lt v9, v15, :cond_a

    .line 158
    .line 159
    move v9, v12

    .line 160
    move v5, v14

    .line 161
    goto :goto_6

    .line 162
    :cond_a
    if-gtz v9, :cond_d

    .line 163
    .line 164
    if-lt v9, v11, :cond_c

    .line 165
    .line 166
    or-int v5, v16, v10

    .line 167
    .line 168
    rsub-int/lit8 v9, v9, 0x1

    .line 169
    .line 170
    shr-int/2addr v5, v9

    .line 171
    and-int/lit16 v9, v5, 0x1000

    .line 172
    .line 173
    if-eqz v9, :cond_b

    .line 174
    .line 175
    add-int/lit16 v5, v5, 0x2000

    .line 176
    .line 177
    :cond_b
    shr-int/lit8 v5, v5, 0xd

    .line 178
    .line 179
    move v9, v14

    .line 180
    goto :goto_6

    .line 181
    :cond_c
    move v5, v14

    .line 182
    move v9, v5

    .line 183
    goto :goto_6

    .line 184
    :cond_d
    shr-int/lit8 v16, v16, 0xd

    .line 185
    .line 186
    and-int/lit16 v5, v5, 0x1000

    .line 187
    .line 188
    if-eqz v5, :cond_e

    .line 189
    .line 190
    shl-int/lit8 v5, v9, 0xa

    .line 191
    .line 192
    or-int v5, v5, v16

    .line 193
    .line 194
    add-int/lit8 v5, v5, 0x1

    .line 195
    .line 196
    shl-int/lit8 v6, v6, 0xf

    .line 197
    .line 198
    or-int/2addr v5, v6

    .line 199
    :goto_5
    int-to-short v5, v5

    .line 200
    goto :goto_7

    .line 201
    :cond_e
    move/from16 v5, v16

    .line 202
    .line 203
    :goto_6
    shl-int/lit8 v6, v6, 0xf

    .line 204
    .line 205
    shl-int/lit8 v9, v9, 0xa

    .line 206
    .line 207
    or-int/2addr v6, v9

    .line 208
    or-int/2addr v5, v6

    .line 209
    goto :goto_5

    .line 210
    :goto_7
    invoke-static/range {p2 .. p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 211
    .line 212
    .line 213
    move-result v6

    .line 214
    ushr-int/lit8 v9, v6, 0x1f

    .line 215
    .line 216
    move/from16 v16, v2

    .line 217
    .line 218
    ushr-int/lit8 v2, v6, 0x17

    .line 219
    .line 220
    and-int/2addr v2, v7

    .line 221
    and-int/2addr v8, v6

    .line 222
    if-ne v2, v7, :cond_10

    .line 223
    .line 224
    if-eqz v8, :cond_f

    .line 225
    .line 226
    goto :goto_8

    .line 227
    :cond_f
    move v13, v14

    .line 228
    :goto_8
    move v14, v13

    .line 229
    move v12, v15

    .line 230
    goto :goto_a

    .line 231
    :cond_10
    add-int/lit8 v2, v2, -0x70

    .line 232
    .line 233
    if-lt v2, v15, :cond_11

    .line 234
    .line 235
    goto :goto_a

    .line 236
    :cond_11
    if-gtz v2, :cond_14

    .line 237
    .line 238
    if-lt v2, v11, :cond_13

    .line 239
    .line 240
    or-int v6, v8, v10

    .line 241
    .line 242
    rsub-int/lit8 v2, v2, 0x1

    .line 243
    .line 244
    shr-int v2, v6, v2

    .line 245
    .line 246
    and-int/lit16 v6, v2, 0x1000

    .line 247
    .line 248
    if-eqz v6, :cond_12

    .line 249
    .line 250
    add-int/lit16 v2, v2, 0x2000

    .line 251
    .line 252
    :cond_12
    shr-int/lit8 v2, v2, 0xd

    .line 253
    .line 254
    move v12, v14

    .line 255
    move v14, v2

    .line 256
    goto :goto_a

    .line 257
    :cond_13
    move v12, v14

    .line 258
    goto :goto_a

    .line 259
    :cond_14
    shr-int/lit8 v14, v8, 0xd

    .line 260
    .line 261
    and-int/lit16 v6, v6, 0x1000

    .line 262
    .line 263
    if-eqz v6, :cond_15

    .line 264
    .line 265
    shl-int/lit8 v2, v2, 0xa

    .line 266
    .line 267
    or-int/2addr v2, v14

    .line 268
    add-int/lit8 v2, v2, 0x1

    .line 269
    .line 270
    shl-int/lit8 v6, v9, 0xf

    .line 271
    .line 272
    or-int/2addr v2, v6

    .line 273
    :goto_9
    int-to-short v2, v2

    .line 274
    goto :goto_b

    .line 275
    :cond_15
    move v12, v2

    .line 276
    :goto_a
    shl-int/lit8 v2, v9, 0xf

    .line 277
    .line 278
    shl-int/lit8 v6, v12, 0xa

    .line 279
    .line 280
    or-int/2addr v2, v6

    .line 281
    or-int/2addr v2, v14

    .line 282
    goto :goto_9

    .line 283
    :goto_b
    const/high16 v6, 0x3f800000    # 1.0f

    .line 284
    .line 285
    invoke-static {v0, v6}, Ljava/lang/Math;->min(FF)F

    .line 286
    .line 287
    .line 288
    move-result v0

    .line 289
    const/4 v6, 0x0

    .line 290
    invoke-static {v6, v0}, Ljava/lang/Math;->max(FF)F

    .line 291
    .line 292
    .line 293
    move-result v0

    .line 294
    const v6, 0x447fc000    # 1023.0f

    .line 295
    .line 296
    .line 297
    mul-float/2addr v0, v6

    .line 298
    add-float/2addr v0, v4

    .line 299
    float-to-int v0, v0

    .line 300
    move-object/from16 v4, p4

    .line 301
    .line 302
    iget v4, v4, Lb80;->c:I

    .line 303
    .line 304
    int-to-long v6, v1

    .line 305
    const-wide/32 v8, 0xffff

    .line 306
    .line 307
    .line 308
    and-long/2addr v6, v8

    .line 309
    const/16 v1, 0x30

    .line 310
    .line 311
    shl-long/2addr v6, v1

    .line 312
    int-to-long v10, v5

    .line 313
    and-long/2addr v10, v8

    .line 314
    shl-long v10, v10, v16

    .line 315
    .line 316
    or-long v5, v6, v10

    .line 317
    .line 318
    int-to-long v1, v2

    .line 319
    and-long/2addr v1, v8

    .line 320
    shl-long/2addr v1, v3

    .line 321
    or-long/2addr v1, v5

    .line 322
    int-to-long v5, v0

    .line 323
    const-wide/16 v7, 0x3ff

    .line 324
    .line 325
    and-long/2addr v5, v7

    .line 326
    const/4 v0, 0x6

    .line 327
    shl-long/2addr v5, v0

    .line 328
    or-long v0, v1, v5

    .line 329
    .line 330
    int-to-long v2, v4

    .line 331
    const-wide/16 v4, 0x3f

    .line 332
    .line 333
    and-long/2addr v2, v4

    .line 334
    or-long/2addr v0, v2

    .line 335
    sget v2, Lt70;->g:I

    .line 336
    .line 337
    return-wide v0
.end method

.method public static final j(JJ)J
    .locals 7

    .line 1
    const-wide v0, 0x3fffffffffffffffL    # 1.9999999999999998

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    cmp-long v2, p0, v0

    .line 7
    .line 8
    const-wide v3, -0x3fffffffffffffffL    # -2.0000000000000004

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    if-eqz v2, :cond_3

    .line 14
    .line 15
    cmp-long v2, p0, v3

    .line 16
    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    cmp-long v0, p2, v0

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    cmp-long v0, p2, v3

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    add-long v1, p0, p2

    .line 30
    .line 31
    const-wide v3, -0x3fffffffffffffffL    # -2.0000000000000004

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    const-wide v5, 0x3fffffffffffffffL    # 1.9999999999999998

    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    invoke-static/range {v1 .. v6}, Lix;->l(JJJ)J

    .line 42
    .line 43
    .line 44
    move-result-wide p0

    .line 45
    return-wide p0

    .line 46
    :cond_2
    :goto_0
    return-wide p2

    .line 47
    :cond_3
    :goto_1
    cmp-long v2, v3, p2

    .line 48
    .line 49
    if-gez v2, :cond_4

    .line 50
    .line 51
    cmp-long v0, p2, v0

    .line 52
    .line 53
    if-gez v0, :cond_4

    .line 54
    .line 55
    return-wide p0

    .line 56
    :cond_4
    xor-long/2addr p2, p0

    .line 57
    const-wide/16 v0, 0x0

    .line 58
    .line 59
    cmp-long p2, p2, v0

    .line 60
    .line 61
    if-ltz p2, :cond_5

    .line 62
    .line 63
    return-wide p0

    .line 64
    :cond_5
    const-wide p0, 0x7fffffffffffc0deL

    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    return-wide p0
.end method

.method public static final k(Lrq1;FFLoq1;Lag1;)Lpq1;
    .locals 6

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 2
    .line 3
    .line 4
    move-result-object v1

    .line 5
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    invoke-virtual {p4}, Lag1;->K()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    sget-object p2, Lrb0;->a:Lbx3;

    .line 14
    .line 15
    if-ne p1, p2, :cond_0

    .line 16
    .line 17
    new-instance p1, Lpq1;

    .line 18
    .line 19
    invoke-direct {p1, p0, v1, v3, p3}, Lpq1;-><init>(Lrq1;Ljava/lang/Float;Ljava/lang/Float;Loq1;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p4, p1}, Lag1;->g0(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    move-object v2, p1

    .line 26
    check-cast v2, Lpq1;

    .line 27
    .line 28
    invoke-virtual {p4, p3}, Lag1;->h(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    invoke-virtual {p4}, Lag1;->K()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-nez p1, :cond_1

    .line 37
    .line 38
    if-ne v0, p2, :cond_2

    .line 39
    .line 40
    :cond_1
    new-instance v0, Lj4;

    .line 41
    .line 42
    const/4 v5, 0x1

    .line 43
    move-object v4, p3

    .line 44
    invoke-direct/range {v0 .. v5}, Lj4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p4, v0}, Lag1;->g0(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    :cond_2
    check-cast v0, Lne1;

    .line 51
    .line 52
    invoke-static {v0, p4}, Lzf5;->g(Lne1;Lag1;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p4, p0}, Lag1;->h(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    invoke-virtual {p4}, Lag1;->K()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p3

    .line 63
    if-nez p1, :cond_3

    .line 64
    .line 65
    if-ne p3, p2, :cond_4

    .line 66
    .line 67
    :cond_3
    new-instance p3, Lm;

    .line 68
    .line 69
    const/16 p1, 0xa

    .line 70
    .line 71
    invoke-direct {p3, p1, p0, v2}, Lm;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p4, p3}, Lag1;->g0(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    :cond_4
    check-cast p3, Lpe1;

    .line 78
    .line 79
    invoke-static {v2, p3, p4}, Lzf5;->a(Ljava/lang/Object;Lpe1;Lag1;)V

    .line 80
    .line 81
    .line 82
    return-object v2
.end method

.method public static final l(Lhz2;Lne1;Lfh0;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p2, Lfz2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lfz2;

    .line 7
    .line 8
    iget v1, v0, Lfz2;->s:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lfz2;->s:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lfz2;

    .line 21
    .line 22
    invoke-direct {v0, p2}, Lfh0;-><init>(Ldh0;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lfz2;->r:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lfz2;->s:I

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    if-ne v1, v3, :cond_1

    .line 34
    .line 35
    iget-object p1, v0, Lfz2;->q:Lne1;

    .line 36
    .line 37
    :try_start_0
    invoke-static {p2}, Lgg4;->T(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_2

    .line 43
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 44
    .line 45
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-object v2

    .line 49
    :cond_2
    invoke-static {p2}, Lgg4;->T(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    iget-object p2, v0, Lfh0;->o:Lhi0;

    .line 53
    .line 54
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    sget-object v1, Lmj1;->W:Lmj1;

    .line 58
    .line 59
    invoke-interface {p2, v1}, Lhi0;->K(Lgi0;)Lfi0;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    if-ne p2, p0, :cond_4

    .line 64
    .line 65
    :try_start_1
    iput-object p1, v0, Lfz2;->q:Lne1;

    .line 66
    .line 67
    iput v3, v0, Lfz2;->s:I

    .line 68
    .line 69
    new-instance p2, Lo20;

    .line 70
    .line 71
    invoke-static {v0}, Ldm0;->A(Ldh0;)Ldh0;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-direct {p2, v3, v0}, Lo20;-><init>(ILdh0;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2}, Lo20;->x()V

    .line 79
    .line 80
    .line 81
    new-instance v0, Lly;

    .line 82
    .line 83
    const/4 v1, 0x4

    .line 84
    invoke-direct {v0, v1, p2}, Lly;-><init>(ILjava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    iget-object p0, p0, Lhz2;->s:Lzy;

    .line 88
    .line 89
    invoke-virtual {p0, v0}, Lzy;->z(Lly;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p2}, Lo20;->v()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    sget-object p2, Lri0;->n:Lri0;

    .line 97
    .line 98
    if-ne p0, p2, :cond_3

    .line 99
    .line 100
    return-object p2

    .line 101
    :cond_3
    :goto_1
    invoke-interface {p1}, Lne1;->a()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    sget-object p0, Lt64;->a:Lt64;

    .line 105
    .line 106
    return-object p0

    .line 107
    :goto_2
    invoke-interface {p1}, Lne1;->a()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    throw p0

    .line 111
    :cond_4
    const-string p0, "awaitClose() can only be invoked from the producer context"

    .line 112
    .line 113
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    return-object v2
.end method

.method public static final m(Landroid/content/Context;Ly84;Lp84;IIIJ)Landroid/widget/RemoteViews;
    .locals 34

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p3

    .line 4
    .line 5
    move-wide/from16 v2, p6

    .line 6
    .line 7
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    new-instance v4, Landroid/widget/RemoteViews;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    const v6, 0x7f0c002c

    .line 20
    .line 21
    .line 22
    invoke-direct {v4, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    invoke-static/range {p1 .. p1}, Lzf5;->K(Ly84;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual/range {p1 .. p1}, Ly84;->a()Lts1;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    iget v7, v7, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 51
    .line 52
    add-int/lit8 v8, p4, -0x2c

    .line 53
    .line 54
    int-to-float v8, v8

    .line 55
    mul-float/2addr v8, v6

    .line 56
    move-object/from16 v9, p1

    .line 57
    .line 58
    move-object/from16 v10, p2

    .line 59
    .line 60
    invoke-static {v10, v0, v9}, Ltv4;->u(Lp84;Landroid/content/Context;Ly84;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v9

    .line 64
    invoke-virtual {v10}, Lp84;->e()D

    .line 65
    .line 66
    .line 67
    move-result-wide v11

    .line 68
    invoke-virtual {v5, v11, v12}, Lts1;->a(D)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 73
    .line 74
    const-string v12, "setTextSize"

    .line 75
    .line 76
    const/high16 p1, 0x41000000    # 8.0f

    .line 77
    .line 78
    const/high16 p4, 0x41600000    # 14.0f

    .line 79
    .line 80
    const/4 v15, 0x1

    .line 81
    const/high16 v16, 0x3f000000    # 0.5f

    .line 82
    .line 83
    const/16 v13, 0x1f

    .line 84
    .line 85
    if-lt v11, v13, :cond_1

    .line 86
    .line 87
    new-instance v11, Landroid/graphics/Paint;

    .line 88
    .line 89
    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v11, v15}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 93
    .line 94
    .line 95
    mul-float v17, p1, v6

    .line 96
    .line 97
    mul-float v13, v7, p4

    .line 98
    .line 99
    invoke-virtual {v11, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v11, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 103
    .line 104
    .line 105
    move-result v13

    .line 106
    sub-float v13, v8, v13

    .line 107
    .line 108
    sub-float v13, v13, v17

    .line 109
    .line 110
    move/from16 v15, p4

    .line 111
    .line 112
    :goto_0
    const/high16 v18, 0x41200000    # 10.0f

    .line 113
    .line 114
    cmpl-float v18, v15, v18

    .line 115
    .line 116
    if-lez v18, :cond_0

    .line 117
    .line 118
    invoke-virtual {v11, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 119
    .line 120
    .line 121
    move-result v18

    .line 122
    cmpl-float v18, v18, v13

    .line 123
    .line 124
    if-lez v18, :cond_0

    .line 125
    .line 126
    sub-float v15, v15, v16

    .line 127
    .line 128
    mul-float v14, v15, v7

    .line 129
    .line 130
    invoke-virtual {v11, v14}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 131
    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_0
    const/4 v11, 0x2

    .line 135
    const v13, 0x7f0900ee

    .line 136
    .line 137
    .line 138
    invoke-virtual {v4, v13, v11, v15}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    .line 139
    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_1
    move/from16 v11, p4

    .line 143
    .line 144
    const v13, 0x7f0900ee

    .line 145
    .line 146
    .line 147
    invoke-virtual {v4, v13, v12, v11}, Landroid/widget/RemoteViews;->setFloat(ILjava/lang/String;F)V

    .line 148
    .line 149
    .line 150
    :goto_1
    invoke-virtual {v4, v13, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 151
    .line 152
    .line 153
    const v9, 0x7f0900e5

    .line 154
    .line 155
    .line 156
    invoke-virtual {v4, v9, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v10}, Lp84;->e()D

    .line 160
    .line 161
    .line 162
    move-result-wide v13

    .line 163
    const-wide/high16 v18, 0x4059000000000000L    # 100.0

    .line 164
    .line 165
    div-double v20, v13, v18

    .line 166
    .line 167
    const-wide/16 v22, 0x0

    .line 168
    .line 169
    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    .line 170
    .line 171
    invoke-static/range {v20 .. v25}, Lix;->i(DDD)D

    .line 172
    .line 173
    .line 174
    move-result-wide v13

    .line 175
    const-wide v20, 0x408f400000000000L    # 1000.0

    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    mul-double v13, v13, v20

    .line 181
    .line 182
    double-to-int v5, v13

    .line 183
    const v9, 0x7f0900ef

    .line 184
    .line 185
    .line 186
    const/16 v11, 0x3e8

    .line 187
    .line 188
    const/4 v13, 0x0

    .line 189
    invoke-virtual {v4, v9, v11, v5, v13}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v10}, Lp84;->b()Ljava/lang/Long;

    .line 193
    .line 194
    .line 195
    move-result-object v5

    .line 196
    invoke-virtual {v10}, Lp84;->a()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v9

    .line 200
    invoke-static {v0, v5, v2, v3, v9}, Le10;->a(Landroid/content/Context;Ljava/lang/Long;JLjava/lang/String;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v5

    .line 204
    new-instance v9, Landroid/graphics/Paint;

    .line 205
    .line 206
    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 207
    .line 208
    .line 209
    const/4 v14, 0x1

    .line 210
    invoke-virtual {v9, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 211
    .line 212
    .line 213
    mul-float v6, v6, p1

    .line 214
    .line 215
    invoke-virtual {v10}, Lp84;->c()Ljava/lang/Long;

    .line 216
    .line 217
    .line 218
    move-result-object v15

    .line 219
    const v14, 0x7f0900ed

    .line 220
    .line 221
    .line 222
    const/high16 p4, 0x41400000    # 12.0f

    .line 223
    .line 224
    const/high16 v23, 0x41100000    # 9.0f

    .line 225
    .line 226
    if-eqz v15, :cond_5

    .line 227
    .line 228
    invoke-virtual {v10}, Lp84;->b()Ljava/lang/Long;

    .line 229
    .line 230
    .line 231
    move-result-object v15

    .line 232
    if-eqz v15, :cond_5

    .line 233
    .line 234
    invoke-virtual {v10}, Lp84;->b()Ljava/lang/Long;

    .line 235
    .line 236
    .line 237
    move-result-object v15

    .line 238
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    .line 239
    .line 240
    .line 241
    move-result-wide v24

    .line 242
    invoke-virtual {v10}, Lp84;->c()Ljava/lang/Long;

    .line 243
    .line 244
    .line 245
    move-result-object v15

    .line 246
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    .line 247
    .line 248
    .line 249
    move-result-wide v26

    .line 250
    move-object v15, v12

    .line 251
    sub-long v11, v24, v26

    .line 252
    .line 253
    invoke-virtual {v10}, Lp84;->c()Ljava/lang/Long;

    .line 254
    .line 255
    .line 256
    move-result-object v10

    .line 257
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    .line 258
    .line 259
    .line 260
    move-result-wide v24

    .line 261
    sub-long v2, v2, v24

    .line 262
    .line 263
    const-wide/16 v24, 0x0

    .line 264
    .line 265
    cmp-long v10, v11, v24

    .line 266
    .line 267
    if-lez v10, :cond_4

    .line 268
    .line 269
    long-to-double v2, v2

    .line 270
    long-to-double v10, v11

    .line 271
    div-double v28, v2, v10

    .line 272
    .line 273
    const-wide/16 v30, 0x0

    .line 274
    .line 275
    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    .line 276
    .line 277
    invoke-static/range {v28 .. v33}, Lix;->i(DDD)D

    .line 278
    .line 279
    .line 280
    move-result-wide v2

    .line 281
    mul-double v10, v2, v20

    .line 282
    .line 283
    double-to-int v10, v10

    .line 284
    const/16 v11, 0x3e8

    .line 285
    .line 286
    invoke-virtual {v4, v14, v11, v10, v13}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 287
    .line 288
    .line 289
    mul-double v2, v2, v18

    .line 290
    .line 291
    double-to-int v2, v2

    .line 292
    new-instance v3, Ljava/lang/StringBuilder;

    .line 293
    .line 294
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    const-string v2, "%"

    .line 301
    .line 302
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v2

    .line 309
    mul-float v11, v7, p4

    .line 310
    .line 311
    invoke-virtual {v9, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 315
    .line 316
    .line 317
    move-result v3

    .line 318
    sub-float v3, v8, v3

    .line 319
    .line 320
    sub-float/2addr v3, v6

    .line 321
    move/from16 v6, p4

    .line 322
    .line 323
    :goto_2
    cmpl-float v10, v6, v23

    .line 324
    .line 325
    if-lez v10, :cond_2

    .line 326
    .line 327
    invoke-virtual {v9, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 328
    .line 329
    .line 330
    move-result v10

    .line 331
    cmpl-float v10, v10, v3

    .line 332
    .line 333
    if-lez v10, :cond_2

    .line 334
    .line 335
    sub-float v6, v6, v16

    .line 336
    .line 337
    mul-float v10, v6, v7

    .line 338
    .line 339
    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 340
    .line 341
    .line 342
    goto :goto_2

    .line 343
    :cond_2
    invoke-virtual {v9, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 344
    .line 345
    .line 346
    move-result v10

    .line 347
    cmpl-float v3, v10, v3

    .line 348
    .line 349
    if-lez v3, :cond_3

    .line 350
    .line 351
    const v3, 0x7f0900ec

    .line 352
    .line 353
    .line 354
    const/16 v10, 0x8

    .line 355
    .line 356
    invoke-virtual {v4, v3, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v9, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 360
    .line 361
    .line 362
    move/from16 v6, p4

    .line 363
    .line 364
    :goto_3
    cmpl-float v2, v6, v23

    .line 365
    .line 366
    if-lez v2, :cond_6

    .line 367
    .line 368
    invoke-virtual {v9, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 369
    .line 370
    .line 371
    move-result v2

    .line 372
    cmpl-float v2, v2, v8

    .line 373
    .line 374
    if-lez v2, :cond_6

    .line 375
    .line 376
    sub-float v6, v6, v16

    .line 377
    .line 378
    mul-float v2, v6, v7

    .line 379
    .line 380
    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 381
    .line 382
    .line 383
    goto :goto_3

    .line 384
    :cond_3
    const v3, 0x7f0900ec

    .line 385
    .line 386
    .line 387
    invoke-virtual {v4, v3, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {v4, v3, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 391
    .line 392
    .line 393
    goto :goto_6

    .line 394
    :cond_4
    const v3, 0x7f0900ec

    .line 395
    .line 396
    .line 397
    const/16 v11, 0x3e8

    .line 398
    .line 399
    invoke-virtual {v4, v14, v11, v13, v13}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 400
    .line 401
    .line 402
    const/16 v10, 0x8

    .line 403
    .line 404
    invoke-virtual {v4, v3, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 405
    .line 406
    .line 407
    mul-float v11, v7, p4

    .line 408
    .line 409
    invoke-virtual {v9, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 410
    .line 411
    .line 412
    move/from16 v6, p4

    .line 413
    .line 414
    :goto_4
    cmpl-float v2, v6, v23

    .line 415
    .line 416
    if-lez v2, :cond_6

    .line 417
    .line 418
    invoke-virtual {v9, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 419
    .line 420
    .line 421
    move-result v2

    .line 422
    cmpl-float v2, v2, v8

    .line 423
    .line 424
    if-lez v2, :cond_6

    .line 425
    .line 426
    sub-float v6, v6, v16

    .line 427
    .line 428
    mul-float v2, v6, v7

    .line 429
    .line 430
    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 431
    .line 432
    .line 433
    goto :goto_4

    .line 434
    :cond_5
    move-object v15, v12

    .line 435
    const/16 v11, 0x3e8

    .line 436
    .line 437
    invoke-virtual {v4, v14, v11, v13, v13}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 438
    .line 439
    .line 440
    const v3, 0x7f0900ec

    .line 441
    .line 442
    .line 443
    const/16 v10, 0x8

    .line 444
    .line 445
    invoke-virtual {v4, v3, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 446
    .line 447
    .line 448
    mul-float v11, p4, v7

    .line 449
    .line 450
    invoke-virtual {v9, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 451
    .line 452
    .line 453
    move/from16 v6, p4

    .line 454
    .line 455
    :goto_5
    cmpl-float v2, v6, v23

    .line 456
    .line 457
    if-lez v2, :cond_6

    .line 458
    .line 459
    invoke-virtual {v9, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 460
    .line 461
    .line 462
    move-result v2

    .line 463
    cmpl-float v2, v2, v8

    .line 464
    .line 465
    if-lez v2, :cond_6

    .line 466
    .line 467
    sub-float v6, v6, v16

    .line 468
    .line 469
    mul-float v2, v6, v7

    .line 470
    .line 471
    invoke-virtual {v9, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 472
    .line 473
    .line 474
    goto :goto_5

    .line 475
    :cond_6
    :goto_6
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 476
    .line 477
    const v3, 0x7f0900e7

    .line 478
    .line 479
    .line 480
    const/16 v7, 0x1f

    .line 481
    .line 482
    if-lt v2, v7, :cond_7

    .line 483
    .line 484
    const/4 v11, 0x2

    .line 485
    invoke-virtual {v4, v3, v11, v6}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    .line 486
    .line 487
    .line 488
    goto :goto_7

    .line 489
    :cond_7
    move/from16 v6, p4

    .line 490
    .line 491
    invoke-virtual {v4, v3, v15, v6}, Landroid/widget/RemoteViews;->setFloat(ILjava/lang/String;F)V

    .line 492
    .line 493
    .line 494
    :goto_7
    invoke-virtual {v4, v3, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 495
    .line 496
    .line 497
    new-instance v3, Landroid/content/Intent;

    .line 498
    .line 499
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 500
    .line 501
    .line 502
    const v5, 0x7f0900e1

    .line 503
    .line 504
    .line 505
    invoke-virtual {v4, v5, v3}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    .line 506
    .line 507
    .line 508
    const/16 v3, 0x70

    .line 509
    .line 510
    if-ge v1, v3, :cond_8

    .line 511
    .line 512
    const/4 v15, 0x1

    .line 513
    :goto_8
    move/from16 v3, p5

    .line 514
    .line 515
    goto :goto_9

    .line 516
    :cond_8
    add-int/lit8 v3, v1, -0x30

    .line 517
    .line 518
    div-int/lit8 v15, v3, 0x40

    .line 519
    .line 520
    goto :goto_8

    .line 521
    :goto_9
    invoke-static {v15, v3}, Ljava/lang/Math;->min(II)I

    .line 522
    .line 523
    .line 524
    move-result v3

    .line 525
    add-int/lit8 v1, v1, -0x30

    .line 526
    .line 527
    mul-int/lit8 v5, v3, 0x8

    .line 528
    .line 529
    sub-int/2addr v1, v5

    .line 530
    div-int/2addr v1, v3

    .line 531
    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    .line 532
    .line 533
    .line 534
    move-result v1

    .line 535
    const/16 v3, 0x38

    .line 536
    .line 537
    const v5, 0x7f0900e9

    .line 538
    .line 539
    .line 540
    const v6, 0x7f0900e8

    .line 541
    .line 542
    .line 543
    const v7, 0x7f0900e6

    .line 544
    .line 545
    .line 546
    if-ge v1, v3, :cond_9

    .line 547
    .line 548
    const/16 v10, 0x8

    .line 549
    .line 550
    invoke-virtual {v4, v7, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 551
    .line 552
    .line 553
    invoke-virtual {v4, v6, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 554
    .line 555
    .line 556
    invoke-virtual {v4, v5, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 557
    .line 558
    .line 559
    :goto_a
    const/16 v7, 0x1f

    .line 560
    .line 561
    goto :goto_b

    .line 562
    :cond_9
    invoke-virtual {v4, v7, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 563
    .line 564
    .line 565
    invoke-virtual {v4, v6, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 566
    .line 567
    .line 568
    invoke-virtual {v4, v5, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 569
    .line 570
    .line 571
    goto :goto_a

    .line 572
    :goto_b
    if-lt v2, v7, :cond_a

    .line 573
    .line 574
    int-to-float v0, v1

    .line 575
    invoke-static {v4, v0}, Lyv3;->l(Landroid/widget/RemoteViews;F)V

    .line 576
    .line 577
    .line 578
    return-object v4

    .line 579
    :cond_a
    int-to-float v1, v1

    .line 580
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 581
    .line 582
    .line 583
    move-result-object v0

    .line 584
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 585
    .line 586
    .line 587
    move-result-object v0

    .line 588
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 589
    .line 590
    mul-float/2addr v1, v0

    .line 591
    float-to-int v0, v1

    .line 592
    const-string v1, "setMinimumHeight"

    .line 593
    .line 594
    const v2, 0x7f0900e0

    .line 595
    .line 596
    .line 597
    invoke-virtual {v4, v2, v1, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 598
    .line 599
    .line 600
    return-object v4
.end method

.method public static n(JLag1;)Lz20;
    .locals 29

    .line 1
    invoke-static/range {p0 .. p2}, La80;->b(JLag1;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sget-wide v2, Lt70;->f:J

    .line 6
    .line 7
    const v4, 0x3ec28f5c    # 0.38f

    .line 8
    .line 9
    .line 10
    invoke-static {v4, v0, v1}, Lt70;->b(FJ)J

    .line 11
    .line 12
    .line 13
    move-result-wide v5

    .line 14
    sget-object v7, Lwa2;->a:Lis3;

    .line 15
    .line 16
    move-object/from16 v8, p2

    .line 17
    .line 18
    invoke-virtual {v8, v7}, Lag1;->j(Lh03;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v7

    .line 22
    check-cast v7, Lua2;

    .line 23
    .line 24
    iget-object v7, v7, Lua2;->a:Ly70;

    .line 25
    .line 26
    iget-object v8, v7, Ly70;->Z:Lz20;

    .line 27
    .line 28
    if-nez v8, :cond_0

    .line 29
    .line 30
    new-instance v9, Lz20;

    .line 31
    .line 32
    sget-object v8, Lqj0;->b:Lz70;

    .line 33
    .line 34
    invoke-static {v7, v8}, La80;->c(Ly70;Lz70;)J

    .line 35
    .line 36
    .line 37
    move-result-wide v10

    .line 38
    invoke-static {v7, v8}, La80;->c(Ly70;Lz70;)J

    .line 39
    .line 40
    .line 41
    move-result-wide v12

    .line 42
    invoke-static {v7, v12, v13}, La80;->a(Ly70;J)J

    .line 43
    .line 44
    .line 45
    move-result-wide v12

    .line 46
    sget-object v14, Lqj0;->d:Lz70;

    .line 47
    .line 48
    invoke-static {v7, v14}, La80;->c(Ly70;Lz70;)J

    .line 49
    .line 50
    .line 51
    move-result-wide v14

    .line 52
    sget v4, Lqj0;->e:F

    .line 53
    .line 54
    invoke-static {v4, v14, v15}, Lt70;->b(FJ)J

    .line 55
    .line 56
    .line 57
    move-result-wide v14

    .line 58
    move-wide/from16 v18, v0

    .line 59
    .line 60
    invoke-static {v7, v8}, La80;->c(Ly70;Lz70;)J

    .line 61
    .line 62
    .line 63
    move-result-wide v0

    .line 64
    invoke-static {v14, v15, v0, v1}, Lc75;->q(JJ)J

    .line 65
    .line 66
    .line 67
    move-result-wide v14

    .line 68
    invoke-static {v7, v8}, La80;->c(Ly70;Lz70;)J

    .line 69
    .line 70
    .line 71
    move-result-wide v0

    .line 72
    invoke-static {v7, v0, v1}, La80;->a(Ly70;J)J

    .line 73
    .line 74
    .line 75
    move-result-wide v0

    .line 76
    const v4, 0x3ec28f5c    # 0.38f

    .line 77
    .line 78
    .line 79
    invoke-static {v4, v0, v1}, Lt70;->b(FJ)J

    .line 80
    .line 81
    .line 82
    move-result-wide v16

    .line 83
    invoke-direct/range {v9 .. v17}, Lz20;-><init>(JJJJ)V

    .line 84
    .line 85
    .line 86
    iput-object v9, v7, Ly70;->Z:Lz20;

    .line 87
    .line 88
    move-object v8, v9

    .line 89
    goto :goto_0

    .line 90
    :cond_0
    move-wide/from16 v18, v0

    .line 91
    .line 92
    :goto_0
    const-wide/16 v0, 0x10

    .line 93
    .line 94
    cmp-long v4, p0, v0

    .line 95
    .line 96
    if-eqz v4, :cond_1

    .line 97
    .line 98
    move-wide/from16 v21, p0

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_1
    iget-wide v9, v8, Lz20;->a:J

    .line 102
    .line 103
    move-wide/from16 v21, v9

    .line 104
    .line 105
    :goto_1
    cmp-long v4, v18, v0

    .line 106
    .line 107
    if-eqz v4, :cond_2

    .line 108
    .line 109
    move-wide/from16 v23, v18

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_2
    iget-wide v9, v8, Lz20;->b:J

    .line 113
    .line 114
    move-wide/from16 v23, v9

    .line 115
    .line 116
    :goto_2
    cmp-long v4, v2, v0

    .line 117
    .line 118
    if-eqz v4, :cond_3

    .line 119
    .line 120
    :goto_3
    move-wide/from16 v25, v2

    .line 121
    .line 122
    goto :goto_4

    .line 123
    :cond_3
    iget-wide v2, v8, Lz20;->c:J

    .line 124
    .line 125
    goto :goto_3

    .line 126
    :goto_4
    cmp-long v0, v5, v0

    .line 127
    .line 128
    if-eqz v0, :cond_4

    .line 129
    .line 130
    :goto_5
    move-wide/from16 v27, v5

    .line 131
    .line 132
    goto :goto_6

    .line 133
    :cond_4
    iget-wide v5, v8, Lz20;->d:J

    .line 134
    .line 135
    goto :goto_5

    .line 136
    :goto_6
    new-instance v20, Lz20;

    .line 137
    .line 138
    invoke-direct/range {v20 .. v28}, Lz20;-><init>(JJJJ)V

    .line 139
    .line 140
    .line 141
    return-object v20
.end method

.method public static o()La30;
    .locals 3

    .line 1
    sget v0, Lqj0;->g:F

    .line 2
    .line 3
    sget v1, Lqj0;->f:F

    .line 4
    .line 5
    new-instance v2, La30;

    .line 6
    .line 7
    invoke-direct {v2, v0, v1}, La30;-><init>(FF)V

    .line 8
    .line 9
    .line 10
    return-object v2
.end method

.method public static final p(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-lt p0, v0, :cond_0

    .line 3
    .line 4
    return-void

    .line 5
    :cond_0
    const-string v0, "Expected positive parallelism level, but got "

    .line 6
    .line 7
    invoke-static {p0, v0}, Ldi0;->q(ILjava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {p0}, Lk21;->l(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static final q(JJ)J
    .locals 9

    .line 1
    invoke-static {p2, p3}, Lt70;->f(J)Lb80;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0, p1, v0}, Lt70;->a(JLb80;)J

    .line 6
    .line 7
    .line 8
    move-result-wide p0

    .line 9
    invoke-static {p2, p3}, Lt70;->d(J)F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {p0, p1}, Lt70;->d(J)F

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/high16 v2, 0x3f800000    # 1.0f

    .line 18
    .line 19
    sub-float/2addr v2, v1

    .line 20
    mul-float v3, v0, v2

    .line 21
    .line 22
    add-float/2addr v3, v1

    .line 23
    invoke-static {p0, p1}, Lt70;->h(J)F

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    invoke-static {p2, p3}, Lt70;->h(J)F

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    const/4 v6, 0x0

    .line 32
    cmpg-float v7, v3, v6

    .line 33
    .line 34
    if-nez v7, :cond_0

    .line 35
    .line 36
    move v5, v6

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    mul-float/2addr v4, v1

    .line 39
    mul-float/2addr v5, v0

    .line 40
    mul-float/2addr v5, v2

    .line 41
    add-float/2addr v5, v4

    .line 42
    div-float/2addr v5, v3

    .line 43
    :goto_0
    invoke-static {p0, p1}, Lt70;->g(J)F

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    invoke-static {p2, p3}, Lt70;->g(J)F

    .line 48
    .line 49
    .line 50
    move-result v8

    .line 51
    if-nez v7, :cond_1

    .line 52
    .line 53
    move v8, v6

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    mul-float/2addr v4, v1

    .line 56
    mul-float/2addr v8, v0

    .line 57
    mul-float/2addr v8, v2

    .line 58
    add-float/2addr v8, v4

    .line 59
    div-float/2addr v8, v3

    .line 60
    :goto_1
    invoke-static {p0, p1}, Lt70;->e(J)F

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    invoke-static {p2, p3}, Lt70;->e(J)F

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-nez v7, :cond_2

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_2
    mul-float/2addr p0, v1

    .line 72
    mul-float/2addr p1, v0

    .line 73
    mul-float/2addr p1, v2

    .line 74
    add-float/2addr p1, p0

    .line 75
    div-float v6, p1, v3

    .line 76
    .line 77
    :goto_2
    invoke-static {p2, p3}, Lt70;->f(J)Lb80;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-static {v5, v8, v6, v3, p0}, Lc75;->i(FFFFLb80;)J

    .line 82
    .line 83
    .line 84
    move-result-wide p0

    .line 85
    return-wide p0
.end method

.method public static final r(IILln3;Lrd3;Lln3;)J
    .locals 2

    .line 1
    sget-object v0, Lln3;->c:Lln3;

    .line 2
    .line 3
    invoke-static {p2, v0}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p0, p2, Lln3;->a:Lcu0;

    .line 11
    .line 12
    invoke-static {p0, p3}, Lc75;->U(Lcu0;Lrd3;)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    iget-object p1, p2, Lln3;->b:Lcu0;

    .line 17
    .line 18
    invoke-static {p1, p3}, Lc75;->U(Lcu0;Lrd3;)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    :goto_0
    iget-object p2, p4, Lln3;->a:Lcu0;

    .line 23
    .line 24
    iget-object p3, p4, Lln3;->b:Lcu0;

    .line 25
    .line 26
    instance-of p4, p2, Lau0;

    .line 27
    .line 28
    const v0, 0x7fffffff

    .line 29
    .line 30
    .line 31
    const/high16 v1, -0x80000000

    .line 32
    .line 33
    if-eqz p4, :cond_2

    .line 34
    .line 35
    if-eq p0, v1, :cond_2

    .line 36
    .line 37
    if-ne p0, v0, :cond_1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    check-cast p2, Lau0;

    .line 41
    .line 42
    iget p2, p2, Lau0;->a:I

    .line 43
    .line 44
    if-le p0, p2, :cond_2

    .line 45
    .line 46
    move p0, p2

    .line 47
    :cond_2
    :goto_1
    instance-of p2, p3, Lau0;

    .line 48
    .line 49
    if-eqz p2, :cond_4

    .line 50
    .line 51
    if-eq p1, v1, :cond_4

    .line 52
    .line 53
    if-ne p1, v0, :cond_3

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_3
    check-cast p3, Lau0;

    .line 57
    .line 58
    iget p2, p3, Lau0;->a:I

    .line 59
    .line 60
    if-le p1, p2, :cond_4

    .line 61
    .line 62
    move p1, p2

    .line 63
    :cond_4
    :goto_2
    int-to-long p2, p0

    .line 64
    const/16 p0, 0x20

    .line 65
    .line 66
    shl-long/2addr p2, p0

    .line 67
    int-to-long p0, p1

    .line 68
    const-wide v0, 0xffffffffL

    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    and-long/2addr p0, v0

    .line 74
    or-long/2addr p0, p2

    .line 75
    return-wide p0
.end method

.method public static final s(IIIILrd3;Lln3;)D
    .locals 5

    .line 1
    int-to-double v0, p2

    .line 2
    int-to-double v2, p0

    .line 3
    div-double/2addr v0, v2

    .line 4
    int-to-double p2, p3

    .line 5
    int-to-double p0, p1

    .line 6
    div-double/2addr p2, p0

    .line 7
    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result p4

    .line 11
    if-eqz p4, :cond_1

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    if-ne p4, v4, :cond_0

    .line 15
    .line 16
    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->min(DD)D

    .line 17
    .line 18
    .line 19
    move-result-wide p2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-static {}, Lp61;->x()V

    .line 22
    .line 23
    .line 24
    const-wide/16 p0, 0x0

    .line 25
    .line 26
    return-wide p0

    .line 27
    :cond_1
    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->max(DD)D

    .line 28
    .line 29
    .line 30
    move-result-wide p2

    .line 31
    :goto_0
    iget-object p4, p5, Lln3;->a:Lcu0;

    .line 32
    .line 33
    instance-of v0, p4, Lau0;

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    check-cast p4, Lau0;

    .line 38
    .line 39
    iget p4, p4, Lau0;->a:I

    .line 40
    .line 41
    int-to-double v0, p4

    .line 42
    div-double/2addr v0, v2

    .line 43
    cmpl-double p4, p2, v0

    .line 44
    .line 45
    if-lez p4, :cond_2

    .line 46
    .line 47
    move-wide p2, v0

    .line 48
    :cond_2
    iget-object p4, p5, Lln3;->b:Lcu0;

    .line 49
    .line 50
    instance-of p5, p4, Lau0;

    .line 51
    .line 52
    if-eqz p5, :cond_3

    .line 53
    .line 54
    check-cast p4, Lau0;

    .line 55
    .line 56
    iget p4, p4, Lau0;->a:I

    .line 57
    .line 58
    int-to-double p4, p4

    .line 59
    div-double/2addr p4, p0

    .line 60
    cmpl-double p0, p2, p4

    .line 61
    .line 62
    if-lez p0, :cond_3

    .line 63
    .line 64
    return-wide p4

    .line 65
    :cond_3
    return-wide p2
.end method

.method public static final t(Lbf;)Lbf;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lbf;->c()Lbf;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lbf;->b()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ge v2, v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, v2}, Lbf;->a(I)F

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    invoke-virtual {v0, v2, v3}, Lbf;->e(IF)V

    .line 17
    .line 18
    .line 19
    add-int/lit8 v2, v2, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-object v0
.end method

.method public static u()Ld84;
    .locals 18

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/32 v2, 0x5265c0

    .line 6
    .line 7
    .line 8
    sub-long v2, v0, v2

    .line 9
    .line 10
    const-wide/32 v4, -0xc042c0

    .line 11
    .line 12
    .line 13
    sub-long v4, v0, v4

    .line 14
    .line 15
    const-wide/32 v6, 0x176e8900

    .line 16
    .line 17
    .line 18
    sub-long v6, v0, v6

    .line 19
    .line 20
    const-wide/32 v8, -0xc9dfb00

    .line 21
    .line 22
    .line 23
    sub-long v8, v0, v8

    .line 24
    .line 25
    new-instance v10, Ld84;

    .line 26
    .line 27
    new-instance v11, Lp84;

    .line 28
    .line 29
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 30
    .line 31
    .line 32
    move-result-object v15

    .line 33
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 34
    .line 35
    .line 36
    move-result-object v16

    .line 37
    const-string v12, "Current session"

    .line 38
    .line 39
    const-wide v13, 0x4051800000000000L    # 70.0

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    invoke-direct/range {v11 .. v16}, Lp84;-><init>(Ljava/lang/String;DLjava/lang/Long;Ljava/lang/Long;)V

    .line 45
    .line 46
    .line 47
    new-instance v12, Lp84;

    .line 48
    .line 49
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 50
    .line 51
    .line 52
    move-result-object v16

    .line 53
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 54
    .line 55
    .line 56
    move-result-object v17

    .line 57
    const-string v13, "Weekly limits"

    .line 58
    .line 59
    const-wide v14, 0x4046800000000000L    # 45.0

    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    invoke-direct/range {v12 .. v17}, Lp84;-><init>(Ljava/lang/String;DLjava/lang/Long;Ljava/lang/Long;)V

    .line 65
    .line 66
    .line 67
    filled-new-array {v11, v12}, [Lp84;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-static {v2}, Ltv4;->F([Ljava/lang/Object;)Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-direct {v10, v2, v0, v1}, Ld84;-><init>(Ljava/util/List;J)V

    .line 76
    .line 77
    .line 78
    return-object v10
.end method

.method public static v([I[I)Ltl2;
    .locals 13

    .line 1
    new-instance v0, Ltl2;

    .line 2
    .line 3
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    .line 4
    .line 5
    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 6
    .line 7
    .line 8
    array-length v2, p0

    .line 9
    const/4 v3, 0x0

    .line 10
    move v4, v3

    .line 11
    :goto_0
    const/4 v5, 0x5

    .line 12
    const/16 v6, 0x27

    .line 13
    .line 14
    if-ge v4, v2, :cond_1

    .line 15
    .line 16
    aget v7, p0, v4

    .line 17
    .line 18
    :try_start_0
    invoke-virtual {v1, v7}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    goto :goto_1

    .line 22
    :catch_0
    move-exception v8

    .line 23
    invoke-static {}, Lt72;->g()Lt72;

    .line 24
    .line 25
    .line 26
    move-result-object v9

    .line 27
    sget-object v10, Ltl2;->b:Ljava/lang/String;

    .line 28
    .line 29
    sget-object v10, Ltl2;->b:Ljava/lang/String;

    .line 30
    .line 31
    new-instance v11, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v12, "Ignoring adding capability \'"

    .line 34
    .line 35
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    iget v7, v9, Lt72;->n:I

    .line 49
    .line 50
    if-gt v7, v5, :cond_0

    .line 51
    .line 52
    invoke-static {v10, v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    .line 54
    .line 55
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    sget-object v2, Ldm0;->J:[I

    .line 59
    .line 60
    move v4, v3

    .line 61
    :goto_2
    const/4 v7, 0x3

    .line 62
    if-ge v4, v7, :cond_3

    .line 63
    .line 64
    aget v7, v2, v4

    .line 65
    .line 66
    invoke-static {p0, v7}, Lji;->J([II)Z

    .line 67
    .line 68
    .line 69
    move-result v8

    .line 70
    if-nez v8, :cond_2

    .line 71
    .line 72
    :try_start_1
    invoke-virtual {v1, v7}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 73
    .line 74
    .line 75
    goto :goto_3

    .line 76
    :catch_1
    move-exception v8

    .line 77
    invoke-static {}, Lt72;->g()Lt72;

    .line 78
    .line 79
    .line 80
    move-result-object v9

    .line 81
    sget-object v10, Ltl2;->b:Ljava/lang/String;

    .line 82
    .line 83
    sget-object v10, Ltl2;->b:Ljava/lang/String;

    .line 84
    .line 85
    new-instance v11, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    const-string v12, "Ignoring removing default capability \'"

    .line 88
    .line 89
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    iget v9, v9, Lt72;->n:I

    .line 103
    .line 104
    if-gt v9, v5, :cond_2

    .line 105
    .line 106
    invoke-static {v10, v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 107
    .line 108
    .line 109
    :cond_2
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_3
    array-length p0, p1

    .line 113
    :goto_4
    if-ge v3, p0, :cond_4

    .line 114
    .line 115
    aget v2, p1, v3

    .line 116
    .line 117
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 118
    .line 119
    .line 120
    add-int/lit8 v3, v3, 0x1

    .line 121
    .line 122
    goto :goto_4

    .line 123
    :cond_4
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    invoke-direct {v0, p0}, Ltl2;-><init>(Landroid/net/NetworkRequest;)V

    .line 131
    .line 132
    .line 133
    return-object v0
.end method

.method public static final w()J
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public static x(IILjava/lang/String;Z)I
    .locals 4

    .line 1
    :goto_0
    if-ge p0, p1, :cond_7

    .line 2
    .line 3
    invoke-virtual {p2, p0}, Ljava/lang/String;->charAt(I)C

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x20

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-ge v0, v1, :cond_0

    .line 11
    .line 12
    const/16 v1, 0x9

    .line 13
    .line 14
    if-ne v0, v1, :cond_5

    .line 15
    .line 16
    :cond_0
    const/16 v1, 0x7f

    .line 17
    .line 18
    if-ge v0, v1, :cond_5

    .line 19
    .line 20
    const/16 v1, 0x30

    .line 21
    .line 22
    const/16 v3, 0x3a

    .line 23
    .line 24
    if-gt v1, v0, :cond_1

    .line 25
    .line 26
    if-ge v0, v3, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const/16 v1, 0x61

    .line 30
    .line 31
    if-gt v1, v0, :cond_2

    .line 32
    .line 33
    const/16 v1, 0x7b

    .line 34
    .line 35
    if-ge v0, v1, :cond_2

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    const/16 v1, 0x41

    .line 39
    .line 40
    if-gt v1, v0, :cond_3

    .line 41
    .line 42
    const/16 v1, 0x5b

    .line 43
    .line 44
    if-ge v0, v1, :cond_3

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_3
    if-ne v0, v3, :cond_4

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_4
    const/4 v0, 0x0

    .line 51
    goto :goto_2

    .line 52
    :cond_5
    :goto_1
    move v0, v2

    .line 53
    :goto_2
    xor-int/lit8 v1, p3, 0x1

    .line 54
    .line 55
    if-ne v0, v1, :cond_6

    .line 56
    .line 57
    return p0

    .line 58
    :cond_6
    add-int/lit8 p0, p0, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_7
    return p1
.end method

.method public static final y(La42;La42;)Ljava/util/ArrayList;
    .locals 14

    .line 1
    new-instance v0, Lms1;

    .line 2
    .line 3
    invoke-virtual {p1}, Lp1;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    sub-int/2addr v1, v2

    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-direct {v0, v3, v1, v2}, Lks1;-><init>(III)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lks1;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    move-object v1, v0

    .line 18
    check-cast v1, Lls1;

    .line 19
    .line 20
    iget-boolean v4, v1, Lls1;->p:Z

    .line 21
    .line 22
    const/4 v5, 0x0

    .line 23
    if-eqz v4, :cond_9

    .line 24
    .line 25
    check-cast v0, Les1;

    .line 26
    .line 27
    invoke-virtual {v0}, Les1;->nextInt()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    iget-boolean v6, v1, Lls1;->p:Z

    .line 32
    .line 33
    if-nez v6, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p0, v3}, La42;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    check-cast v6, Lsz2;

    .line 41
    .line 42
    iget-object v6, v6, Lsz2;->b:Lw41;

    .line 43
    .line 44
    invoke-virtual {p1, v4}, La42;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    check-cast v7, Lsz2;

    .line 49
    .line 50
    iget-object v7, v7, Lsz2;->b:Lw41;

    .line 51
    .line 52
    invoke-static {v6, v7}, Lc75;->C(Lw41;Lw41;)F

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    :cond_1
    invoke-virtual {v0}, Les1;->nextInt()I

    .line 57
    .line 58
    .line 59
    move-result v7

    .line 60
    invoke-virtual {p0, v3}, La42;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    check-cast v8, Lsz2;

    .line 65
    .line 66
    iget-object v8, v8, Lsz2;->b:Lw41;

    .line 67
    .line 68
    invoke-virtual {p1, v7}, La42;->get(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v9

    .line 72
    check-cast v9, Lsz2;

    .line 73
    .line 74
    iget-object v9, v9, Lsz2;->b:Lw41;

    .line 75
    .line 76
    invoke-static {v8, v9}, Lc75;->C(Lw41;Lw41;)F

    .line 77
    .line 78
    .line 79
    move-result v8

    .line 80
    invoke-static {v6, v8}, Ljava/lang/Float;->compare(FF)I

    .line 81
    .line 82
    .line 83
    move-result v9

    .line 84
    if-lez v9, :cond_2

    .line 85
    .line 86
    move v4, v7

    .line 87
    move v6, v8

    .line 88
    :cond_2
    iget-boolean v7, v1, Lls1;->p:Z

    .line 89
    .line 90
    if-nez v7, :cond_1

    .line 91
    .line 92
    :goto_0
    invoke-virtual {p0}, La42;->a()I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    invoke-virtual {p1}, La42;->a()I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    new-array v6, v2, [Lsz2;

    .line 101
    .line 102
    invoke-virtual {p1, v4}, La42;->get(I)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    aput-object v7, v6, v3

    .line 107
    .line 108
    invoke-static {v6}, Ltv4;->H([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    move v6, v2

    .line 113
    move v7, v4

    .line 114
    :goto_1
    if-ge v6, v0, :cond_8

    .line 115
    .line 116
    sub-int v8, v0, v6

    .line 117
    .line 118
    sub-int v8, v4, v8

    .line 119
    .line 120
    if-le v8, v7, :cond_3

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_3
    add-int/2addr v8, v1

    .line 124
    :goto_2
    new-instance v9, Lms1;

    .line 125
    .line 126
    add-int/lit8 v7, v7, 0x1

    .line 127
    .line 128
    invoke-direct {v9, v7, v8, v2}, Lks1;-><init>(III)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v9}, Lks1;->iterator()Ljava/util/Iterator;

    .line 132
    .line 133
    .line 134
    move-result-object v7

    .line 135
    move-object v8, v7

    .line 136
    check-cast v8, Lls1;

    .line 137
    .line 138
    iget-boolean v9, v8, Lls1;->p:Z

    .line 139
    .line 140
    if-eqz v9, :cond_7

    .line 141
    .line 142
    check-cast v7, Les1;

    .line 143
    .line 144
    invoke-virtual {v7}, Les1;->nextInt()I

    .line 145
    .line 146
    .line 147
    move-result v9

    .line 148
    iget-boolean v10, v8, Lls1;->p:Z

    .line 149
    .line 150
    if-nez v10, :cond_4

    .line 151
    .line 152
    :goto_3
    move v7, v9

    .line 153
    goto :goto_4

    .line 154
    :cond_4
    invoke-virtual {p0, v6}, La42;->get(I)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v10

    .line 158
    check-cast v10, Lsz2;

    .line 159
    .line 160
    iget-object v10, v10, Lsz2;->b:Lw41;

    .line 161
    .line 162
    rem-int v11, v9, v1

    .line 163
    .line 164
    invoke-virtual {p1, v11}, La42;->get(I)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v11

    .line 168
    check-cast v11, Lsz2;

    .line 169
    .line 170
    iget-object v11, v11, Lsz2;->b:Lw41;

    .line 171
    .line 172
    invoke-static {v10, v11}, Lc75;->C(Lw41;Lw41;)F

    .line 173
    .line 174
    .line 175
    move-result v10

    .line 176
    :cond_5
    invoke-virtual {v7}, Les1;->nextInt()I

    .line 177
    .line 178
    .line 179
    move-result v11

    .line 180
    invoke-virtual {p0, v6}, La42;->get(I)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v12

    .line 184
    check-cast v12, Lsz2;

    .line 185
    .line 186
    iget-object v12, v12, Lsz2;->b:Lw41;

    .line 187
    .line 188
    rem-int v13, v11, v1

    .line 189
    .line 190
    invoke-virtual {p1, v13}, La42;->get(I)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v13

    .line 194
    check-cast v13, Lsz2;

    .line 195
    .line 196
    iget-object v13, v13, Lsz2;->b:Lw41;

    .line 197
    .line 198
    invoke-static {v12, v13}, Lc75;->C(Lw41;Lw41;)F

    .line 199
    .line 200
    .line 201
    move-result v12

    .line 202
    invoke-static {v10, v12}, Ljava/lang/Float;->compare(FF)I

    .line 203
    .line 204
    .line 205
    move-result v13

    .line 206
    if-lez v13, :cond_6

    .line 207
    .line 208
    move v9, v11

    .line 209
    move v10, v12

    .line 210
    :cond_6
    iget-boolean v11, v8, Lls1;->p:Z

    .line 211
    .line 212
    if-nez v11, :cond_5

    .line 213
    .line 214
    goto :goto_3

    .line 215
    :goto_4
    rem-int v8, v7, v1

    .line 216
    .line 217
    invoke-virtual {p1, v8}, La42;->get(I)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v8

    .line 221
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    add-int/lit8 v6, v6, 0x1

    .line 225
    .line 226
    goto :goto_1

    .line 227
    :cond_7
    invoke-static {}, Lp61;->v()V

    .line 228
    .line 229
    .line 230
    return-object v5

    .line 231
    :cond_8
    return-object v3

    .line 232
    :cond_9
    invoke-static {}, Lp61;->v()V

    .line 233
    .line 234
    .line 235
    return-object v5
.end method

.method public static final z(J)J
    .locals 3

    .line 1
    sget-object v0, Lcy0;->o:Lbx3;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    shl-long/2addr p0, v1

    .line 5
    const-wide/16 v1, 0x1

    .line 6
    .line 7
    add-long/2addr p0, v1

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    sget v0, Ley0;->a:I

    .line 12
    .line 13
    return-wide p0
.end method
