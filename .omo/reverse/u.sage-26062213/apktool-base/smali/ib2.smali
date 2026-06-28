.class public final Lib2;
.super Lj1;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final n:Lld;

.field public final o:Ljava/util/ArrayList;

.field public final p:Ljava/util/List;


# direct methods
.method public constructor <init>(Lld;La42;Ljava/util/ArrayList;Lqf2;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget v0, p4, Lqf2;->b:I

    .line 5
    .line 6
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    add-int/lit8 v1, v1, 0x1

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-ne v0, v1, :cond_7

    .line 14
    .line 15
    iget v0, p4, Lqf2;->b:I

    .line 16
    .line 17
    const-string v1, "FloatList is empty."

    .line 18
    .line 19
    if-eqz v0, :cond_6

    .line 20
    .line 21
    iget-object v3, p4, Lqf2;->a:[F

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    aget v5, v3, v4

    .line 25
    .line 26
    const/4 v6, 0x0

    .line 27
    cmpg-float v5, v5, v6

    .line 28
    .line 29
    if-nez v5, :cond_5

    .line 30
    .line 31
    if-eqz v0, :cond_4

    .line 32
    .line 33
    add-int/lit8 v0, v0, -0x1

    .line 34
    .line 35
    aget v0, v3, v0

    .line 36
    .line 37
    const/high16 v1, 0x3f800000    # 1.0f

    .line 38
    .line 39
    cmpg-float v0, v0, v1

    .line 40
    .line 41
    if-nez v0, :cond_3

    .line 42
    .line 43
    iput-object p1, p0, Lib2;->n:Lld;

    .line 44
    .line 45
    iput-object p2, p0, Lib2;->p:Ljava/util/List;

    .line 46
    .line 47
    new-instance p1, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    :goto_0
    if-ge v4, p2, :cond_1

    .line 57
    .line 58
    add-int/lit8 v0, v4, 0x1

    .line 59
    .line 60
    invoke-virtual {p4, v0}, Lqf2;->b(I)F

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    invoke-virtual {p4, v4}, Lqf2;->b(I)F

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    sub-float/2addr v3, v5

    .line 69
    const v5, 0x38d1b717    # 1.0E-4f

    .line 70
    .line 71
    .line 72
    cmpl-float v3, v3, v5

    .line 73
    .line 74
    if-lez v3, :cond_0

    .line 75
    .line 76
    new-instance v3, Lhb2;

    .line 77
    .line 78
    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    check-cast v4, Lcl0;

    .line 83
    .line 84
    invoke-virtual {p4, v0}, Lqf2;->b(I)F

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    invoke-direct {v3, p0, v4, v6, v5}, Lhb2;-><init>(Lib2;Lcl0;FF)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    invoke-virtual {p4, v0}, Lqf2;->b(I)F

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    move v6, v3

    .line 99
    :cond_0
    move v4, v0

    .line 100
    goto :goto_0

    .line 101
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 102
    .line 103
    .line 104
    move-result p2

    .line 105
    add-int/lit8 p2, p2, -0x1

    .line 106
    .line 107
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    check-cast p2, Lhb2;

    .line 112
    .line 113
    iget p3, p2, Lhb2;->c:F

    .line 114
    .line 115
    cmpl-float p4, v1, p3

    .line 116
    .line 117
    if-ltz p4, :cond_2

    .line 118
    .line 119
    iput p3, p2, Lhb2;->c:F

    .line 120
    .line 121
    iput v1, p2, Lhb2;->d:F

    .line 122
    .line 123
    iput-object p1, p0, Lib2;->o:Ljava/util/ArrayList;

    .line 124
    .line 125
    return-void

    .line 126
    :cond_2
    const-string p0, "endOutlineProgress is expected to be equal or greater than startOutlineProgress"

    .line 127
    .line 128
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    throw v2

    .line 132
    :cond_3
    const-string p0, "Last outline progress value is expected to be one"

    .line 133
    .line 134
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    throw v2

    .line 138
    :cond_4
    invoke-static {v1}, Lq73;->l(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    throw v2

    .line 142
    :cond_5
    const-string p0, "First outline progress value is expected to be zero"

    .line 143
    .line 144
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    throw v2

    .line 148
    :cond_6
    invoke-static {v1}, Lq73;->l(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    throw v2

    .line 152
    :cond_7
    const-string p0, "Outline progress size is expected to be the cubics size + 1"

    .line 153
    .line 154
    invoke-static {p0}, Lk21;->f(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    throw v2
.end method


# virtual methods
.method public final a()I
    .locals 0

    .line 1
    iget-object p0, p0, Lib2;->o:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lhb2;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    check-cast p1, Lhb2;

    .line 8
    .line 9
    invoke-super {p0, p1}, Lw;->contains(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lib2;->o:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lhb2;

    .line 8
    .line 9
    return-object p0
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .locals 1

    .line 1
    instance-of v0, p1, Lhb2;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, -0x1

    .line 6
    return p0

    .line 7
    :cond_0
    check-cast p1, Lhb2;

    .line 8
    .line 9
    invoke-super {p0, p1}, Lj1;->indexOf(Ljava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    .line 1
    instance-of v0, p1, Lhb2;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, -0x1

    .line 6
    return p0

    .line 7
    :cond_0
    check-cast p1, Lhb2;

    .line 8
    .line 9
    invoke-super {p0, p1}, Lj1;->lastIndexOf(Ljava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method
