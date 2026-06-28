.class public final Lgv2;
.super Landroid/text/style/ReplacementSpan;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public n:Landroid/graphics/Paint$FontMetricsInt;

.field public o:I

.field public p:I

.field public q:Z


# virtual methods
.method public final a()Landroid/graphics/Paint$FontMetricsInt;
    .locals 0

    .line 1
    iget-object p0, p0, Lgv2;->n:Landroid/graphics/Paint$FontMetricsInt;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const-string p0, "fontMetrics"

    .line 7
    .line 8
    invoke-static {p0}, Lnt1;->X(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    throw p0
.end method

.method public final b()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lgv2;->q:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "PlaceholderSpan is not laid out yet."

    .line 6
    .line 7
    invoke-static {v0}, Lbr1;->b(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget p0, p0, Lgv2;->p:I

    .line 11
    .line 12
    return p0
.end method

.method public final c()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lgv2;->q:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "PlaceholderSpan is not laid out yet."

    .line 6
    .line 7
    invoke-static {v0}, Lbr1;->b(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget p0, p0, Lgv2;->o:I

    .line 11
    .line 12
    return p0
.end method

.method public final draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0

    .line 1
    const/4 p2, 0x1

    .line 2
    iput-boolean p2, p0, Lgv2;->q:Z

    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lgv2;->n:Landroid/graphics/Paint$FontMetricsInt;

    .line 12
    .line 13
    invoke-virtual {p0}, Lgv2;->a()Landroid/graphics/Paint$FontMetricsInt;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 18
    .line 19
    invoke-virtual {p0}, Lgv2;->a()Landroid/graphics/Paint$FontMetricsInt;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    iget p2, p2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 24
    .line 25
    if-le p1, p2, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-string p1, "Invalid fontMetrics: line height can not be negative."

    .line 29
    .line 30
    invoke-static {p1}, Lbr1;->a(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    const-wide/16 p1, 0x0

    .line 34
    .line 35
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    .line 36
    .line 37
    .line 38
    move-result-wide p3

    .line 39
    double-to-float p3, p3

    .line 40
    float-to-int p3, p3

    .line 41
    iput p3, p0, Lgv2;->o:I

    .line 42
    .line 43
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    .line 44
    .line 45
    .line 46
    move-result-wide p1

    .line 47
    double-to-float p1, p1

    .line 48
    float-to-int p1, p1

    .line 49
    iput p1, p0, Lgv2;->p:I

    .line 50
    .line 51
    if-eqz p5, :cond_2

    .line 52
    .line 53
    invoke-virtual {p0}, Lgv2;->a()Landroid/graphics/Paint$FontMetricsInt;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 58
    .line 59
    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 60
    .line 61
    invoke-virtual {p0}, Lgv2;->a()Landroid/graphics/Paint$FontMetricsInt;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 66
    .line 67
    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 68
    .line 69
    invoke-virtual {p0}, Lgv2;->a()Landroid/graphics/Paint$FontMetricsInt;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    .line 74
    .line 75
    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    .line 76
    .line 77
    iget p1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 78
    .line 79
    invoke-virtual {p0}, Lgv2;->b()I

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    neg-int p2, p2

    .line 84
    if-le p1, p2, :cond_1

    .line 85
    .line 86
    invoke-virtual {p0}, Lgv2;->b()I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    neg-int p1, p1

    .line 91
    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 92
    .line 93
    :cond_1
    invoke-virtual {p0}, Lgv2;->a()Landroid/graphics/Paint$FontMetricsInt;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 98
    .line 99
    iget p2, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 100
    .line 101
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 106
    .line 107
    invoke-virtual {p0}, Lgv2;->a()Landroid/graphics/Paint$FontMetricsInt;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 112
    .line 113
    iget p2, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 114
    .line 115
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 120
    .line 121
    :cond_2
    invoke-virtual {p0}, Lgv2;->c()I

    .line 122
    .line 123
    .line 124
    move-result p0

    .line 125
    return p0
.end method
