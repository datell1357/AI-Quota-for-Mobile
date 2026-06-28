.class public final Lr91;
.super Lxx1;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpe1;


# instance fields
.field public final synthetic o:I

.field public final synthetic p:Ls91;


# direct methods
.method public synthetic constructor <init>(Ls91;I)V
    .locals 0

    .line 1
    iput p2, p0, Lr91;->o:I

    .line 2
    .line 3
    iput-object p1, p0, Lr91;->p:Ls91;

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1}, Lxx1;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget v0, p0, Lr91;->o:I

    .line 2
    .line 3
    sget-object v1, Lt64;->a:Lt64;

    .line 4
    .line 5
    iget-object p0, p0, Lr91;->p:Ls91;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p1, Lk20;

    .line 11
    .line 12
    invoke-static {p0}, Lis0;->i(Lmd2;)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    return-object v1

    .line 16
    :pswitch_0
    check-cast p1, Lk20;

    .line 17
    .line 18
    invoke-static {p0}, Lis0;->i(Lmd2;)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-nez v2, :cond_2

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_2

    .line 33
    .line 34
    invoke-static {p0}, Lw80;->S(Ljr0;)Lsr2;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Lq9;

    .line 39
    .line 40
    invoke-virtual {v2}, Lq9;->getFocusOwner()Ly91;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-static {p0}, Lca;->F(Ljr0;)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    iget v3, p1, Lk20;->a:I

    .line 49
    .line 50
    invoke-static {v3}, Lv91;->c(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    const/4 v4, 0x2

    .line 55
    new-array v5, v4, [I

    .line 56
    .line 57
    invoke-virtual {p0, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 58
    .line 59
    .line 60
    new-array p0, v4, [I

    .line 61
    .line 62
    invoke-virtual {v0, p0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 63
    .line 64
    .line 65
    check-cast v2, Ldh;

    .line 66
    .line 67
    iget-object v2, v2, Ldh;->c:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v2, Lka1;

    .line 70
    .line 71
    invoke-static {v2}, Lgg4;->u(Lka1;)Lka1;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    const/4 v4, 0x0

    .line 76
    if-eqz v2, :cond_0

    .line 77
    .line 78
    invoke-static {v2}, Lgg4;->v(Lka1;)Ll33;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    goto :goto_0

    .line 83
    :cond_0
    move-object v2, v4

    .line 84
    :goto_0
    const/4 v6, 0x1

    .line 85
    if-nez v2, :cond_1

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_1
    new-instance v4, Landroid/graphics/Rect;

    .line 89
    .line 90
    iget v7, v2, Ll33;->a:F

    .line 91
    .line 92
    float-to-int v7, v7

    .line 93
    const/4 v8, 0x0

    .line 94
    aget v9, v5, v8

    .line 95
    .line 96
    add-int/2addr v7, v9

    .line 97
    aget v8, p0, v8

    .line 98
    .line 99
    sub-int/2addr v7, v8

    .line 100
    iget v10, v2, Ll33;->b:F

    .line 101
    .line 102
    float-to-int v10, v10

    .line 103
    aget v5, v5, v6

    .line 104
    .line 105
    add-int/2addr v10, v5

    .line 106
    aget p0, p0, v6

    .line 107
    .line 108
    sub-int/2addr v10, p0

    .line 109
    iget v11, v2, Ll33;->c:F

    .line 110
    .line 111
    float-to-int v11, v11

    .line 112
    add-int/2addr v11, v9

    .line 113
    sub-int/2addr v11, v8

    .line 114
    iget v2, v2, Ll33;->d:F

    .line 115
    .line 116
    float-to-int v2, v2

    .line 117
    add-int/2addr v2, v5

    .line 118
    sub-int/2addr v2, p0

    .line 119
    invoke-direct {v4, v7, v10, v11, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 120
    .line 121
    .line 122
    :goto_1
    invoke-static {v0, v3, v4}, Lv91;->b(Landroid/view/View;Ljava/lang/Integer;Landroid/graphics/Rect;)Z

    .line 123
    .line 124
    .line 125
    move-result p0

    .line 126
    if-nez p0, :cond_2

    .line 127
    .line 128
    iput-boolean v6, p1, Lk20;->b:Z

    .line 129
    .line 130
    :cond_2
    return-object v1

    .line 131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
