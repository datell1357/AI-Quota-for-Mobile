.class public final Lqy;
.super Lzf5;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public h:Ldd1;

.field public i:J

.field public final synthetic j:Landroid/graphics/Shader;


# direct methods
.method public constructor <init>(Landroid/graphics/Shader;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lqy;->j:Landroid/graphics/Shader;

    .line 5
    .line 6
    const-wide v0, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    iput-wide v0, p0, Lqy;->i:J

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final j(FJLlb;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lqy;->h:Ldd1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-wide v2, p0, Lqy;->i:J

    .line 7
    .line 8
    invoke-static {v2, v3, p2, p3}, Lmn3;->a(JJ)Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-nez v2, :cond_3

    .line 13
    .line 14
    :cond_0
    invoke-static {p2, p3}, Lmn3;->c(J)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iput-object v1, p0, Lqy;->h:Ldd1;

    .line 21
    .line 22
    const-wide p2, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    iput-wide p2, p0, Lqy;->i:J

    .line 28
    .line 29
    move-object v0, v1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object v0, p0, Lqy;->h:Ldd1;

    .line 32
    .line 33
    if-nez v0, :cond_2

    .line 34
    .line 35
    new-instance v0, Ldd1;

    .line 36
    .line 37
    const/16 v2, 0x16

    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    invoke-direct {v0, v2, v3}, Ldd1;-><init>(IZ)V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Lqy;->h:Ldd1;

    .line 44
    .line 45
    :cond_2
    iget-object v2, p0, Lqy;->j:Landroid/graphics/Shader;

    .line 46
    .line 47
    iput-object v2, v0, Ldd1;->o:Ljava/lang/Object;

    .line 48
    .line 49
    iput-object v0, p0, Lqy;->h:Ldd1;

    .line 50
    .line 51
    iput-wide p2, p0, Lqy;->i:J

    .line 52
    .line 53
    :cond_3
    :goto_0
    invoke-virtual {p4}, Llb;->a()J

    .line 54
    .line 55
    .line 56
    move-result-wide p2

    .line 57
    sget-wide v2, Lt70;->b:J

    .line 58
    .line 59
    invoke-static {p2, p3, v2, v3}, Lt70;->c(JJ)Z

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    if-nez p0, :cond_4

    .line 64
    .line 65
    invoke-virtual {p4, v2, v3}, Llb;->f(J)V

    .line 66
    .line 67
    .line 68
    :cond_4
    iget-object p0, p4, Llb;->p:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast p0, Landroid/graphics/Shader;

    .line 71
    .line 72
    if-eqz v0, :cond_5

    .line 73
    .line 74
    iget-object p2, v0, Ldd1;->o:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast p2, Landroid/graphics/Shader;

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_5
    move-object p2, v1

    .line 80
    :goto_1
    invoke-static {p0, p2}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    if-nez p0, :cond_7

    .line 85
    .line 86
    if-eqz v0, :cond_6

    .line 87
    .line 88
    iget-object p0, v0, Ldd1;->o:Ljava/lang/Object;

    .line 89
    .line 90
    move-object v1, p0

    .line 91
    check-cast v1, Landroid/graphics/Shader;

    .line 92
    .line 93
    :cond_6
    invoke-virtual {p4, v1}, Llb;->h(Landroid/graphics/Shader;)V

    .line 94
    .line 95
    .line 96
    :cond_7
    iget-object p0, p4, Llb;->o:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast p0, Landroid/graphics/Paint;

    .line 99
    .line 100
    invoke-virtual {p0}, Landroid/graphics/Paint;->getAlpha()I

    .line 101
    .line 102
    .line 103
    move-result p0

    .line 104
    int-to-float p0, p0

    .line 105
    const/high16 p2, 0x437f0000    # 255.0f

    .line 106
    .line 107
    div-float/2addr p0, p2

    .line 108
    cmpg-float p0, p0, p1

    .line 109
    .line 110
    if-nez p0, :cond_8

    .line 111
    .line 112
    return-void

    .line 113
    :cond_8
    invoke-virtual {p4, p1}, Llb;->d(F)V

    .line 114
    .line 115
    .line 116
    return-void
.end method
