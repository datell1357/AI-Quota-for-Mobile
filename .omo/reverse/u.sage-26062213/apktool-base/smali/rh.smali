.class public final Lrh;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lqh;
.implements Lsh;


# instance fields
.field public final n:F

.field public final o:Lk21;

.field public final p:F


# direct methods
.method public constructor <init>(FLk21;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lrh;->n:F

    .line 5
    .line 6
    iput-object p2, p0, Lrh;->o:Lk21;

    .line 7
    .line 8
    iput p1, p0, Lrh;->p:F

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()F
    .locals 0

    .line 1
    iget p0, p0, Lrh;->p:F

    .line 2
    .line 3
    return p0
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
    instance-of v1, p1, Lrh;

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
    check-cast p1, Lrh;

    .line 12
    .line 13
    iget v1, p0, Lrh;->n:F

    .line 14
    .line 15
    iget v3, p1, Lrh;->n:F

    .line 16
    .line 17
    invoke-static {v1, v3}, Lcw0;->b(FF)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    :goto_0
    return v2

    .line 24
    :cond_2
    iget-object p0, p0, Lrh;->o:Lk21;

    .line 25
    .line 26
    iget-object p1, p1, Lrh;->o:Lk21;

    .line 27
    .line 28
    if-eq p0, p1, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lrh;->n:F

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

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
    const/4 v2, 0x1

    .line 11
    invoke-static {v0, v2, v1}, Lxw1;->n(IZI)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object p0, p0, Lrh;->o:Lk21;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    add-int/2addr p0, v0

    .line 22
    return p0
.end method

.method public final i(Lgb2;I[ILhy1;[I)V
    .locals 8

    .line 1
    array-length v0, p3

    .line 2
    if-nez v0, :cond_0

    .line 3
    .line 4
    goto/16 :goto_6

    .line 5
    .line 6
    :cond_0
    iget p0, p0, Lrh;->n:F

    .line 7
    .line 8
    invoke-interface {p1, p0}, Las0;->N(F)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    sget-object p1, Lhy1;->o:Lhy1;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    if-ne p4, p1, :cond_1

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    move p1, v0

    .line 20
    :goto_0
    if-eqz p1, :cond_3

    .line 21
    .line 22
    array-length v1, p3

    .line 23
    move v2, v0

    .line 24
    move v3, v2

    .line 25
    move v4, v3

    .line 26
    :goto_1
    if-ge v2, v1, :cond_2

    .line 27
    .line 28
    aget v3, p3, v2

    .line 29
    .line 30
    add-int/lit8 v5, v4, 0x1

    .line 31
    .line 32
    sub-int/2addr p2, v3

    .line 33
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    aput p2, p5, v4

    .line 38
    .line 39
    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    aget p2, p5, v4

    .line 44
    .line 45
    sub-int/2addr p2, v3

    .line 46
    add-int/lit8 v2, v2, 0x1

    .line 47
    .line 48
    move v4, v5

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    add-int/2addr p2, v3

    .line 51
    goto :goto_3

    .line 52
    :cond_3
    array-length v1, p3

    .line 53
    move v2, v0

    .line 54
    move v3, v2

    .line 55
    move v4, v3

    .line 56
    move v5, v4

    .line 57
    :goto_2
    if-ge v2, v1, :cond_4

    .line 58
    .line 59
    aget v4, p3, v2

    .line 60
    .line 61
    add-int/lit8 v6, v5, 0x1

    .line 62
    .line 63
    sub-int v7, p2, v4

    .line 64
    .line 65
    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    aput v3, p5, v5

    .line 70
    .line 71
    sub-int v3, p2, v3

    .line 72
    .line 73
    sub-int/2addr v3, v4

    .line 74
    invoke-static {p0, v3}, Ljava/lang/Math;->min(II)I

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    aget v5, p5, v5

    .line 79
    .line 80
    add-int/2addr v5, v4

    .line 81
    add-int v4, v5, v3

    .line 82
    .line 83
    add-int/lit8 v2, v2, 0x1

    .line 84
    .line 85
    move v5, v4

    .line 86
    move v4, v3

    .line 87
    move v3, v5

    .line 88
    move v5, v6

    .line 89
    goto :goto_2

    .line 90
    :cond_4
    sub-int/2addr v3, v4

    .line 91
    sub-int/2addr p2, v3

    .line 92
    :goto_3
    if-lez p2, :cond_7

    .line 93
    .line 94
    int-to-float p0, p2

    .line 95
    const/high16 p3, 0x40000000    # 2.0f

    .line 96
    .line 97
    div-float/2addr p0, p3

    .line 98
    const/high16 p3, 0x3f800000    # 1.0f

    .line 99
    .line 100
    sget-object v1, Lhy1;->n:Lhy1;

    .line 101
    .line 102
    if-ne p4, v1, :cond_5

    .line 103
    .line 104
    const/high16 p4, -0x40800000    # -1.0f

    .line 105
    .line 106
    goto :goto_4

    .line 107
    :cond_5
    move p4, p3

    .line 108
    :goto_4
    add-float/2addr p3, p4

    .line 109
    mul-float/2addr p3, p0

    .line 110
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    .line 111
    .line 112
    .line 113
    move-result p0

    .line 114
    if-eqz p1, :cond_6

    .line 115
    .line 116
    sub-int/2addr p0, p2

    .line 117
    :cond_6
    if-eqz p0, :cond_7

    .line 118
    .line 119
    array-length p1, p5

    .line 120
    :goto_5
    if-ge v0, p1, :cond_7

    .line 121
    .line 122
    aget p2, p5, v0

    .line 123
    .line 124
    add-int/2addr p2, p0

    .line 125
    aput p2, p5, v0

    .line 126
    .line 127
    add-int/lit8 v0, v0, 0x1

    .line 128
    .line 129
    goto :goto_5

    .line 130
    :cond_7
    :goto_6
    return-void
.end method

.method public final j(ILgb2;[I[I)V
    .locals 6

    .line 1
    sget-object v4, Lhy1;->n:Lhy1;

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move v2, p1

    .line 5
    move-object v1, p2

    .line 6
    move-object v3, p3

    .line 7
    move-object v5, p4

    .line 8
    invoke-virtual/range {v0 .. v5}, Lrh;->i(Lgb2;I[ILhy1;[I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lrh;->n:F

    .line 2
    .line 3
    invoke-static {v0}, Lcw0;->c(F)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "Arrangement#spacedAligned("

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v0, ", "

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lrh;->o:Lk21;

    .line 23
    .line 24
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string p0, ")"

    .line 28
    .line 29
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0
.end method
