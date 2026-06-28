.class public final Lei1;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lbi1;


# static fields
.field public static final D:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field public A:Z

.field public B:I

.field public C:I

.field public final b:Ly20;

.field public final c:Lx20;

.field public final d:Landroid/view/RenderNode;

.field public e:J

.field public f:Landroid/graphics/Paint;

.field public g:Landroid/graphics/Matrix;

.field public h:Z

.field public i:J

.field public j:I

.field public k:I

.field public l:F

.field public m:Z

.field public n:J

.field public o:F

.field public p:F

.field public q:F

.field public r:J

.field public s:J

.field public t:F

.field public u:Z

.field public v:I

.field public w:I

.field public x:I

.field public y:I

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lei1;->D:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lq9;Ly20;Lx20;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lei1;->b:Ly20;

    .line 5
    .line 6
    iput-object p3, p0, Lei1;->c:Lx20;

    .line 7
    .line 8
    const-string p2, "Compose"

    .line 9
    .line 10
    invoke-static {p2, p1}, Landroid/view/RenderNode;->create(Ljava/lang/String;Landroid/view/View;)Landroid/view/RenderNode;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lei1;->d:Landroid/view/RenderNode;

    .line 15
    .line 16
    const-wide/16 p2, 0x0

    .line 17
    .line 18
    iput-wide p2, p0, Lei1;->e:J

    .line 19
    .line 20
    iput-wide p2, p0, Lei1;->i:J

    .line 21
    .line 22
    sget-object p2, Lei1;->D:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    .line 24
    const/4 p3, 0x0

    .line 25
    invoke-virtual {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    if-eqz p2, :cond_1

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/view/RenderNode;->getScaleX()F

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    invoke-virtual {p1, p2}, Landroid/view/RenderNode;->setScaleX(F)Z

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/view/RenderNode;->getScaleY()F

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    invoke-virtual {p1, p2}, Landroid/view/RenderNode;->setScaleY(F)Z

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/view/RenderNode;->getTranslationX()F

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    invoke-virtual {p1, p2}, Landroid/view/RenderNode;->setTranslationX(F)Z

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/view/RenderNode;->getTranslationY()F

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    invoke-virtual {p1, p2}, Landroid/view/RenderNode;->setTranslationY(F)Z

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/view/RenderNode;->getElevation()F

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    invoke-virtual {p1, p2}, Landroid/view/RenderNode;->setElevation(F)Z

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/view/RenderNode;->getRotation()F

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    invoke-virtual {p1, p2}, Landroid/view/RenderNode;->setRotation(F)Z

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Landroid/view/RenderNode;->getRotationX()F

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    invoke-virtual {p1, p2}, Landroid/view/RenderNode;->setRotationX(F)Z

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Landroid/view/RenderNode;->getRotationY()F

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    invoke-virtual {p1, p2}, Landroid/view/RenderNode;->setRotationY(F)Z

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Landroid/view/RenderNode;->getCameraDistance()F

    .line 88
    .line 89
    .line 90
    move-result p2

    .line 91
    invoke-virtual {p1, p2}, Landroid/view/RenderNode;->setCameraDistance(F)Z

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Landroid/view/RenderNode;->getPivotX()F

    .line 95
    .line 96
    .line 97
    move-result p2

    .line 98
    invoke-virtual {p1, p2}, Landroid/view/RenderNode;->setPivotX(F)Z

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Landroid/view/RenderNode;->getPivotY()F

    .line 102
    .line 103
    .line 104
    move-result p2

    .line 105
    invoke-virtual {p1, p2}, Landroid/view/RenderNode;->setPivotY(F)Z

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1}, Landroid/view/RenderNode;->getClipToOutline()Z

    .line 109
    .line 110
    .line 111
    move-result p2

    .line 112
    invoke-virtual {p1, p2}, Landroid/view/RenderNode;->setClipToOutline(Z)Z

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, p3}, Landroid/view/RenderNode;->setClipToBounds(Z)Z

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1}, Landroid/view/RenderNode;->getAlpha()F

    .line 119
    .line 120
    .line 121
    move-result p2

    .line 122
    invoke-virtual {p1, p2}, Landroid/view/RenderNode;->setAlpha(F)Z

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1}, Landroid/view/RenderNode;->isValid()Z

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, p3, p3, p3, p3}, Landroid/view/RenderNode;->setLeftTopRightBottom(IIII)Z

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, p3}, Landroid/view/RenderNode;->offsetLeftAndRight(I)Z

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, p3}, Landroid/view/RenderNode;->offsetTopAndBottom(I)Z

    .line 135
    .line 136
    .line 137
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 138
    .line 139
    const/16 v0, 0x1c

    .line 140
    .line 141
    if-lt p2, v0, :cond_0

    .line 142
    .line 143
    invoke-static {p1}, Lc63;->a(Landroid/view/RenderNode;)I

    .line 144
    .line 145
    .line 146
    move-result p2

    .line 147
    invoke-static {p1, p2}, Lc63;->c(Landroid/view/RenderNode;I)V

    .line 148
    .line 149
    .line 150
    invoke-static {p1}, Lc63;->b(Landroid/view/RenderNode;)I

    .line 151
    .line 152
    .line 153
    move-result p2

    .line 154
    invoke-static {p1, p2}, Lc63;->d(Landroid/view/RenderNode;I)V

    .line 155
    .line 156
    .line 157
    :cond_0
    invoke-static {p1}, Lb63;->a(Landroid/view/RenderNode;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1, p3}, Landroid/view/RenderNode;->setLayerType(I)Z

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1}, Landroid/view/RenderNode;->hasOverlappingRendering()Z

    .line 164
    .line 165
    .line 166
    move-result p2

    .line 167
    invoke-virtual {p1, p2}, Landroid/view/RenderNode;->setHasOverlappingRendering(Z)Z

    .line 168
    .line 169
    .line 170
    :cond_1
    invoke-virtual {p1, p3}, Landroid/view/RenderNode;->setClipToBounds(Z)Z

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0, p3}, Lei1;->b(I)V

    .line 174
    .line 175
    .line 176
    iput p3, p0, Lei1;->j:I

    .line 177
    .line 178
    const/4 p1, 0x3

    .line 179
    iput p1, p0, Lei1;->k:I

    .line 180
    .line 181
    const/high16 p1, 0x3f800000    # 1.0f

    .line 182
    .line 183
    iput p1, p0, Lei1;->l:F

    .line 184
    .line 185
    const-wide p2, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    iput-wide p2, p0, Lei1;->n:J

    .line 191
    .line 192
    iput p1, p0, Lei1;->o:F

    .line 193
    .line 194
    iput p1, p0, Lei1;->p:F

    .line 195
    .line 196
    sget-wide p1, Lt70;->b:J

    .line 197
    .line 198
    iput-wide p1, p0, Lei1;->r:J

    .line 199
    .line 200
    iput-wide p1, p0, Lei1;->s:J

    .line 201
    .line 202
    const/high16 p1, 0x41000000    # 8.0f

    .line 203
    .line 204
    iput p1, p0, Lei1;->t:F

    .line 205
    .line 206
    return-void
.end method


# virtual methods
.method public final A()Low;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final B(I)V
    .locals 0

    .line 1
    iput p1, p0, Lei1;->j:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lei1;->Q()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final C()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object p0, p0, Lei1;->d:Landroid/view/RenderNode;

    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/view/RenderNode;->setRotation(F)Z

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final D(J)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1c

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    iput-wide p1, p0, Lei1;->s:J

    .line 8
    .line 9
    iget-object p0, p0, Lei1;->d:Landroid/view/RenderNode;

    .line 10
    .line 11
    invoke-static {p1, p2}, Lc75;->R(J)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-static {p0, p1}, Lc63;->d(Landroid/view/RenderNode;I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final E(F)V
    .locals 0

    .line 1
    iput p1, p0, Lei1;->p:F

    .line 2
    .line 3
    iget-object p0, p0, Lei1;->d:Landroid/view/RenderNode;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/view/RenderNode;->setScaleY(F)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final F()Landroid/graphics/Matrix;
    .locals 1

    .line 1
    iget-object v0, p0, Lei1;->g:Landroid/graphics/Matrix;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/graphics/Matrix;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lei1;->g:Landroid/graphics/Matrix;

    .line 11
    .line 12
    :cond_0
    iget-object p0, p0, Lei1;->d:Landroid/view/RenderNode;

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/view/RenderNode;->getMatrix(Landroid/graphics/Matrix;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public final G(IIJ)V
    .locals 3

    .line 1
    iput p1, p0, Lei1;->B:I

    .line 2
    .line 3
    iput p2, p0, Lei1;->C:I

    .line 4
    .line 5
    iget-wide p1, p0, Lei1;->e:J

    .line 6
    .line 7
    invoke-static {p1, p2, p3, p4}, Lrs1;->a(JJ)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iput-wide p3, p0, Lei1;->e:J

    .line 12
    .line 13
    invoke-virtual {p0}, Lei1;->S()V

    .line 14
    .line 15
    .line 16
    if-nez p1, :cond_1

    .line 17
    .line 18
    iget-boolean p1, p0, Lei1;->m:Z

    .line 19
    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    iget-wide p1, p0, Lei1;->n:J

    .line 23
    .line 24
    const-wide v0, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    invoke-static {p1, p2, v0, v1}, Lgo2;->b(JJ)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    :cond_0
    iget-object p1, p0, Lei1;->d:Landroid/view/RenderNode;

    .line 36
    .line 37
    const/16 p2, 0x20

    .line 38
    .line 39
    shr-long v0, p3, p2

    .line 40
    .line 41
    long-to-int p2, v0

    .line 42
    int-to-float p2, p2

    .line 43
    const/high16 v0, 0x40000000    # 2.0f

    .line 44
    .line 45
    div-float/2addr p2, v0

    .line 46
    iget v1, p0, Lei1;->v:I

    .line 47
    .line 48
    int-to-float v1, v1

    .line 49
    add-float/2addr p2, v1

    .line 50
    invoke-virtual {p1, p2}, Landroid/view/RenderNode;->setPivotX(F)Z

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lei1;->d:Landroid/view/RenderNode;

    .line 54
    .line 55
    const-wide v1, 0xffffffffL

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    and-long p2, p3, v1

    .line 61
    .line 62
    long-to-int p2, p2

    .line 63
    int-to-float p2, p2

    .line 64
    div-float/2addr p2, v0

    .line 65
    iget p0, p0, Lei1;->w:I

    .line 66
    .line 67
    int-to-float p0, p0

    .line 68
    add-float/2addr p2, p0

    .line 69
    invoke-virtual {p1, p2}, Landroid/view/RenderNode;->setPivotY(F)Z

    .line 70
    .line 71
    .line 72
    :cond_1
    return-void
.end method

.method public final H()F
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final I(F)V
    .locals 0

    .line 1
    iput p1, p0, Lei1;->t:F

    .line 2
    .line 3
    iget-object p0, p0, Lei1;->d:Landroid/view/RenderNode;

    .line 4
    .line 5
    neg-float p1, p1

    .line 6
    invoke-virtual {p0, p1}, Landroid/view/RenderNode;->setCameraDistance(F)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final J()F
    .locals 0

    .line 1
    iget p0, p0, Lei1;->q:F

    .line 2
    .line 3
    return p0
.end method

.method public final K()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lei1;->d:Landroid/view/RenderNode;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/RenderNode;->isValid()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final L()F
    .locals 0

    .line 1
    iget p0, p0, Lei1;->p:F

    .line 2
    .line 3
    return p0
.end method

.method public final M()F
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final N()I
    .locals 0

    .line 1
    iget p0, p0, Lei1;->k:I

    .line 2
    .line 3
    return p0
.end method

.method public final O(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lei1;->n:J

    .line 2
    .line 3
    invoke-virtual {p0}, Lei1;->R()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final P()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lei1;->r:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final Q()V
    .locals 4

    .line 1
    iget v0, p0, Lei1;->j:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget v2, p0, Lei1;->k:I

    .line 8
    .line 9
    const/4 v3, 0x3

    .line 10
    if-ne v2, v3, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lei1;->b(I)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Lei1;->b(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final R()V
    .locals 7

    .line 1
    iget-wide v0, p0, Lei1;->n:J

    .line 2
    .line 3
    const-wide v2, 0x7fffffff7fffffffL

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    and-long/2addr v2, v0

    .line 9
    const-wide v4, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    cmp-long v2, v2, v4

    .line 15
    .line 16
    const-wide v3, 0xffffffffL

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    const/16 v5, 0x20

    .line 22
    .line 23
    if-nez v2, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lei1;->m:Z

    .line 27
    .line 28
    iget-object v0, p0, Lei1;->d:Landroid/view/RenderNode;

    .line 29
    .line 30
    iget-wide v1, p0, Lei1;->e:J

    .line 31
    .line 32
    shr-long/2addr v1, v5

    .line 33
    long-to-int v1, v1

    .line 34
    int-to-float v1, v1

    .line 35
    const/high16 v2, 0x40000000    # 2.0f

    .line 36
    .line 37
    div-float/2addr v1, v2

    .line 38
    iget v5, p0, Lei1;->v:I

    .line 39
    .line 40
    int-to-float v5, v5

    .line 41
    add-float/2addr v1, v5

    .line 42
    invoke-virtual {v0, v1}, Landroid/view/RenderNode;->setPivotX(F)Z

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lei1;->d:Landroid/view/RenderNode;

    .line 46
    .line 47
    iget-wide v5, p0, Lei1;->e:J

    .line 48
    .line 49
    and-long/2addr v3, v5

    .line 50
    long-to-int v1, v3

    .line 51
    int-to-float v1, v1

    .line 52
    div-float/2addr v1, v2

    .line 53
    iget p0, p0, Lei1;->w:I

    .line 54
    .line 55
    int-to-float p0, p0

    .line 56
    add-float/2addr v1, p0

    .line 57
    invoke-virtual {v0, v1}, Landroid/view/RenderNode;->setPivotY(F)Z

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_0
    const/4 v2, 0x0

    .line 62
    iput-boolean v2, p0, Lei1;->m:Z

    .line 63
    .line 64
    iget-object v2, p0, Lei1;->d:Landroid/view/RenderNode;

    .line 65
    .line 66
    shr-long/2addr v0, v5

    .line 67
    long-to-int v0, v0

    .line 68
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    iget v1, p0, Lei1;->v:I

    .line 73
    .line 74
    int-to-float v1, v1

    .line 75
    add-float/2addr v0, v1

    .line 76
    invoke-virtual {v2, v0}, Landroid/view/RenderNode;->setPivotX(F)Z

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lei1;->d:Landroid/view/RenderNode;

    .line 80
    .line 81
    iget-wide v1, p0, Lei1;->n:J

    .line 82
    .line 83
    and-long/2addr v1, v3

    .line 84
    long-to-int v1, v1

    .line 85
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    iget p0, p0, Lei1;->w:I

    .line 90
    .line 91
    int-to-float p0, p0

    .line 92
    add-float/2addr v1, p0

    .line 93
    invoke-virtual {v0, v1}, Landroid/view/RenderNode;->setPivotY(F)Z

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method public final S()V
    .locals 9

    .line 1
    iget-object v0, p0, Lei1;->d:Landroid/view/RenderNode;

    .line 2
    .line 3
    iget v1, p0, Lei1;->B:I

    .line 4
    .line 5
    iget v2, p0, Lei1;->v:I

    .line 6
    .line 7
    sub-int v2, v1, v2

    .line 8
    .line 9
    iget v3, p0, Lei1;->C:I

    .line 10
    .line 11
    iget v4, p0, Lei1;->w:I

    .line 12
    .line 13
    sub-int v4, v3, v4

    .line 14
    .line 15
    iget-wide v5, p0, Lei1;->e:J

    .line 16
    .line 17
    const/16 v7, 0x20

    .line 18
    .line 19
    shr-long v7, v5, v7

    .line 20
    .line 21
    long-to-int v7, v7

    .line 22
    add-int/2addr v1, v7

    .line 23
    iget v7, p0, Lei1;->x:I

    .line 24
    .line 25
    add-int/2addr v1, v7

    .line 26
    const-wide v7, 0xffffffffL

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    and-long/2addr v5, v7

    .line 32
    long-to-int v5, v5

    .line 33
    add-int/2addr v3, v5

    .line 34
    iget p0, p0, Lei1;->y:I

    .line 35
    .line 36
    add-int/2addr v3, p0

    .line 37
    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/view/RenderNode;->setLeftTopRightBottom(IIII)Z

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final a()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lei1;->u:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-boolean v3, p0, Lei1;->h:Z

    .line 8
    .line 9
    if-nez v3, :cond_0

    .line 10
    .line 11
    move v3, v2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v3, v1

    .line 14
    :goto_0
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-boolean v0, p0, Lei1;->h:Z

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    move v1, v2

    .line 21
    :cond_1
    iget-boolean v0, p0, Lei1;->z:Z

    .line 22
    .line 23
    if-eq v3, v0, :cond_2

    .line 24
    .line 25
    iput-boolean v3, p0, Lei1;->z:Z

    .line 26
    .line 27
    iget-object v0, p0, Lei1;->d:Landroid/view/RenderNode;

    .line 28
    .line 29
    invoke-virtual {v0, v3}, Landroid/view/RenderNode;->setClipToBounds(Z)Z

    .line 30
    .line 31
    .line 32
    :cond_2
    iget-boolean v0, p0, Lei1;->A:Z

    .line 33
    .line 34
    if-eq v1, v0, :cond_3

    .line 35
    .line 36
    iput-boolean v1, p0, Lei1;->A:Z

    .line 37
    .line 38
    iget-object p0, p0, Lei1;->d:Landroid/view/RenderNode;

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Landroid/view/RenderNode;->setClipToOutline(Z)Z

    .line 41
    .line 42
    .line 43
    :cond_3
    return-void
.end method

.method public final b(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lei1;->d:Landroid/view/RenderNode;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne p1, v2, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/RenderNode;->setLayerType(I)Z

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lei1;->f:Landroid/graphics/Paint;

    .line 11
    .line 12
    invoke-virtual {v0, p0}, Landroid/view/RenderNode;->setLayerPaint(Landroid/graphics/Paint;)Z

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v2}, Landroid/view/RenderNode;->setHasOverlappingRendering(Z)Z

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    const/4 v3, 0x0

    .line 20
    if-ne p1, v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0, v3}, Landroid/view/RenderNode;->setLayerType(I)Z

    .line 23
    .line 24
    .line 25
    iget-object p0, p0, Lei1;->f:Landroid/graphics/Paint;

    .line 26
    .line 27
    invoke-virtual {v0, p0}, Landroid/view/RenderNode;->setLayerPaint(Landroid/graphics/Paint;)Z

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v3}, Landroid/view/RenderNode;->setHasOverlappingRendering(Z)Z

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    invoke-virtual {v0, v3}, Landroid/view/RenderNode;->setLayerType(I)Z

    .line 35
    .line 36
    .line 37
    iget-object p0, p0, Lei1;->f:Landroid/graphics/Paint;

    .line 38
    .line 39
    invoke-virtual {v0, p0}, Landroid/view/RenderNode;->setLayerPaint(Landroid/graphics/Paint;)Z

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v2}, Landroid/view/RenderNode;->setHasOverlappingRendering(Z)Z

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final c()F
    .locals 0

    .line 1
    iget p0, p0, Lei1;->l:F

    .line 2
    .line 3
    return p0
.end method

.method public final d()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object p0, p0, Lei1;->d:Landroid/view/RenderNode;

    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/view/RenderNode;->setRotationX(F)Z

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final e(F)V
    .locals 0

    .line 1
    iput p1, p0, Lei1;->l:F

    .line 2
    .line 3
    iget-object p0, p0, Lei1;->d:Landroid/view/RenderNode;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/view/RenderNode;->setAlpha(F)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final f()F
    .locals 0

    .line 1
    iget p0, p0, Lei1;->o:F

    .line 2
    .line 3
    return p0
.end method

.method public final g(F)V
    .locals 0

    .line 1
    iput p1, p0, Lei1;->q:F

    .line 2
    .line 3
    iget-object p0, p0, Lei1;->d:Landroid/view/RenderNode;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/view/RenderNode;->setElevation(F)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final h(IIII)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-ltz p1, :cond_0

    .line 4
    .line 5
    if-ltz p2, :cond_0

    .line 6
    .line 7
    if-ltz p3, :cond_0

    .line 8
    .line 9
    if-ltz p4, :cond_0

    .line 10
    .line 11
    move v2, v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v2, v0

    .line 14
    :goto_0
    if-nez v2, :cond_1

    .line 15
    .line 16
    const-string v2, ", Top: "

    .line 17
    .line 18
    const-string v3, ", Right: "

    .line 19
    .line 20
    const-string v4, "Outsets cannot be negative! Left: "

    .line 21
    .line 22
    invoke-static {v4, p1, v2, p2, v3}, Lxw1;->v(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v3, ", Bottom: "

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-static {v2}, Lzq1;->a(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    iget v2, p0, Lei1;->v:I

    .line 45
    .line 46
    if-ne p1, v2, :cond_2

    .line 47
    .line 48
    iget v3, p0, Lei1;->w:I

    .line 49
    .line 50
    if-ne p2, v3, :cond_2

    .line 51
    .line 52
    iget v3, p0, Lei1;->x:I

    .line 53
    .line 54
    if-ne p3, v3, :cond_2

    .line 55
    .line 56
    iget v3, p0, Lei1;->y:I

    .line 57
    .line 58
    if-eq p4, v3, :cond_5

    .line 59
    .line 60
    :cond_2
    if-ne p1, v2, :cond_3

    .line 61
    .line 62
    iget v2, p0, Lei1;->w:I

    .line 63
    .line 64
    if-eq p2, v2, :cond_4

    .line 65
    .line 66
    :cond_3
    move v0, v1

    .line 67
    :cond_4
    iput p1, p0, Lei1;->v:I

    .line 68
    .line 69
    iput p2, p0, Lei1;->w:I

    .line 70
    .line 71
    iput p3, p0, Lei1;->x:I

    .line 72
    .line 73
    iput p4, p0, Lei1;->y:I

    .line 74
    .line 75
    invoke-virtual {p0}, Lei1;->S()V

    .line 76
    .line 77
    .line 78
    if-eqz v0, :cond_5

    .line 79
    .line 80
    invoke-virtual {p0}, Lei1;->R()V

    .line 81
    .line 82
    .line 83
    :cond_5
    return-void
.end method

.method public final i()F
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final j()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object p0, p0, Lei1;->d:Landroid/view/RenderNode;

    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/view/RenderNode;->setTranslationY(F)Z

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final k()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object p0, p0, Lei1;->d:Landroid/view/RenderNode;

    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/view/RenderNode;->setRotationY(F)Z

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final l()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lei1;->s:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final m(J)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1c

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    iput-wide p1, p0, Lei1;->r:J

    .line 8
    .line 9
    iget-object p0, p0, Lei1;->d:Landroid/view/RenderNode;

    .line 10
    .line 11
    invoke-static {p1, p2}, Lc75;->R(J)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-static {p0, p1}, Lc63;->c(Landroid/view/RenderNode;I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final n(Landroid/graphics/Outline;J)V
    .locals 0

    .line 1
    iput-wide p2, p0, Lei1;->i:J

    .line 2
    .line 3
    iget-object p2, p0, Lei1;->d:Landroid/view/RenderNode;

    .line 4
    .line 5
    invoke-virtual {p2, p1}, Landroid/view/RenderNode;->setOutline(Landroid/graphics/Outline;)Z

    .line 6
    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    iput-boolean p1, p0, Lei1;->h:Z

    .line 14
    .line 15
    invoke-virtual {p0}, Lei1;->a()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final o()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lei1;->Q()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final p(F)V
    .locals 0

    .line 1
    iput p1, p0, Lei1;->o:F

    .line 2
    .line 3
    iget-object p0, p0, Lei1;->d:Landroid/view/RenderNode;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/view/RenderNode;->setScaleX(F)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final q(I)V
    .locals 2

    .line 1
    iget v0, p0, Lei1;->k:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lei1;->k:I

    .line 7
    .line 8
    iget-object v0, p0, Lei1;->f:Landroid/graphics/Paint;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    new-instance v0, Landroid/graphics/Paint;

    .line 13
    .line 14
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lei1;->f:Landroid/graphics/Paint;

    .line 18
    .line 19
    :cond_1
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    .line 20
    .line 21
    invoke-static {p1}, Lse0;->G(I)Landroid/graphics/PorterDuff$Mode;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-direct {v1, p1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lei1;->Q()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final r()F
    .locals 0

    .line 1
    iget p0, p0, Lei1;->t:F

    .line 2
    .line 3
    return p0
.end method

.method public final s()V
    .locals 0

    .line 1
    iget-object p0, p0, Lei1;->d:Landroid/view/RenderNode;

    .line 2
    .line 3
    invoke-static {p0}, Lb63;->a(Landroid/view/RenderNode;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final t()F
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final u()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object p0, p0, Lei1;->d:Landroid/view/RenderNode;

    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/view/RenderNode;->setTranslationX(F)Z

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final v(Lv20;)V
    .locals 1

    .line 1
    sget-object v0, Lz8;->a:Landroid/graphics/Canvas;

    .line 2
    .line 3
    check-cast p1, Ly8;

    .line 4
    .line 5
    iget-object p1, p1, Ly8;->a:Landroid/graphics/Canvas;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    check-cast p1, Landroid/view/DisplayListCanvas;

    .line 11
    .line 12
    iget-object p0, p0, Lei1;->d:Landroid/view/RenderNode;

    .line 13
    .line 14
    invoke-virtual {p1, p0}, Landroid/view/DisplayListCanvas;->drawRenderNode(Landroid/view/RenderNode;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final w(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lei1;->u:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lei1;->a()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final x()I
    .locals 0

    .line 1
    iget p0, p0, Lei1;->j:I

    .line 2
    .line 3
    return p0
.end method

.method public final y()F
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final z(Las0;Lhy1;Lzh1;Lc8;)V
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    move-object/from16 v4, p4

    .line 10
    .line 11
    iget-object v5, v1, Lei1;->c:Lx20;

    .line 12
    .line 13
    iget-object v6, v5, Lx20;->o:Leh;

    .line 14
    .line 15
    iget-object v7, v1, Lei1;->d:Landroid/view/RenderNode;

    .line 16
    .line 17
    iget-wide v8, v1, Lei1;->e:J

    .line 18
    .line 19
    const/16 v10, 0x20

    .line 20
    .line 21
    shr-long/2addr v8, v10

    .line 22
    long-to-int v8, v8

    .line 23
    iget v9, v1, Lei1;->v:I

    .line 24
    .line 25
    add-int/2addr v8, v9

    .line 26
    iget v9, v1, Lei1;->x:I

    .line 27
    .line 28
    add-int/2addr v8, v9

    .line 29
    iget-wide v11, v1, Lei1;->i:J

    .line 30
    .line 31
    shr-long/2addr v11, v10

    .line 32
    long-to-int v9, v11

    .line 33
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    .line 34
    .line 35
    .line 36
    move-result v8

    .line 37
    iget-wide v11, v1, Lei1;->e:J

    .line 38
    .line 39
    const-wide v13, 0xffffffffL

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    and-long/2addr v11, v13

    .line 45
    long-to-int v9, v11

    .line 46
    iget v11, v1, Lei1;->w:I

    .line 47
    .line 48
    add-int/2addr v9, v11

    .line 49
    iget v11, v1, Lei1;->y:I

    .line 50
    .line 51
    add-int/2addr v9, v11

    .line 52
    iget-wide v11, v1, Lei1;->i:J

    .line 53
    .line 54
    and-long/2addr v11, v13

    .line 55
    long-to-int v11, v11

    .line 56
    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    .line 57
    .line 58
    .line 59
    move-result v9

    .line 60
    invoke-virtual {v7, v8, v9}, Landroid/view/RenderNode;->start(II)Landroid/view/DisplayListCanvas;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    iget v8, v1, Lei1;->v:I

    .line 65
    .line 66
    int-to-float v8, v8

    .line 67
    iget v9, v1, Lei1;->w:I

    .line 68
    .line 69
    int-to-float v9, v9

    .line 70
    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 71
    .line 72
    .line 73
    move-result v8

    .line 74
    int-to-long v11, v8

    .line 75
    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 76
    .line 77
    .line 78
    move-result v8

    .line 79
    int-to-long v8, v8

    .line 80
    shl-long/2addr v11, v10

    .line 81
    and-long/2addr v8, v13

    .line 82
    or-long/2addr v8, v11

    .line 83
    :try_start_0
    iget-object v11, v1, Lei1;->b:Ly20;

    .line 84
    .line 85
    iget-object v11, v11, Ly20;->a:Ly8;

    .line 86
    .line 87
    move-object v12, v7

    .line 88
    check-cast v12, Landroid/graphics/Canvas;

    .line 89
    .line 90
    iget-object v15, v11, Ly8;->a:Landroid/graphics/Canvas;

    .line 91
    .line 92
    iput-object v12, v11, Ly8;->a:Landroid/graphics/Canvas;

    .line 93
    .line 94
    iget v12, v1, Lei1;->v:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 95
    .line 96
    int-to-float v12, v12

    .line 97
    const/16 v16, 0x0

    .line 98
    .line 99
    cmpl-float v12, v12, v16

    .line 100
    .line 101
    if-gtz v12, :cond_1

    .line 102
    .line 103
    :try_start_1
    iget v12, v1, Lei1;->w:I

    .line 104
    .line 105
    int-to-float v12, v12

    .line 106
    cmpl-float v12, v12, v16

    .line 107
    .line 108
    if-lez v12, :cond_0

    .line 109
    .line 110
    move-object/from16 v17, v7

    .line 111
    .line 112
    move-wide/from16 v18, v13

    .line 113
    .line 114
    move-object/from16 v16, v15

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_0
    iget-wide v8, v1, Lei1;->e:J

    .line 118
    .line 119
    invoke-static {v8, v9}, Lse0;->H(J)J

    .line 120
    .line 121
    .line 122
    move-result-wide v8

    .line 123
    invoke-virtual {v6}, Leh;->v()Las0;

    .line 124
    .line 125
    .line 126
    move-result-object v10

    .line 127
    invoke-virtual {v6}, Leh;->x()Lhy1;

    .line 128
    .line 129
    .line 130
    move-result-object v12

    .line 131
    invoke-virtual {v6}, Leh;->u()Lv20;

    .line 132
    .line 133
    .line 134
    move-result-object v13

    .line 135
    move-object/from16 v16, v15

    .line 136
    .line 137
    invoke-virtual {v6}, Leh;->z()J

    .line 138
    .line 139
    .line 140
    move-result-wide v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 141
    move-object/from16 v17, v7

    .line 142
    .line 143
    :try_start_2
    iget-object v7, v6, Leh;->p:Ljava/lang/Object;

    .line 144
    .line 145
    check-cast v7, Lzh1;

    .line 146
    .line 147
    invoke-virtual {v6, v0}, Leh;->I(Las0;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v6, v2}, Leh;->J(Lhy1;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v6, v11}, Leh;->H(Lv20;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v6, v8, v9}, Leh;->K(J)V

    .line 157
    .line 158
    .line 159
    iput-object v3, v6, Leh;->p:Ljava/lang/Object;

    .line 160
    .line 161
    invoke-virtual {v11}, Ly8;->j()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 162
    .line 163
    .line 164
    :try_start_3
    invoke-virtual {v4, v5}, Lc8;->k(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 165
    .line 166
    .line 167
    :try_start_4
    invoke-virtual {v11}, Ly8;->h()V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v6, v10}, Leh;->I(Las0;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v6, v12}, Leh;->J(Lhy1;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v6, v13}, Leh;->H(Lv20;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v6, v14, v15}, Leh;->K(J)V

    .line 180
    .line 181
    .line 182
    iput-object v7, v6, Leh;->p:Ljava/lang/Object;

    .line 183
    .line 184
    :goto_0
    move-object/from16 v0, v16

    .line 185
    .line 186
    goto/16 :goto_3

    .line 187
    .line 188
    :catchall_0
    move-exception v0

    .line 189
    :goto_1
    move-object/from16 v2, v17

    .line 190
    .line 191
    goto/16 :goto_4

    .line 192
    .line 193
    :catchall_1
    move-exception v0

    .line 194
    invoke-virtual {v11}, Ly8;->h()V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v6, v10}, Leh;->I(Las0;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v6, v12}, Leh;->J(Lhy1;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v6, v13}, Leh;->H(Lv20;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v6, v14, v15}, Leh;->K(J)V

    .line 207
    .line 208
    .line 209
    iput-object v7, v6, Leh;->p:Ljava/lang/Object;

    .line 210
    .line 211
    throw v0

    .line 212
    :catchall_2
    move-exception v0

    .line 213
    move-object/from16 v17, v7

    .line 214
    .line 215
    goto :goto_1

    .line 216
    :cond_1
    move-object/from16 v17, v7

    .line 217
    .line 218
    move-object/from16 v16, v15

    .line 219
    .line 220
    move-wide/from16 v18, v13

    .line 221
    .line 222
    :goto_2
    shr-long v13, v8, v10

    .line 223
    .line 224
    long-to-int v7, v13

    .line 225
    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 226
    .line 227
    .line 228
    move-result v10

    .line 229
    and-long v8, v8, v18

    .line 230
    .line 231
    long-to-int v8, v8

    .line 232
    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 233
    .line 234
    .line 235
    move-result v9

    .line 236
    invoke-virtual {v11, v10, v9}, Ly8;->f(FF)V

    .line 237
    .line 238
    .line 239
    iget-wide v9, v1, Lei1;->e:J

    .line 240
    .line 241
    invoke-static {v9, v10}, Lse0;->H(J)J

    .line 242
    .line 243
    .line 244
    move-result-wide v9

    .line 245
    invoke-virtual {v6}, Leh;->v()Las0;

    .line 246
    .line 247
    .line 248
    move-result-object v12

    .line 249
    invoke-virtual {v6}, Leh;->x()Lhy1;

    .line 250
    .line 251
    .line 252
    move-result-object v13

    .line 253
    invoke-virtual {v6}, Leh;->u()Lv20;

    .line 254
    .line 255
    .line 256
    move-result-object v14

    .line 257
    move v15, v7

    .line 258
    move/from16 v18, v8

    .line 259
    .line 260
    invoke-virtual {v6}, Leh;->z()J

    .line 261
    .line 262
    .line 263
    move-result-wide v7

    .line 264
    move/from16 v19, v15

    .line 265
    .line 266
    iget-object v15, v6, Leh;->p:Ljava/lang/Object;

    .line 267
    .line 268
    check-cast v15, Lzh1;

    .line 269
    .line 270
    invoke-virtual {v6, v0}, Leh;->I(Las0;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v6, v2}, Leh;->J(Lhy1;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v6, v11}, Leh;->H(Lv20;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v6, v9, v10}, Leh;->K(J)V

    .line 280
    .line 281
    .line 282
    iput-object v3, v6, Leh;->p:Ljava/lang/Object;

    .line 283
    .line 284
    invoke-virtual {v11}, Ly8;->j()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 285
    .line 286
    .line 287
    :try_start_5
    invoke-virtual {v4, v5}, Lc8;->k(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 288
    .line 289
    .line 290
    :try_start_6
    invoke-virtual {v11}, Ly8;->h()V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v6, v12}, Leh;->I(Las0;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v6, v13}, Leh;->J(Lhy1;)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v6, v14}, Leh;->H(Lv20;)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v6, v7, v8}, Leh;->K(J)V

    .line 303
    .line 304
    .line 305
    iput-object v15, v6, Leh;->p:Ljava/lang/Object;

    .line 306
    .line 307
    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 308
    .line 309
    .line 310
    move-result v0

    .line 311
    neg-float v0, v0

    .line 312
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 313
    .line 314
    .line 315
    move-result v2

    .line 316
    neg-float v2, v2

    .line 317
    invoke-virtual {v11, v0, v2}, Ly8;->f(FF)V

    .line 318
    .line 319
    .line 320
    goto/16 :goto_0

    .line 321
    .line 322
    :goto_3
    iput-object v0, v11, Ly8;->a:Landroid/graphics/Canvas;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 323
    .line 324
    iget-object v0, v1, Lei1;->d:Landroid/view/RenderNode;

    .line 325
    .line 326
    move-object/from16 v2, v17

    .line 327
    .line 328
    invoke-virtual {v0, v2}, Landroid/view/RenderNode;->end(Landroid/view/DisplayListCanvas;)V

    .line 329
    .line 330
    .line 331
    return-void

    .line 332
    :catchall_3
    move-exception v0

    .line 333
    move-object/from16 v2, v17

    .line 334
    .line 335
    :try_start_7
    invoke-virtual {v11}, Ly8;->h()V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v6, v12}, Leh;->I(Las0;)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v6, v13}, Leh;->J(Lhy1;)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v6, v14}, Leh;->H(Lv20;)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v6, v7, v8}, Leh;->K(J)V

    .line 348
    .line 349
    .line 350
    iput-object v15, v6, Leh;->p:Ljava/lang/Object;

    .line 351
    .line 352
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 353
    :catchall_4
    move-exception v0

    .line 354
    goto :goto_4

    .line 355
    :catchall_5
    move-exception v0

    .line 356
    move-object v2, v7

    .line 357
    :goto_4
    iget-object v1, v1, Lei1;->d:Landroid/view/RenderNode;

    .line 358
    .line 359
    invoke-virtual {v1, v2}, Landroid/view/RenderNode;->end(Landroid/view/DisplayListCanvas;)V

    .line 360
    .line 361
    .line 362
    throw v0
.end method
