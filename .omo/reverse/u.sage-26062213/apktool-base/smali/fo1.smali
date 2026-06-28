.class public final Lfo1;
.super Lgs2;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final s:Lao1;


# direct methods
.method public constructor <init>(Lao1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lgs2;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lfo1;->s:Lao1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final h()J
    .locals 6

    .line 1
    iget-object p0, p0, Lfo1;->s:Lao1;

    .line 2
    .line 3
    invoke-interface {p0}, Lao1;->b()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 8
    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    int-to-float v0, v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v0, v1

    .line 14
    :goto_0
    invoke-interface {p0}, Lao1;->a()I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-lez p0, :cond_1

    .line 19
    .line 20
    int-to-float v1, p0

    .line 21
    :cond_1
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    int-to-long v2, p0

    .line 26
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    int-to-long v0, p0

    .line 31
    const/16 p0, 0x20

    .line 32
    .line 33
    shl-long/2addr v2, p0

    .line 34
    const-wide v4, 0xffffffffL

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    and-long/2addr v0, v4

    .line 40
    or-long/2addr v0, v2

    .line 41
    return-wide v0
.end method

.method public final i(Lzy1;)V
    .locals 8

    .line 1
    iget-object p1, p1, Lzy1;->n:Lx20;

    .line 2
    .line 3
    iget-object p0, p0, Lfo1;->s:Lao1;

    .line 4
    .line 5
    invoke-interface {p0}, Lao1;->b()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/high16 v1, 0x3f800000    # 1.0f

    .line 10
    .line 11
    if-lez v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p1}, Lkx0;->d()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    const/16 v4, 0x20

    .line 18
    .line 19
    shr-long/2addr v2, v4

    .line 20
    long-to-int v2, v2

    .line 21
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    int-to-float v0, v0

    .line 26
    div-float/2addr v2, v0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v2, v1

    .line 29
    :goto_0
    invoke-interface {p0}, Lao1;->a()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-lez v0, :cond_1

    .line 34
    .line 35
    invoke-interface {p1}, Lkx0;->d()J

    .line 36
    .line 37
    .line 38
    move-result-wide v3

    .line 39
    const-wide v5, 0xffffffffL

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    and-long/2addr v3, v5

    .line 45
    long-to-int v1, v3

    .line 46
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    int-to-float v0, v0

    .line 51
    div-float/2addr v1, v0

    .line 52
    :cond_1
    iget-object v0, p1, Lx20;->o:Leh;

    .line 53
    .line 54
    invoke-virtual {v0}, Leh;->z()J

    .line 55
    .line 56
    .line 57
    move-result-wide v3

    .line 58
    invoke-virtual {v0}, Leh;->u()Lv20;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    invoke-interface {v5}, Lv20;->j()V

    .line 63
    .line 64
    .line 65
    :try_start_0
    iget-object v5, v0, Leh;->o:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v5, Ldh1;

    .line 68
    .line 69
    const-wide/16 v6, 0x0

    .line 70
    .line 71
    invoke-virtual {v5, v2, v1, v6, v7}, Ldh1;->s(FFJ)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p1, Lx20;->o:Leh;

    .line 75
    .line 76
    invoke-virtual {p1}, Leh;->u()Lv20;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-static {p1}, Lz8;->a(Lv20;)Landroid/graphics/Canvas;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-interface {p0, p1}, Lao1;->d(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Leh;->u()Lv20;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-interface {p0}, Lv20;->h()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v3, v4}, Leh;->K(J)V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :catchall_0
    move-exception p0

    .line 99
    invoke-virtual {v0}, Leh;->u()Lv20;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-interface {p1}, Lv20;->h()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v3, v4}, Leh;->K(J)V

    .line 107
    .line 108
    .line 109
    throw p0
.end method
