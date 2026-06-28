.class public final Lkq1;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# instance fields
.field public final synthetic a:Llq1;


# direct methods
.method public constructor <init>(Llq1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkq1;->a:Llq1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lkq1;->a:Llq1;

    .line 2
    .line 3
    iget-object p1, p0, Llq1;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p1, Lm9;

    .line 6
    .line 7
    iget-boolean p2, p0, Llq1;->a:Z

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget p0, p0, Llq1;->b:I

    .line 14
    .line 15
    const/4 p2, 0x0

    .line 16
    const/4 v1, 0x2

    .line 17
    if-ne p0, v0, :cond_2

    .line 18
    .line 19
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    .line 24
    .line 25
    .line 26
    move-result p4

    .line 27
    cmpl-float p0, p0, p4

    .line 28
    .line 29
    if-lez p0, :cond_4

    .line 30
    .line 31
    cmpl-float p0, p3, p2

    .line 32
    .line 33
    if-lez p0, :cond_1

    .line 34
    .line 35
    move v1, v0

    .line 36
    :cond_1
    new-instance p0, Lp91;

    .line 37
    .line 38
    invoke-direct {p0, v1}, Lp91;-><init>(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p0}, Lm9;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    return v0

    .line 45
    :cond_2
    if-ne p0, v1, :cond_4

    .line 46
    .line 47
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    .line 52
    .line 53
    .line 54
    move-result p3

    .line 55
    cmpl-float p0, p0, p3

    .line 56
    .line 57
    if-lez p0, :cond_4

    .line 58
    .line 59
    cmpl-float p0, p4, p2

    .line 60
    .line 61
    if-lez p0, :cond_3

    .line 62
    .line 63
    move v1, v0

    .line 64
    :cond_3
    new-instance p0, Lp91;

    .line 65
    .line 66
    invoke-direct {p0, v1}, Lp91;-><init>(I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, p0}, Lm9;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    :cond_4
    :goto_0
    return v0
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method
