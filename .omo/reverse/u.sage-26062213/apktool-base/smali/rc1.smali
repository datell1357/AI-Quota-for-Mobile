.class public final Lrc1;
.super Landroid/view/animation/AnimationSet;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final n:Landroid/view/ViewGroup;

.field public final o:Landroid/view/View;

.field public p:Z

.field public q:Z

.field public r:Z


# direct methods
.method public constructor <init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 3
    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lrc1;->r:Z

    .line 7
    .line 8
    iput-object p2, p0, Lrc1;->n:Landroid/view/ViewGroup;

    .line 9
    .line 10
    iput-object p3, p0, Lrc1;->o:Landroid/view/View;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final getTransformation(JLandroid/view/animation/Transformation;)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lrc1;->r:Z

    .line 3
    .line 4
    iget-boolean v1, p0, Lrc1;->p:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-boolean p0, p0, Lrc1;->q:Z

    .line 9
    .line 10
    xor-int/2addr p0, v0

    .line 11
    return p0

    .line 12
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/animation/AnimationSet;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-nez p1, :cond_1

    .line 17
    .line 18
    iput-boolean v0, p0, Lrc1;->p:Z

    .line 19
    .line 20
    iget-object p1, p0, Lrc1;->n:Landroid/view/ViewGroup;

    .line 21
    .line 22
    invoke-static {p1, p0}, Lmp2;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    return v0
.end method

.method public final getTransformation(JLandroid/view/animation/Transformation;F)Z
    .locals 2

    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lrc1;->r:Z

    .line 27
    iget-boolean v1, p0, Lrc1;->p:Z

    if-eqz v1, :cond_0

    .line 28
    iget-boolean p0, p0, Lrc1;->q:Z

    xor-int/2addr p0, v0

    return p0

    .line 29
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;F)Z

    move-result p1

    if-nez p1, :cond_1

    .line 30
    iput-boolean v0, p0, Lrc1;->p:Z

    .line 31
    iget-object p1, p0, Lrc1;->n:Landroid/view/ViewGroup;

    invoke-static {p1, p0}, Lmp2;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_1
    return v0
.end method

.method public final run()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lrc1;->p:Z

    .line 2
    .line 3
    iget-object v1, p0, Lrc1;->n:Landroid/view/ViewGroup;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p0, Lrc1;->r:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lrc1;->r:Z

    .line 13
    .line 14
    invoke-virtual {v1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object v0, p0, Lrc1;->o:Landroid/view/View;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lrc1;->q:Z

    .line 25
    .line 26
    return-void
.end method
