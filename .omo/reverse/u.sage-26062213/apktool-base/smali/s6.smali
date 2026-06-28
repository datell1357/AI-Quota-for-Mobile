.class public final Ls6;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lgv0;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Ls6;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Ls6;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget v0, p0, Ls6;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    iget-object p0, p0, Ls6;->b:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    sget-object v0, Lez3;->a:Lra3;

    .line 11
    .line 12
    new-array v1, v1, [Ljava/lang/Object;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Lra3;->c([Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    check-cast p0, Landroid/webkit/WebView;

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    move-object v2, v0

    .line 31
    check-cast v2, Landroid/view/ViewGroup;

    .line 32
    .line 33
    :cond_0
    if-eqz v2, :cond_1

    .line 34
    .line 35
    invoke-virtual {v2, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void

    .line 39
    :pswitch_0
    check-cast p0, Lib0;

    .line 40
    .line 41
    check-cast p0, Lpg3;

    .line 42
    .line 43
    invoke-virtual {p0, v2}, Lpg3;->G(Lip3;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :pswitch_1
    check-cast p0, Li02;

    .line 48
    .line 49
    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Li02;->f:Z

    .line 51
    .line 52
    iput v1, p0, Li02;->d:I

    .line 53
    .line 54
    invoke-virtual {p0}, Li02;->c()V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :pswitch_2
    check-cast p0, Ln02;

    .line 59
    .line 60
    iget-object v0, p0, Ln02;->c:Lmu0;

    .line 61
    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    iput-boolean v1, v0, Lmu0;->a:Z

    .line 65
    .line 66
    :cond_2
    iput-object v2, p0, Ln02;->c:Lmu0;

    .line 67
    .line 68
    return-void

    .line 69
    :pswitch_3
    check-cast p0, Lb02;

    .line 70
    .line 71
    iput-object v2, p0, Lb02;->d:Lka0;

    .line 72
    .line 73
    return-void

    .line 74
    :pswitch_4
    check-cast p0, Lkv0;

    .line 75
    .line 76
    iget-object p0, p0, Lkv0;->o:Llv0;

    .line 77
    .line 78
    invoke-virtual {p0}, Llv0;->a()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :pswitch_5
    check-cast p0, Lxt0;

    .line 83
    .line 84
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 85
    .line 86
    .line 87
    iget-object p0, p0, Lxt0;->u:Lst0;

    .line 88
    .line 89
    invoke-virtual {p0}, La0;->e()V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :pswitch_6
    check-cast p0, Lj6;

    .line 94
    .line 95
    iget-object p0, p0, Lj6;->a:Lo6;

    .line 96
    .line 97
    if-eqz p0, :cond_3

    .line 98
    .line 99
    invoke-virtual {p0}, Lo6;->b()V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_3
    const-string p0, "Launcher has not been initialized"

    .line 104
    .line 105
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    :goto_0
    return-void

    .line 109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
