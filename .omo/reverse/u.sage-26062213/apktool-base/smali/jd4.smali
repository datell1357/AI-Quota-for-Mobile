.class public final Ljd4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final synthetic a:Lqd4;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lqd4;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljd4;->a:Lqd4;

    .line 2
    .line 3
    iput-object p2, p0, Ljd4;->b:Landroid/view/View;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    const/high16 p1, 0x3f800000    # 1.0f

    .line 2
    .line 3
    iget-object v0, p0, Ljd4;->a:Lqd4;

    .line 4
    .line 5
    iget-object v1, v0, Lqd4;->a:Lpd4;

    .line 6
    .line 7
    invoke-virtual {v1, p1}, Lpd4;->d(F)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Ljd4;->b:Landroid/view/View;

    .line 11
    .line 12
    invoke-static {v0, p0}, Lld4;->e(Lqd4;Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
