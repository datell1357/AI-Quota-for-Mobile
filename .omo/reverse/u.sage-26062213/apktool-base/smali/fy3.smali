.class public final synthetic Lfy3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lne1;


# instance fields
.field public final synthetic n:Landroid/view/View;

.field public final synthetic o:Ly70;

.field public final synthetic p:Z


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Ly70;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lfy3;->n:Landroid/view/View;

    .line 5
    .line 6
    iput-object p2, p0, Lfy3;->o:Ly70;

    .line 7
    .line 8
    iput-boolean p3, p0, Lfy3;->p:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lfy3;->n:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    check-cast v0, Landroid/app/Activity;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lfy3;->o:Ly70;

    .line 17
    .line 18
    iget-wide v1, v1, Ly70;->n:J

    .line 19
    .line 20
    invoke-static {v1, v2}, Lc75;->R(J)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 25
    .line 26
    .line 27
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 28
    .line 29
    const/16 v2, 0x23

    .line 30
    .line 31
    if-lt v1, v2, :cond_0

    .line 32
    .line 33
    new-instance v1, Loe4;

    .line 34
    .line 35
    invoke-direct {v1, v0}, Lne4;-><init>(Landroid/view/Window;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/16 v2, 0x1e

    .line 40
    .line 41
    if-lt v1, v2, :cond_1

    .line 42
    .line 43
    new-instance v1, Lne4;

    .line 44
    .line 45
    invoke-direct {v1, v0}, Lne4;-><init>(Landroid/view/Window;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const/16 v2, 0x1a

    .line 50
    .line 51
    if-lt v1, v2, :cond_2

    .line 52
    .line 53
    new-instance v1, Lme4;

    .line 54
    .line 55
    invoke-direct {v1, v0}, Lle4;-><init>(Landroid/view/Window;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    new-instance v1, Lle4;

    .line 60
    .line 61
    invoke-direct {v1, v0}, Lle4;-><init>(Landroid/view/Window;)V

    .line 62
    .line 63
    .line 64
    :goto_0
    iget-boolean p0, p0, Lfy3;->p:Z

    .line 65
    .line 66
    xor-int/lit8 p0, p0, 0x1

    .line 67
    .line 68
    invoke-virtual {v1, p0}, Lpe4;->b(Z)V

    .line 69
    .line 70
    .line 71
    sget-object p0, Lt64;->a:Lt64;

    .line 72
    .line 73
    return-object p0
.end method
