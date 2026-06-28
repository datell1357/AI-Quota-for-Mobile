.class public final Lwc1;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/view/View;Lh33;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lwc1;->n:I

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lwc1;->o:Ljava/lang/Object;

    iput-object p2, p0, Lwc1;->p:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lxc1;Lpd1;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lwc1;->n:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lwc1;->p:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Lwc1;->o:Ljava/lang/Object;

    .line 10
    .line 11
    return-void
.end method

.method private final a(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final b(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 1
    iget p1, p0, Lwc1;->n:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object p1, p0, Lwc1;->o:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p1, Lpd1;

    .line 10
    .line 11
    iget-object v0, p1, Lpd1;->c:Llc1;

    .line 12
    .line 13
    invoke-virtual {p1}, Lpd1;->j()V

    .line 14
    .line 15
    .line 16
    iget-object p1, v0, Llc1;->mView:Landroid/view/View;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Landroid/view/ViewGroup;

    .line 23
    .line 24
    iget-object p0, p0, Lwc1;->p:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p0, Lxc1;

    .line 27
    .line 28
    iget-object p0, p0, Lxc1;->n:Lhd1;

    .line 29
    .line 30
    invoke-virtual {p0}, Lhd1;->E()Lb21;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-static {p1, p0}, Lpq0;->h(Landroid/view/ViewGroup;Lb21;)Lpq0;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p0}, Lpq0;->g()V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    nop

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 1
    iget p1, p0, Lwc1;->n:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lwc1;->o:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Landroid/view/View;

    .line 9
    .line 10
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lwc1;->p:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast p0, Lh33;

    .line 16
    .line 17
    invoke-virtual {p0}, Lh33;->x()V

    .line 18
    .line 19
    .line 20
    :pswitch_0
    return-void

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
