.class public final Lii1;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lbi1;


# static fields
.field public static final B:Lhi1;


# instance fields
.field public A:I

.field public final b:Lhx0;

.field public final c:Ly20;

.field public final d:Ltb4;

.field public final e:Landroid/content/res/Resources;

.field public final f:Landroid/graphics/Rect;

.field public g:Landroid/graphics/Paint;

.field public h:I

.field public i:I

.field public j:J

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:I

.field public o:I

.field public p:F

.field public q:Z

.field public r:J

.field public s:F

.field public t:F

.field public u:F

.field public v:J

.field public w:J

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lhi1;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lii1;->B:Lhi1;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lhx0;)V
    .locals 3

    .line 1
    new-instance v0, Ly20;

    .line 2
    .line 3
    invoke-direct {v0}, Ly20;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lx20;

    .line 7
    .line 8
    invoke-direct {v1}, Lx20;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lii1;->b:Lhx0;

    .line 15
    .line 16
    iput-object v0, p0, Lii1;->c:Ly20;

    .line 17
    .line 18
    new-instance v2, Ltb4;

    .line 19
    .line 20
    invoke-direct {v2, p1, v0, v1}, Ltb4;-><init>(Lhx0;Ly20;Lx20;)V

    .line 21
    .line 22
    .line 23
    iput-object v2, p0, Lii1;->d:Ltb4;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lii1;->e:Landroid/content/res/Resources;

    .line 30
    .line 31
    new-instance v0, Landroid/graphics/Rect;

    .line 32
    .line 33
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lii1;->f:Landroid/graphics/Rect;

    .line 37
    .line 38
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 39
    .line 40
    .line 41
    const/4 p1, 0x0

    .line 42
    invoke-virtual {v2, p1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 43
    .line 44
    .line 45
    const-wide/16 v0, 0x0

    .line 46
    .line 47
    iput-wide v0, p0, Lii1;->j:J

    .line 48
    .line 49
    invoke-static {}, Landroid/view/View;->generateViewId()I

    .line 50
    .line 51
    .line 52
    const/4 p1, 0x3

    .line 53
    iput p1, p0, Lii1;->n:I

    .line 54
    .line 55
    const/4 p1, 0x0

    .line 56
    iput p1, p0, Lii1;->o:I

    .line 57
    .line 58
    const/high16 p1, 0x3f800000    # 1.0f

    .line 59
    .line 60
    iput p1, p0, Lii1;->p:F

    .line 61
    .line 62
    const-wide v0, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    iput-wide v0, p0, Lii1;->r:J

    .line 68
    .line 69
    iput p1, p0, Lii1;->s:F

    .line 70
    .line 71
    iput p1, p0, Lii1;->t:F

    .line 72
    .line 73
    sget-wide v0, Lt70;->b:J

    .line 74
    .line 75
    iput-wide v0, p0, Lii1;->v:J

    .line 76
    .line 77
    iput-wide v0, p0, Lii1;->w:J

    .line 78
    .line 79
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
    iput p1, p0, Lii1;->o:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lii1;->Q()V

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
    iget-object p0, p0, Lii1;->d:Ltb4;

    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->setRotation(F)V

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
    iput-wide p1, p0, Lii1;->w:J

    .line 8
    .line 9
    iget-object p0, p0, Lii1;->d:Ltb4;

    .line 10
    .line 11
    invoke-static {p1, p2}, Lc75;->R(J)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-static {p0, p1}, Lfx2;->v(Landroid/view/View;I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final E(F)V
    .locals 0

    .line 1
    iput p1, p0, Lii1;->t:F

    .line 2
    .line 3
    iget-object p0, p0, Lii1;->d:Ltb4;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final F()Landroid/graphics/Matrix;
    .locals 0

    .line 1
    iget-object p0, p0, Lii1;->d:Ltb4;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final G(IIJ)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lii1;->j:J

    .line 2
    .line 3
    invoke-static {v0, v1, p3, p4}, Lrs1;->a(JJ)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iput p1, p0, Lii1;->h:I

    .line 10
    .line 11
    iput p2, p0, Lii1;->i:I

    .line 12
    .line 13
    iput-wide p3, p0, Lii1;->j:J

    .line 14
    .line 15
    invoke-virtual {p0}, Lii1;->b()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget p3, p0, Lii1;->h:I

    .line 20
    .line 21
    iget-object p4, p0, Lii1;->d:Ltb4;

    .line 22
    .line 23
    if-eq p3, p1, :cond_1

    .line 24
    .line 25
    sub-int p3, p1, p3

    .line 26
    .line 27
    invoke-virtual {p4, p3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 28
    .line 29
    .line 30
    :cond_1
    iget p3, p0, Lii1;->i:I

    .line 31
    .line 32
    if-eq p3, p2, :cond_2

    .line 33
    .line 34
    sub-int p3, p2, p3

    .line 35
    .line 36
    invoke-virtual {p4, p3}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 37
    .line 38
    .line 39
    :cond_2
    iput p1, p0, Lii1;->h:I

    .line 40
    .line 41
    iput p2, p0, Lii1;->i:I

    .line 42
    .line 43
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
    .locals 1

    .line 1
    iget-object v0, p0, Lii1;->e:Landroid/content/res/Resources;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 8
    .line 9
    int-to-float v0, v0

    .line 10
    mul-float/2addr p1, v0

    .line 11
    iget-object p0, p0, Lii1;->d:Ltb4;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroid/view/View;->setCameraDistance(F)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final J()F
    .locals 0

    .line 1
    iget p0, p0, Lii1;->u:F

    .line 2
    .line 3
    return p0
.end method

.method public final L()F
    .locals 0

    .line 1
    iget p0, p0, Lii1;->t:F

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
    iget p0, p0, Lii1;->n:I

    .line 2
    .line 3
    return p0
.end method

.method public final O(J)V
    .locals 2

    .line 1
    iput-wide p1, p0, Lii1;->r:J

    .line 2
    .line 3
    const-wide v0, 0x7fffffff7fffffffL

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    and-long/2addr p1, v0

    .line 9
    const-wide v0, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    cmp-long p1, p1, v0

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    :goto_0
    iput-boolean p1, p0, Lii1;->q:Z

    .line 22
    .line 23
    invoke-virtual {p0}, Lii1;->R()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final P()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lii1;->v:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final Q()V
    .locals 4

    .line 1
    iget v0, p0, Lii1;->o:I

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
    iget v2, p0, Lii1;->n:I

    .line 8
    .line 9
    const/4 v3, 0x3

    .line 10
    if-ne v2, v3, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lii1;->a(I)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Lii1;->a(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final R()V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lii1;->q:Z

    .line 2
    .line 3
    const-wide v1, 0xffffffffL

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    const/16 v3, 0x20

    .line 9
    .line 10
    iget-object v4, p0, Lii1;->d:Ltb4;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    iget-wide v5, p0, Lii1;->r:J

    .line 15
    .line 16
    const-wide v7, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    invoke-static {v5, v6, v7, v8}, Lgo2;->b(JJ)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-wide v5, p0, Lii1;->r:J

    .line 29
    .line 30
    shr-long/2addr v5, v3

    .line 31
    long-to-int v0, v5

    .line 32
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iget v3, p0, Lii1;->x:I

    .line 37
    .line 38
    int-to-float v3, v3

    .line 39
    add-float/2addr v0, v3

    .line 40
    invoke-virtual {v4, v0}, Landroid/view/View;->setPivotX(F)V

    .line 41
    .line 42
    .line 43
    iget-wide v5, p0, Lii1;->r:J

    .line 44
    .line 45
    and-long v0, v5, v1

    .line 46
    .line 47
    long-to-int v0, v0

    .line 48
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    iget p0, p0, Lii1;->y:I

    .line 53
    .line 54
    int-to-float p0, p0

    .line 55
    add-float/2addr v0, p0

    .line 56
    invoke-virtual {v4, v0}, Landroid/view/View;->setPivotY(F)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_1
    :goto_0
    iget-wide v5, p0, Lii1;->j:J

    .line 61
    .line 62
    shr-long/2addr v5, v3

    .line 63
    long-to-int v0, v5

    .line 64
    int-to-float v0, v0

    .line 65
    const/high16 v3, 0x40000000    # 2.0f

    .line 66
    .line 67
    div-float/2addr v0, v3

    .line 68
    iget v5, p0, Lii1;->x:I

    .line 69
    .line 70
    int-to-float v5, v5

    .line 71
    add-float/2addr v0, v5

    .line 72
    invoke-virtual {v4, v0}, Landroid/view/View;->setPivotX(F)V

    .line 73
    .line 74
    .line 75
    iget-wide v5, p0, Lii1;->j:J

    .line 76
    .line 77
    and-long v0, v5, v1

    .line 78
    .line 79
    long-to-int v0, v0

    .line 80
    int-to-float v0, v0

    .line 81
    div-float/2addr v0, v3

    .line 82
    iget p0, p0, Lii1;->y:I

    .line 83
    .line 84
    int-to-float p0, p0

    .line 85
    add-float/2addr v0, p0

    .line 86
    invoke-virtual {v4, v0}, Landroid/view/View;->setPivotY(F)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public final a(I)V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    iget-object v1, p0, Lii1;->d:Ltb4;

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne p1, v2, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lii1;->g:Landroid/graphics/Paint;

    .line 8
    .line 9
    invoke-virtual {v1, v0, p0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p0, p0, Lii1;->g:Landroid/graphics/Paint;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    if-ne p1, v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v1, v3, p0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 19
    .line 20
    .line 21
    move v2, v3

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {v1, v3, p0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-virtual {v1, v2}, Ltb4;->setCanUseCompositingLayer$ui_graphics(Z)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final b()V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lii1;->m:Z

    .line 2
    .line 3
    iget-object v1, p0, Lii1;->d:Ltb4;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/view/View;->getClipToOutline()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    :cond_0
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lii1;->k:Z

    .line 15
    .line 16
    :cond_1
    iget v0, p0, Lii1;->h:I

    .line 17
    .line 18
    iget v2, p0, Lii1;->x:I

    .line 19
    .line 20
    sub-int v2, v0, v2

    .line 21
    .line 22
    iget v3, p0, Lii1;->i:I

    .line 23
    .line 24
    iget v4, p0, Lii1;->y:I

    .line 25
    .line 26
    sub-int v4, v3, v4

    .line 27
    .line 28
    iget-wide v5, p0, Lii1;->j:J

    .line 29
    .line 30
    const/16 v7, 0x20

    .line 31
    .line 32
    shr-long v7, v5, v7

    .line 33
    .line 34
    long-to-int v7, v7

    .line 35
    add-int/2addr v0, v7

    .line 36
    iget v7, p0, Lii1;->z:I

    .line 37
    .line 38
    add-int/2addr v0, v7

    .line 39
    const-wide v7, 0xffffffffL

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    and-long/2addr v5, v7

    .line 45
    long-to-int v5, v5

    .line 46
    add-int/2addr v3, v5

    .line 47
    iget p0, p0, Lii1;->A:I

    .line 48
    .line 49
    add-int/2addr v3, p0

    .line 50
    invoke-virtual {v1, v2, v4, v0, v3}, Landroid/view/View;->layout(IIII)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final c()F
    .locals 0

    .line 1
    iget p0, p0, Lii1;->p:F

    .line 2
    .line 3
    return p0
.end method

.method public final d()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object p0, p0, Lii1;->d:Ltb4;

    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->setRotationX(F)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final e(F)V
    .locals 0

    .line 1
    iput p1, p0, Lii1;->p:F

    .line 2
    .line 3
    iget-object p0, p0, Lii1;->d:Ltb4;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final f()F
    .locals 0

    .line 1
    iget p0, p0, Lii1;->s:F

    .line 2
    .line 3
    return p0
.end method

.method public final g(F)V
    .locals 0

    .line 1
    iput p1, p0, Lii1;->u:F

    .line 2
    .line 3
    iget-object p0, p0, Lii1;->d:Ltb4;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/view/View;->setElevation(F)V

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
    iget v2, p0, Lii1;->x:I

    .line 45
    .line 46
    if-ne p1, v2, :cond_2

    .line 47
    .line 48
    iget v3, p0, Lii1;->y:I

    .line 49
    .line 50
    if-ne p2, v3, :cond_2

    .line 51
    .line 52
    iget v3, p0, Lii1;->z:I

    .line 53
    .line 54
    if-ne p3, v3, :cond_2

    .line 55
    .line 56
    iget v3, p0, Lii1;->A:I

    .line 57
    .line 58
    if-eq p4, v3, :cond_5

    .line 59
    .line 60
    :cond_2
    if-ne p1, v2, :cond_3

    .line 61
    .line 62
    iget v2, p0, Lii1;->y:I

    .line 63
    .line 64
    if-eq p2, v2, :cond_4

    .line 65
    .line 66
    :cond_3
    move v0, v1

    .line 67
    :cond_4
    iput p1, p0, Lii1;->x:I

    .line 68
    .line 69
    iput p2, p0, Lii1;->y:I

    .line 70
    .line 71
    iput p3, p0, Lii1;->z:I

    .line 72
    .line 73
    iput p4, p0, Lii1;->A:I

    .line 74
    .line 75
    invoke-virtual {p0}, Lii1;->b()V

    .line 76
    .line 77
    .line 78
    if-eqz v0, :cond_5

    .line 79
    .line 80
    invoke-virtual {p0}, Lii1;->R()V

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
    iget-object p0, p0, Lii1;->d:Ltb4;

    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

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
    iget-object p0, p0, Lii1;->d:Ltb4;

    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->setRotationY(F)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final l()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lii1;->w:J

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
    iput-wide p1, p0, Lii1;->v:J

    .line 8
    .line 9
    iget-object p0, p0, Lii1;->d:Ltb4;

    .line 10
    .line 11
    invoke-static {p1, p2}, Lc75;->R(J)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-static {p0, p1}, Lfx2;->A(Landroid/view/View;I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final n(Landroid/graphics/Outline;J)V
    .locals 2

    .line 1
    iget-object p2, p0, Lii1;->d:Ltb4;

    .line 2
    .line 3
    iput-object p1, p2, Ltb4;->r:Landroid/graphics/Outline;

    .line 4
    .line 5
    invoke-virtual {p2}, Landroid/view/View;->invalidateOutline()V

    .line 6
    .line 7
    .line 8
    iget-boolean p3, p0, Lii1;->m:Z

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-nez p3, :cond_0

    .line 13
    .line 14
    invoke-virtual {p2}, Landroid/view/View;->getClipToOutline()Z

    .line 15
    .line 16
    .line 17
    move-result p3

    .line 18
    if-eqz p3, :cond_1

    .line 19
    .line 20
    :cond_0
    if-eqz p1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p2, v1}, Landroid/view/View;->setClipToOutline(Z)V

    .line 23
    .line 24
    .line 25
    iget-boolean p2, p0, Lii1;->m:Z

    .line 26
    .line 27
    if-eqz p2, :cond_1

    .line 28
    .line 29
    iput-boolean v0, p0, Lii1;->m:Z

    .line 30
    .line 31
    iput-boolean v1, p0, Lii1;->k:Z

    .line 32
    .line 33
    :cond_1
    if-eqz p1, :cond_2

    .line 34
    .line 35
    move v0, v1

    .line 36
    :cond_2
    iput-boolean v0, p0, Lii1;->l:Z

    .line 37
    .line 38
    return-void
.end method

.method public final o()V
    .locals 2

    .line 1
    iget-object v0, p0, Lii1;->g:Landroid/graphics/Paint;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/graphics/Paint;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lii1;->g:Landroid/graphics/Paint;

    .line 11
    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lii1;->Q()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final p(F)V
    .locals 0

    .line 1
    iput p1, p0, Lii1;->s:F

    .line 2
    .line 3
    iget-object p0, p0, Lii1;->d:Ltb4;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final q(I)V
    .locals 2

    .line 1
    iput p1, p0, Lii1;->n:I

    .line 2
    .line 3
    iget-object v0, p0, Lii1;->g:Landroid/graphics/Paint;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroid/graphics/Paint;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lii1;->g:Landroid/graphics/Paint;

    .line 13
    .line 14
    :cond_0
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    .line 15
    .line 16
    invoke-static {p1}, Lse0;->G(I)Landroid/graphics/PorterDuff$Mode;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-direct {v1, p1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lii1;->Q()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final r()F
    .locals 1

    .line 1
    iget-object v0, p0, Lii1;->d:Ltb4;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getCameraDistance()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object p0, p0, Lii1;->e:Landroid/content/res/Resources;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 14
    .line 15
    int-to-float p0, p0

    .line 16
    div-float/2addr v0, p0

    .line 17
    return v0
.end method

.method public final s()V
    .locals 1

    .line 1
    iget-object v0, p0, Lii1;->b:Lhx0;

    .line 2
    .line 3
    iget-object p0, p0, Lii1;->d:Ltb4;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
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
    iget-object p0, p0, Lii1;->d:Ltb4;

    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final v(Lv20;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lii1;->k:Z

    .line 2
    .line 3
    iget-object v1, p0, Lii1;->d:Ltb4;

    .line 4
    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iget-boolean v0, p0, Lii1;->m:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/view/View;->getClipToOutline()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    :cond_0
    iget-boolean v0, p0, Lii1;->l:Z

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lii1;->f:Landroid/graphics/Rect;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 25
    .line 26
    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 33
    .line 34
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 v0, 0x0

    .line 42
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 43
    .line 44
    .line 45
    :cond_2
    sget-object v0, Lz8;->a:Landroid/graphics/Canvas;

    .line 46
    .line 47
    move-object v0, p1

    .line 48
    check-cast v0, Ly8;

    .line 49
    .line 50
    iget-object v0, v0, Ly8;->a:Landroid/graphics/Canvas;

    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    iget-object p0, p0, Lii1;->b:Lhx0;

    .line 59
    .line 60
    invoke-virtual {v1}, Landroid/view/View;->getDrawingTime()J

    .line 61
    .line 62
    .line 63
    move-result-wide v2

    .line 64
    invoke-virtual {p0, p1, v1, v2, v3}, Lhx0;->a(Lv20;Landroid/view/View;J)V

    .line 65
    .line 66
    .line 67
    :cond_3
    return-void
.end method

.method public final w(Z)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-boolean v2, p0, Lii1;->l:Z

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    move v2, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v2, v0

    .line 12
    :goto_0
    iput-boolean v2, p0, Lii1;->m:Z

    .line 13
    .line 14
    iput-boolean v1, p0, Lii1;->k:Z

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    iget-boolean p1, p0, Lii1;->l:Z

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    move v0, v1

    .line 23
    :cond_1
    iget-object p0, p0, Lii1;->d:Ltb4;

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Landroid/view/View;->setClipToOutline(Z)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final x()I
    .locals 0

    .line 1
    iget p0, p0, Lii1;->o:I

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
    .locals 10

    .line 1
    iget-object v0, p0, Lii1;->d:Ltb4;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lii1;->b:Lhx0;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget v1, p0, Lii1;->x:I

    .line 15
    .line 16
    int-to-float v1, v1

    .line 17
    iget v3, p0, Lii1;->y:I

    .line 18
    .line 19
    int-to-float v3, v3

    .line 20
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    int-to-long v4, v1

    .line 25
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    int-to-long v6, v1

    .line 30
    const/16 v1, 0x20

    .line 31
    .line 32
    shl-long v3, v4, v1

    .line 33
    .line 34
    const-wide v8, 0xffffffffL

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    and-long v5, v6, v8

    .line 40
    .line 41
    or-long/2addr v3, v5

    .line 42
    shr-long v5, v3, v1

    .line 43
    .line 44
    long-to-int v1, v5

    .line 45
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    and-long/2addr v3, v8

    .line 50
    long-to-int v3, v3

    .line 51
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    iput-object p1, v0, Ltb4;->t:Las0;

    .line 56
    .line 57
    iput-object p2, v0, Ltb4;->u:Lhy1;

    .line 58
    .line 59
    iput-object p4, v0, Ltb4;->v:Lpe1;

    .line 60
    .line 61
    iput-object p3, v0, Ltb4;->w:Lzh1;

    .line 62
    .line 63
    iput v1, v0, Ltb4;->x:F

    .line 64
    .line 65
    iput v3, v0, Ltb4;->y:F

    .line 66
    .line 67
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-eqz p1, :cond_1

    .line 72
    .line 73
    const/4 p1, 0x4

    .line 74
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 75
    .line 76
    .line 77
    const/4 p1, 0x0

    .line 78
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 79
    .line 80
    .line 81
    :try_start_0
    iget-object p0, p0, Lii1;->c:Ly20;

    .line 82
    .line 83
    sget-object p1, Lii1;->B:Lhi1;

    .line 84
    .line 85
    iget-object p2, p0, Ly20;->a:Ly8;

    .line 86
    .line 87
    iget-object p3, p2, Ly8;->a:Landroid/graphics/Canvas;

    .line 88
    .line 89
    iput-object p1, p2, Ly8;->a:Landroid/graphics/Canvas;

    .line 90
    .line 91
    invoke-virtual {v0}, Landroid/view/View;->getDrawingTime()J

    .line 92
    .line 93
    .line 94
    move-result-wide v3

    .line 95
    invoke-virtual {v2, p2, v0, v3, v4}, Lhx0;->a(Lv20;Landroid/view/View;J)V

    .line 96
    .line 97
    .line 98
    iget-object p0, p0, Ly20;->a:Ly8;

    .line 99
    .line 100
    iput-object p3, p0, Ly8;->a:Landroid/graphics/Canvas;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .line 102
    :catch_0
    :cond_1
    return-void
.end method
