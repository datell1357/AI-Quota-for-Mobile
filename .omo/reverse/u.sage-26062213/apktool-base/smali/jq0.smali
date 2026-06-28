.class public final Ljq0;
.super Landroid/animation/AnimatorListenerAdapter;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Z

.field public final synthetic d:Lpq3;

.field public final synthetic e:Lmq0;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;ZLpq3;Lmq0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljq0;->a:Landroid/view/ViewGroup;

    .line 2
    .line 3
    iput-object p2, p0, Ljq0;->b:Landroid/view/View;

    .line 4
    .line 5
    iput-boolean p3, p0, Ljq0;->c:Z

    .line 6
    .line 7
    iput-object p4, p0, Ljq0;->d:Lpq3;

    .line 8
    .line 9
    iput-object p5, p0, Ljq0;->e:Lmq0;

    .line 10
    .line 11
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Ljq0;->a:Landroid/view/ViewGroup;

    .line 2
    .line 3
    iget-object v0, p0, Ljq0;->b:Landroid/view/View;

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    iget-boolean p1, p0, Ljq0;->c:Z

    .line 9
    .line 10
    iget-object v1, p0, Ljq0;->d:Lpq3;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget p1, v1, Lpq3;->a:I

    .line 15
    .line 16
    invoke-static {v0, p1}, Lxw1;->a(Landroid/view/View;I)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object p0, p0, Ljq0;->e:Lmq0;

    .line 20
    .line 21
    invoke-virtual {p0}, Lnq0;->a()V

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x2

    .line 25
    invoke-static {p0}, Lhd1;->G(I)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-eqz p0, :cond_1

    .line 30
    .line 31
    new-instance p0, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string p1, "Animator from operation "

    .line 34
    .line 35
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string p1, " has ended."

    .line 42
    .line 43
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    const-string p1, "FragmentManager"

    .line 51
    .line 52
    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    :cond_1
    return-void
.end method
