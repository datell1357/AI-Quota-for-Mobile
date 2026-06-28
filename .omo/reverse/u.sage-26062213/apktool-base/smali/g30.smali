.class public final Lg30;
.super Lac2;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public A:Landroid/view/View;

.field public B:Landroid/view/View;

.field public C:I

.field public D:Z

.field public E:Z

.field public F:I

.field public G:I

.field public H:Z

.field public I:Z

.field public J:Lhc2;

.field public K:Landroid/view/ViewTreeObserver;

.field public L:Landroid/widget/PopupWindow$OnDismissListener;

.field public M:Z

.field public final o:Landroid/content/Context;

.field public final p:I

.field public final q:I

.field public final r:Z

.field public final s:Landroid/os/Handler;

.field public final t:Ljava/util/ArrayList;

.field public final u:Ljava/util/ArrayList;

.field public final v:Ld30;

.field public final w:Leb;

.field public final x:Lwu4;

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IZ)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lg30;->t:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lg30;->u:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v0, Ld30;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-direct {v0, p0, v1}, Ld30;-><init>(Lac2;I)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lg30;->v:Ld30;

    .line 25
    .line 26
    new-instance v0, Leb;

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    invoke-direct {v0, v2, p0}, Leb;-><init>(ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lg30;->w:Leb;

    .line 33
    .line 34
    new-instance v0, Lwu4;

    .line 35
    .line 36
    const/16 v3, 0xe

    .line 37
    .line 38
    invoke-direct {v0, v3, p0}, Lwu4;-><init>(ILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lg30;->x:Lwu4;

    .line 42
    .line 43
    iput v1, p0, Lg30;->y:I

    .line 44
    .line 45
    iput v1, p0, Lg30;->z:I

    .line 46
    .line 47
    iput-object p1, p0, Lg30;->o:Landroid/content/Context;

    .line 48
    .line 49
    iput-object p2, p0, Lg30;->A:Landroid/view/View;

    .line 50
    .line 51
    iput p3, p0, Lg30;->q:I

    .line 52
    .line 53
    iput-boolean p4, p0, Lg30;->r:Z

    .line 54
    .line 55
    iput-boolean v1, p0, Lg30;->H:Z

    .line 56
    .line 57
    invoke-virtual {p2}, Landroid/view/View;->getLayoutDirection()I

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    if-ne p2, v2, :cond_0

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    move v1, v2

    .line 65
    :goto_0
    iput v1, p0, Lg30;->C:I

    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 76
    .line 77
    div-int/lit8 p2, p2, 0x2

    .line 78
    .line 79
    const p3, 0x7f070017

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    iput p1, p0, Lg30;->p:I

    .line 91
    .line 92
    new-instance p1, Landroid/os/Handler;

    .line 93
    .line 94
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 95
    .line 96
    .line 97
    iput-object p1, p0, Lg30;->s:Landroid/os/Handler;

    .line 98
    .line 99
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lg30;->k()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    iget-object v0, p0, Lg30;->t:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    move v3, v2

    .line 16
    :goto_0
    if-ge v3, v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    add-int/lit8 v3, v3, 0x1

    .line 23
    .line 24
    check-cast v4, Lub2;

    .line 25
    .line 26
    invoke-virtual {p0, v4}, Lg30;->u(Lub2;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lg30;->A:Landroid/view/View;

    .line 34
    .line 35
    iput-object v0, p0, Lg30;->B:Landroid/view/View;

    .line 36
    .line 37
    if-eqz v0, :cond_4

    .line 38
    .line 39
    iget-object v1, p0, Lg30;->K:Landroid/view/ViewTreeObserver;

    .line 40
    .line 41
    if-nez v1, :cond_2

    .line 42
    .line 43
    const/4 v2, 0x1

    .line 44
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p0, Lg30;->K:Landroid/view/ViewTreeObserver;

    .line 49
    .line 50
    if-eqz v2, :cond_3

    .line 51
    .line 52
    iget-object v1, p0, Lg30;->v:Ld30;

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 55
    .line 56
    .line 57
    :cond_3
    iget-object v0, p0, Lg30;->B:Landroid/view/View;

    .line 58
    .line 59
    iget-object p0, p0, Lg30;->w:Leb;

    .line 60
    .line 61
    invoke-virtual {v0, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 62
    .line 63
    .line 64
    :cond_4
    :goto_1
    return-void
.end method

.method public final b(Lub2;Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Lg30;->u:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    :goto_0
    if-ge v3, v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    check-cast v4, Lf30;

    .line 16
    .line 17
    iget-object v4, v4, Lf30;->b:Lub2;

    .line 18
    .line 19
    if-ne p1, v4, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 v3, -0x1

    .line 26
    :goto_1
    if-gez v3, :cond_2

    .line 27
    .line 28
    goto/16 :goto_5

    .line 29
    .line 30
    :cond_2
    add-int/lit8 v1, v3, 0x1

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-ge v1, v4, :cond_3

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Lf30;

    .line 43
    .line 44
    iget-object v1, v1, Lf30;->b:Lub2;

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Lub2;->c(Z)V

    .line 47
    .line 48
    .line 49
    :cond_3
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Lf30;

    .line 54
    .line 55
    iget-object v3, v1, Lf30;->b:Lub2;

    .line 56
    .line 57
    iget-object v1, v1, Lf30;->a:Lgc2;

    .line 58
    .line 59
    iget-object v4, v1, Lm42;->I:Lmg;

    .line 60
    .line 61
    iget-object v3, v3, Lub2;->r:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 62
    .line 63
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    if-eqz v6, :cond_6

    .line 72
    .line 73
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    check-cast v6, Ljava/lang/ref/WeakReference;

    .line 78
    .line 79
    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    check-cast v7, Lic2;

    .line 84
    .line 85
    if-eqz v7, :cond_5

    .line 86
    .line 87
    if-ne v7, p0, :cond_4

    .line 88
    .line 89
    :cond_5
    invoke-virtual {v3, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_6
    iget-boolean v3, p0, Lg30;->M:Z

    .line 94
    .line 95
    const/4 v5, 0x0

    .line 96
    if-eqz v3, :cond_7

    .line 97
    .line 98
    invoke-static {v4, v5}, Ldc2;->b(Landroid/widget/PopupWindow;Landroid/transition/Transition;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 102
    .line 103
    .line 104
    :cond_7
    invoke-virtual {v1}, Lm42;->dismiss()V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    const/4 v3, 0x1

    .line 112
    if-lez v1, :cond_8

    .line 113
    .line 114
    add-int/lit8 v4, v1, -0x1

    .line 115
    .line 116
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    check-cast v4, Lf30;

    .line 121
    .line 122
    iget v4, v4, Lf30;->c:I

    .line 123
    .line 124
    iput v4, p0, Lg30;->C:I

    .line 125
    .line 126
    goto :goto_4

    .line 127
    :cond_8
    iget-object v4, p0, Lg30;->A:Landroid/view/View;

    .line 128
    .line 129
    invoke-virtual {v4}, Landroid/view/View;->getLayoutDirection()I

    .line 130
    .line 131
    .line 132
    move-result v4

    .line 133
    if-ne v4, v3, :cond_9

    .line 134
    .line 135
    move v4, v2

    .line 136
    goto :goto_3

    .line 137
    :cond_9
    move v4, v3

    .line 138
    :goto_3
    iput v4, p0, Lg30;->C:I

    .line 139
    .line 140
    :goto_4
    if-nez v1, :cond_d

    .line 141
    .line 142
    invoke-virtual {p0}, Lg30;->dismiss()V

    .line 143
    .line 144
    .line 145
    iget-object p2, p0, Lg30;->J:Lhc2;

    .line 146
    .line 147
    if-eqz p2, :cond_a

    .line 148
    .line 149
    invoke-interface {p2, p1, v3}, Lhc2;->b(Lub2;Z)V

    .line 150
    .line 151
    .line 152
    :cond_a
    iget-object p1, p0, Lg30;->K:Landroid/view/ViewTreeObserver;

    .line 153
    .line 154
    if-eqz p1, :cond_c

    .line 155
    .line 156
    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    if-eqz p1, :cond_b

    .line 161
    .line 162
    iget-object p1, p0, Lg30;->K:Landroid/view/ViewTreeObserver;

    .line 163
    .line 164
    iget-object p2, p0, Lg30;->v:Ld30;

    .line 165
    .line 166
    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 167
    .line 168
    .line 169
    :cond_b
    iput-object v5, p0, Lg30;->K:Landroid/view/ViewTreeObserver;

    .line 170
    .line 171
    :cond_c
    iget-object p1, p0, Lg30;->B:Landroid/view/View;

    .line 172
    .line 173
    iget-object p2, p0, Lg30;->w:Leb;

    .line 174
    .line 175
    invoke-virtual {p1, p2}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 176
    .line 177
    .line 178
    iget-object p0, p0, Lg30;->L:Landroid/widget/PopupWindow$OnDismissListener;

    .line 179
    .line 180
    invoke-interface {p0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 181
    .line 182
    .line 183
    return-void

    .line 184
    :cond_d
    if-eqz p2, :cond_e

    .line 185
    .line 186
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object p0

    .line 190
    check-cast p0, Lf30;

    .line 191
    .line 192
    iget-object p0, p0, Lf30;->b:Lub2;

    .line 193
    .line 194
    invoke-virtual {p0, v2}, Lub2;->c(Z)V

    .line 195
    .line 196
    .line 197
    :cond_e
    :goto_5
    return-void
.end method

.method public final d(Lhc2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg30;->J:Lhc2;

    .line 2
    .line 3
    return-void
.end method

.method public final dismiss()V
    .locals 3

    .line 1
    iget-object p0, p0, Lg30;->u:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_1

    .line 8
    .line 9
    new-array v1, v0, [Lf30;

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, [Lf30;

    .line 16
    .line 17
    add-int/lit8 v0, v0, -0x1

    .line 18
    .line 19
    :goto_0
    if-ltz v0, :cond_1

    .line 20
    .line 21
    aget-object v1, p0, v0

    .line 22
    .line 23
    iget-object v2, v1, Lf30;->a:Lgc2;

    .line 24
    .line 25
    iget-object v2, v2, Lm42;->I:Lmg;

    .line 26
    .line 27
    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    iget-object v1, v1, Lf30;->a:Lgc2;

    .line 34
    .line 35
    invoke-virtual {v1}, Lm42;->dismiss()V

    .line 36
    .line 37
    .line 38
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    return-void
.end method

.method public final f()V
    .locals 4

    .line 1
    iget-object p0, p0, Lg30;->u:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    add-int/lit8 v1, v1, 0x1

    .line 15
    .line 16
    check-cast v2, Lf30;

    .line 17
    .line 18
    iget-object v2, v2, Lf30;->a:Lgc2;

    .line 19
    .line 20
    iget-object v2, v2, Lm42;->p:Lfc2;

    .line 21
    .line 22
    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    instance-of v3, v2, Landroid/widget/HeaderViewListAdapter;

    .line 27
    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    check-cast v2, Landroid/widget/HeaderViewListAdapter;

    .line 31
    .line 32
    invoke-virtual {v2}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Lsb2;

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    check-cast v2, Lsb2;

    .line 40
    .line 41
    :goto_1
    invoke-virtual {v2}, Lsb2;->notifyDataSetChanged()V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    return-void
.end method

.method public final g()Landroid/widget/ListView;
    .locals 1

    .line 1
    iget-object p0, p0, Lg30;->u:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    add-int/lit8 v0, v0, -0x1

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Lf30;

    .line 22
    .line 23
    iget-object p0, p0, Lf30;->a:Lgc2;

    .line 24
    .line 25
    iget-object p0, p0, Lm42;->p:Lfc2;

    .line 26
    .line 27
    return-object p0
.end method

.method public final i(Lkt3;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lg30;->u:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    :cond_0
    const/4 v4, 0x1

    .line 10
    if-ge v3, v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    add-int/lit8 v3, v3, 0x1

    .line 17
    .line 18
    check-cast v5, Lf30;

    .line 19
    .line 20
    iget-object v6, v5, Lf30;->b:Lub2;

    .line 21
    .line 22
    if-ne p1, v6, :cond_0

    .line 23
    .line 24
    iget-object p0, v5, Lf30;->a:Lgc2;

    .line 25
    .line 26
    iget-object p0, p0, Lm42;->p:Lfc2;

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 29
    .line 30
    .line 31
    return v4

    .line 32
    :cond_1
    invoke-virtual {p1}, Lub2;->hasVisibleItems()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Lg30;->l(Lub2;)V

    .line 39
    .line 40
    .line 41
    iget-object p0, p0, Lg30;->J:Lhc2;

    .line 42
    .line 43
    if-eqz p0, :cond_2

    .line 44
    .line 45
    invoke-interface {p0, p1}, Lhc2;->l(Lub2;)Z

    .line 46
    .line 47
    .line 48
    :cond_2
    return v4

    .line 49
    :cond_3
    return v2
.end method

.method public final j()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final k()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lg30;->u:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-lez v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Lf30;

    .line 15
    .line 16
    iget-object p0, p0, Lf30;->a:Lgc2;

    .line 17
    .line 18
    iget-object p0, p0, Lm42;->I:Lmg;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    if-eqz p0, :cond_0

    .line 25
    .line 26
    const/4 p0, 0x1

    .line 27
    return p0

    .line 28
    :cond_0
    return v1
.end method

.method public final l(Lub2;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lg30;->o:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p1, p0, v0}, Lub2;->b(Lic2;Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lg30;->k()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lg30;->u(Lub2;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object p0, p0, Lg30;->t:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final n(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lg30;->A:Landroid/view/View;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lg30;->A:Landroid/view/View;

    .line 6
    .line 7
    iget v0, p0, Lg30;->y:I

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-static {v0, p1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iput p1, p0, Lg30;->z:I

    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final o(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lg30;->H:Z

    .line 2
    .line 3
    return-void
.end method

.method public final onDismiss()V
    .locals 5

    .line 1
    iget-object p0, p0, Lg30;->u:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    if-ge v2, v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    check-cast v3, Lf30;

    .line 16
    .line 17
    iget-object v4, v3, Lf30;->a:Lgc2;

    .line 18
    .line 19
    iget-object v4, v4, Lm42;->I:Lmg;

    .line 20
    .line 21
    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-nez v4, :cond_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v3, 0x0

    .line 32
    :goto_1
    if-eqz v3, :cond_2

    .line 33
    .line 34
    iget-object p0, v3, Lf30;->b:Lub2;

    .line 35
    .line 36
    invoke-virtual {p0, v1}, Lub2;->c(Z)V

    .line 37
    .line 38
    .line 39
    :cond_2
    return-void
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 p3, 0x1

    .line 6
    if-ne p1, p3, :cond_0

    .line 7
    .line 8
    const/16 p1, 0x52

    .line 9
    .line 10
    if-ne p2, p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lg30;->dismiss()V

    .line 13
    .line 14
    .line 15
    return p3

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return p0
.end method

.method public final p(I)V
    .locals 1

    .line 1
    iget v0, p0, Lg30;->y:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lg30;->y:I

    .line 6
    .line 7
    iget-object v0, p0, Lg30;->A:Landroid/view/View;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {p1, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iput p1, p0, Lg30;->z:I

    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final q(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lg30;->D:Z

    .line 3
    .line 4
    iput p1, p0, Lg30;->F:I

    .line 5
    .line 6
    return-void
.end method

.method public final r(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg30;->L:Landroid/widget/PopupWindow$OnDismissListener;

    .line 2
    .line 3
    return-void
.end method

.method public final s(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lg30;->I:Z

    .line 2
    .line 3
    return-void
.end method

.method public final t(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lg30;->E:Z

    .line 3
    .line 4
    iput p1, p0, Lg30;->G:I

    .line 5
    .line 6
    return-void
.end method

.method public final u(Lub2;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lg30;->o:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    new-instance v4, Lsb2;

    .line 12
    .line 13
    iget-boolean v5, v0, Lg30;->r:Z

    .line 14
    .line 15
    const v6, 0x7f0c000b

    .line 16
    .line 17
    .line 18
    invoke-direct {v4, v1, v3, v5, v6}, Lsb2;-><init>(Lub2;Landroid/view/LayoutInflater;ZI)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lg30;->k()Z

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    const/4 v6, 0x1

    .line 26
    if-nez v5, :cond_0

    .line 27
    .line 28
    iget-boolean v5, v0, Lg30;->H:Z

    .line 29
    .line 30
    if-eqz v5, :cond_0

    .line 31
    .line 32
    iput-boolean v6, v4, Lsb2;->c:Z

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_0
    invoke-virtual {v0}, Lg30;->k()Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-eqz v5, :cond_3

    .line 40
    .line 41
    iget-object v5, v1, Lub2;->f:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    const/4 v8, 0x0

    .line 48
    :goto_0
    if-ge v8, v5, :cond_2

    .line 49
    .line 50
    invoke-virtual {v1, v8}, Lub2;->getItem(I)Landroid/view/MenuItem;

    .line 51
    .line 52
    .line 53
    move-result-object v9

    .line 54
    invoke-interface {v9}, Landroid/view/MenuItem;->isVisible()Z

    .line 55
    .line 56
    .line 57
    move-result v10

    .line 58
    if-eqz v10, :cond_1

    .line 59
    .line 60
    invoke-interface {v9}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 61
    .line 62
    .line 63
    move-result-object v9

    .line 64
    if-eqz v9, :cond_1

    .line 65
    .line 66
    move v5, v6

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    add-int/lit8 v8, v8, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    const/4 v5, 0x0

    .line 72
    :goto_1
    iput-boolean v5, v4, Lsb2;->c:Z

    .line 73
    .line 74
    :cond_3
    :goto_2
    iget v5, v0, Lg30;->p:I

    .line 75
    .line 76
    invoke-static {v4, v2, v5}, Lac2;->m(Landroid/widget/ListAdapter;Landroid/content/Context;I)I

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    new-instance v8, Lgc2;

    .line 81
    .line 82
    iget v9, v0, Lg30;->q:I

    .line 83
    .line 84
    invoke-direct {v8, v2, v9}, Lm42;-><init>(Landroid/content/Context;I)V

    .line 85
    .line 86
    .line 87
    iget-object v2, v0, Lg30;->x:Lwu4;

    .line 88
    .line 89
    iput-object v2, v8, Lgc2;->L:Lwu4;

    .line 90
    .line 91
    iput-object v0, v8, Lm42;->z:Lac2;

    .line 92
    .line 93
    iget-object v2, v8, Lm42;->I:Lmg;

    .line 94
    .line 95
    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 96
    .line 97
    .line 98
    iget-object v9, v0, Lg30;->A:Landroid/view/View;

    .line 99
    .line 100
    iput-object v9, v8, Lm42;->y:Landroid/view/View;

    .line 101
    .line 102
    iget v9, v0, Lg30;->z:I

    .line 103
    .line 104
    iput v9, v8, Lm42;->w:I

    .line 105
    .line 106
    iput-boolean v6, v8, Lm42;->H:Z

    .line 107
    .line 108
    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 109
    .line 110
    .line 111
    const/4 v9, 0x2

    .line 112
    invoke-virtual {v2, v9}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v8, v4}, Lm42;->c(Landroid/widget/ListAdapter;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    if-eqz v4, :cond_4

    .line 123
    .line 124
    iget-object v10, v8, Lm42;->F:Landroid/graphics/Rect;

    .line 125
    .line 126
    invoke-virtual {v4, v10}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 127
    .line 128
    .line 129
    iget v4, v10, Landroid/graphics/Rect;->left:I

    .line 130
    .line 131
    iget v10, v10, Landroid/graphics/Rect;->right:I

    .line 132
    .line 133
    add-int/2addr v4, v10

    .line 134
    add-int/2addr v4, v5

    .line 135
    iput v4, v8, Lm42;->q:I

    .line 136
    .line 137
    goto :goto_3

    .line 138
    :cond_4
    iput v5, v8, Lm42;->q:I

    .line 139
    .line 140
    :goto_3
    iget v4, v0, Lg30;->z:I

    .line 141
    .line 142
    iput v4, v8, Lm42;->w:I

    .line 143
    .line 144
    iget-object v4, v0, Lg30;->u:Ljava/util/ArrayList;

    .line 145
    .line 146
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 147
    .line 148
    .line 149
    move-result v10

    .line 150
    if-lez v10, :cond_e

    .line 151
    .line 152
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 153
    .line 154
    .line 155
    move-result v10

    .line 156
    sub-int/2addr v10, v6

    .line 157
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v10

    .line 161
    check-cast v10, Lf30;

    .line 162
    .line 163
    iget-object v12, v10, Lf30;->b:Lub2;

    .line 164
    .line 165
    iget-object v13, v12, Lub2;->f:Ljava/util/ArrayList;

    .line 166
    .line 167
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 168
    .line 169
    .line 170
    move-result v13

    .line 171
    const/4 v14, 0x0

    .line 172
    :goto_4
    if-ge v14, v13, :cond_6

    .line 173
    .line 174
    invoke-virtual {v12, v14}, Lub2;->getItem(I)Landroid/view/MenuItem;

    .line 175
    .line 176
    .line 177
    move-result-object v15

    .line 178
    invoke-interface {v15}, Landroid/view/MenuItem;->hasSubMenu()Z

    .line 179
    .line 180
    .line 181
    move-result v16

    .line 182
    if-eqz v16, :cond_5

    .line 183
    .line 184
    invoke-interface {v15}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    .line 185
    .line 186
    .line 187
    move-result-object v9

    .line 188
    if-ne v1, v9, :cond_5

    .line 189
    .line 190
    goto :goto_5

    .line 191
    :cond_5
    add-int/lit8 v14, v14, 0x1

    .line 192
    .line 193
    const/4 v9, 0x2

    .line 194
    goto :goto_4

    .line 195
    :cond_6
    const/4 v15, 0x0

    .line 196
    :goto_5
    if-nez v15, :cond_7

    .line 197
    .line 198
    const/4 v6, 0x0

    .line 199
    const/16 v17, 0x0

    .line 200
    .line 201
    goto :goto_a

    .line 202
    :cond_7
    iget-object v9, v10, Lf30;->a:Lgc2;

    .line 203
    .line 204
    iget-object v9, v9, Lm42;->p:Lfc2;

    .line 205
    .line 206
    invoke-virtual {v9}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 207
    .line 208
    .line 209
    move-result-object v12

    .line 210
    instance-of v13, v12, Landroid/widget/HeaderViewListAdapter;

    .line 211
    .line 212
    if-eqz v13, :cond_8

    .line 213
    .line 214
    check-cast v12, Landroid/widget/HeaderViewListAdapter;

    .line 215
    .line 216
    invoke-virtual {v12}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    .line 217
    .line 218
    .line 219
    move-result v13

    .line 220
    invoke-virtual {v12}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    .line 221
    .line 222
    .line 223
    move-result-object v12

    .line 224
    check-cast v12, Lsb2;

    .line 225
    .line 226
    goto :goto_6

    .line 227
    :cond_8
    check-cast v12, Lsb2;

    .line 228
    .line 229
    const/4 v13, 0x0

    .line 230
    :goto_6
    invoke-virtual {v12}, Lsb2;->getCount()I

    .line 231
    .line 232
    .line 233
    move-result v14

    .line 234
    const/4 v11, 0x0

    .line 235
    const/16 v17, 0x0

    .line 236
    .line 237
    :goto_7
    const/4 v7, -0x1

    .line 238
    if-ge v11, v14, :cond_a

    .line 239
    .line 240
    invoke-virtual {v12, v11}, Lsb2;->b(I)Lzb2;

    .line 241
    .line 242
    .line 243
    move-result-object v6

    .line 244
    if-ne v15, v6, :cond_9

    .line 245
    .line 246
    goto :goto_8

    .line 247
    :cond_9
    add-int/lit8 v11, v11, 0x1

    .line 248
    .line 249
    const/4 v6, 0x1

    .line 250
    goto :goto_7

    .line 251
    :cond_a
    move v11, v7

    .line 252
    :goto_8
    if-ne v11, v7, :cond_c

    .line 253
    .line 254
    :cond_b
    :goto_9
    const/4 v6, 0x0

    .line 255
    goto :goto_a

    .line 256
    :cond_c
    add-int/2addr v11, v13

    .line 257
    invoke-virtual {v9}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 258
    .line 259
    .line 260
    move-result v6

    .line 261
    sub-int/2addr v11, v6

    .line 262
    if-ltz v11, :cond_b

    .line 263
    .line 264
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    .line 265
    .line 266
    .line 267
    move-result v6

    .line 268
    if-lt v11, v6, :cond_d

    .line 269
    .line 270
    goto :goto_9

    .line 271
    :cond_d
    invoke-virtual {v9, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 272
    .line 273
    .line 274
    move-result-object v6

    .line 275
    goto :goto_a

    .line 276
    :cond_e
    const/16 v17, 0x0

    .line 277
    .line 278
    const/4 v6, 0x0

    .line 279
    const/4 v10, 0x0

    .line 280
    :goto_a
    if-eqz v6, :cond_1a

    .line 281
    .line 282
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 283
    .line 284
    const/16 v9, 0x1c

    .line 285
    .line 286
    if-gt v7, v9, :cond_10

    .line 287
    .line 288
    sget-object v7, Lgc2;->M:Ljava/lang/reflect/Method;

    .line 289
    .line 290
    if-eqz v7, :cond_f

    .line 291
    .line 292
    const/4 v9, 0x1

    .line 293
    :try_start_0
    new-array v11, v9, [Ljava/lang/Object;

    .line 294
    .line 295
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 296
    .line 297
    aput-object v9, v11, v17

    .line 298
    .line 299
    invoke-virtual {v7, v2, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    .line 301
    .line 302
    :cond_f
    :goto_b
    const/4 v7, 0x0

    .line 303
    goto :goto_c

    .line 304
    :catch_0
    const-string v7, "MenuPopupWindow"

    .line 305
    .line 306
    const-string v9, "Could not invoke setTouchModal() on PopupWindow. Oh well."

    .line 307
    .line 308
    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    .line 310
    .line 311
    goto :goto_b

    .line 312
    :cond_10
    move/from16 v7, v17

    .line 313
    .line 314
    invoke-static {v2, v7}, Lec2;->a(Landroid/widget/PopupWindow;Z)V

    .line 315
    .line 316
    .line 317
    goto :goto_b

    .line 318
    :goto_c
    invoke-static {v2, v7}, Ldc2;->a(Landroid/widget/PopupWindow;Landroid/transition/Transition;)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 322
    .line 323
    .line 324
    move-result v2

    .line 325
    const/16 v18, 0x1

    .line 326
    .line 327
    add-int/lit8 v2, v2, -0x1

    .line 328
    .line 329
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object v2

    .line 333
    check-cast v2, Lf30;

    .line 334
    .line 335
    iget-object v2, v2, Lf30;->a:Lgc2;

    .line 336
    .line 337
    iget-object v2, v2, Lm42;->p:Lfc2;

    .line 338
    .line 339
    const/4 v7, 0x2

    .line 340
    new-array v9, v7, [I

    .line 341
    .line 342
    invoke-virtual {v2, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 343
    .line 344
    .line 345
    new-instance v7, Landroid/graphics/Rect;

    .line 346
    .line 347
    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 348
    .line 349
    .line 350
    iget-object v11, v0, Lg30;->B:Landroid/view/View;

    .line 351
    .line 352
    invoke-virtual {v11, v7}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 353
    .line 354
    .line 355
    iget v11, v0, Lg30;->C:I

    .line 356
    .line 357
    const/4 v12, 0x1

    .line 358
    if-ne v11, v12, :cond_12

    .line 359
    .line 360
    const/16 v17, 0x0

    .line 361
    .line 362
    aget v9, v9, v17

    .line 363
    .line 364
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 365
    .line 366
    .line 367
    move-result v2

    .line 368
    add-int/2addr v2, v9

    .line 369
    add-int/2addr v2, v5

    .line 370
    iget v7, v7, Landroid/graphics/Rect;->right:I

    .line 371
    .line 372
    if-le v2, v7, :cond_11

    .line 373
    .line 374
    move/from16 v2, v17

    .line 375
    .line 376
    :goto_d
    const/4 v9, 0x1

    .line 377
    goto :goto_f

    .line 378
    :cond_11
    :goto_e
    const/4 v2, 0x1

    .line 379
    goto :goto_d

    .line 380
    :cond_12
    const/16 v17, 0x0

    .line 381
    .line 382
    aget v2, v9, v17

    .line 383
    .line 384
    sub-int/2addr v2, v5

    .line 385
    if-gez v2, :cond_13

    .line 386
    .line 387
    goto :goto_e

    .line 388
    :cond_13
    const/4 v2, 0x0

    .line 389
    goto :goto_d

    .line 390
    :goto_f
    if-ne v2, v9, :cond_14

    .line 391
    .line 392
    const/4 v7, 0x1

    .line 393
    goto :goto_10

    .line 394
    :cond_14
    const/4 v7, 0x0

    .line 395
    :goto_10
    iput v2, v0, Lg30;->C:I

    .line 396
    .line 397
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 398
    .line 399
    const/16 v9, 0x1a

    .line 400
    .line 401
    const/4 v11, 0x5

    .line 402
    if-lt v2, v9, :cond_15

    .line 403
    .line 404
    iput-object v6, v8, Lm42;->y:Landroid/view/View;

    .line 405
    .line 406
    const/4 v2, 0x0

    .line 407
    const/4 v12, 0x0

    .line 408
    goto :goto_11

    .line 409
    :cond_15
    const/4 v2, 0x2

    .line 410
    new-array v9, v2, [I

    .line 411
    .line 412
    iget-object v12, v0, Lg30;->A:Landroid/view/View;

    .line 413
    .line 414
    invoke-virtual {v12, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 415
    .line 416
    .line 417
    new-array v2, v2, [I

    .line 418
    .line 419
    invoke-virtual {v6, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 420
    .line 421
    .line 422
    iget v12, v0, Lg30;->z:I

    .line 423
    .line 424
    and-int/lit8 v12, v12, 0x7

    .line 425
    .line 426
    const/16 v17, 0x0

    .line 427
    .line 428
    if-ne v12, v11, :cond_16

    .line 429
    .line 430
    aget v12, v9, v17

    .line 431
    .line 432
    iget-object v13, v0, Lg30;->A:Landroid/view/View;

    .line 433
    .line 434
    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    .line 435
    .line 436
    .line 437
    move-result v13

    .line 438
    add-int/2addr v13, v12

    .line 439
    aput v13, v9, v17

    .line 440
    .line 441
    aget v12, v2, v17

    .line 442
    .line 443
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    .line 444
    .line 445
    .line 446
    move-result v13

    .line 447
    add-int/2addr v13, v12

    .line 448
    aput v13, v2, v17

    .line 449
    .line 450
    :cond_16
    aget v12, v2, v17

    .line 451
    .line 452
    aget v13, v9, v17

    .line 453
    .line 454
    sub-int/2addr v12, v13

    .line 455
    const/16 v18, 0x1

    .line 456
    .line 457
    aget v2, v2, v18

    .line 458
    .line 459
    aget v9, v9, v18

    .line 460
    .line 461
    sub-int/2addr v2, v9

    .line 462
    :goto_11
    iget v9, v0, Lg30;->z:I

    .line 463
    .line 464
    and-int/2addr v9, v11

    .line 465
    if-ne v9, v11, :cond_19

    .line 466
    .line 467
    if-eqz v7, :cond_17

    .line 468
    .line 469
    add-int/2addr v12, v5

    .line 470
    goto :goto_12

    .line 471
    :cond_17
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    .line 472
    .line 473
    .line 474
    move-result v5

    .line 475
    :cond_18
    sub-int/2addr v12, v5

    .line 476
    goto :goto_12

    .line 477
    :cond_19
    if-eqz v7, :cond_18

    .line 478
    .line 479
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    .line 480
    .line 481
    .line 482
    move-result v5

    .line 483
    add-int/2addr v12, v5

    .line 484
    :goto_12
    iput v12, v8, Lm42;->r:I

    .line 485
    .line 486
    const/4 v9, 0x1

    .line 487
    iput-boolean v9, v8, Lm42;->v:Z

    .line 488
    .line 489
    iput-boolean v9, v8, Lm42;->u:Z

    .line 490
    .line 491
    iput v2, v8, Lm42;->s:I

    .line 492
    .line 493
    iput-boolean v9, v8, Lm42;->t:Z

    .line 494
    .line 495
    goto :goto_14

    .line 496
    :cond_1a
    iget-boolean v2, v0, Lg30;->D:Z

    .line 497
    .line 498
    if-eqz v2, :cond_1b

    .line 499
    .line 500
    iget v2, v0, Lg30;->F:I

    .line 501
    .line 502
    iput v2, v8, Lm42;->r:I

    .line 503
    .line 504
    :cond_1b
    iget-boolean v2, v0, Lg30;->E:Z

    .line 505
    .line 506
    if-eqz v2, :cond_1c

    .line 507
    .line 508
    iget v2, v0, Lg30;->G:I

    .line 509
    .line 510
    iput v2, v8, Lm42;->s:I

    .line 511
    .line 512
    const/4 v9, 0x1

    .line 513
    iput-boolean v9, v8, Lm42;->t:Z

    .line 514
    .line 515
    :cond_1c
    iget-object v2, v0, Lac2;->n:Landroid/graphics/Rect;

    .line 516
    .line 517
    if-eqz v2, :cond_1d

    .line 518
    .line 519
    new-instance v7, Landroid/graphics/Rect;

    .line 520
    .line 521
    invoke-direct {v7, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 522
    .line 523
    .line 524
    goto :goto_13

    .line 525
    :cond_1d
    const/4 v7, 0x0

    .line 526
    :goto_13
    iput-object v7, v8, Lm42;->G:Landroid/graphics/Rect;

    .line 527
    .line 528
    :goto_14
    new-instance v2, Lf30;

    .line 529
    .line 530
    iget v5, v0, Lg30;->C:I

    .line 531
    .line 532
    invoke-direct {v2, v8, v1, v5}, Lf30;-><init>(Lgc2;Lub2;I)V

    .line 533
    .line 534
    .line 535
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 536
    .line 537
    .line 538
    invoke-virtual {v8}, Lm42;->a()V

    .line 539
    .line 540
    .line 541
    iget-object v2, v8, Lm42;->p:Lfc2;

    .line 542
    .line 543
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 544
    .line 545
    .line 546
    if-nez v10, :cond_1e

    .line 547
    .line 548
    iget-boolean v0, v0, Lg30;->I:Z

    .line 549
    .line 550
    if-eqz v0, :cond_1e

    .line 551
    .line 552
    iget-object v0, v1, Lub2;->l:Ljava/lang/CharSequence;

    .line 553
    .line 554
    if-eqz v0, :cond_1e

    .line 555
    .line 556
    const v0, 0x7f0c0012

    .line 557
    .line 558
    .line 559
    const/4 v7, 0x0

    .line 560
    invoke-virtual {v3, v0, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 561
    .line 562
    .line 563
    move-result-object v0

    .line 564
    check-cast v0, Landroid/widget/FrameLayout;

    .line 565
    .line 566
    const v3, 0x1020016

    .line 567
    .line 568
    .line 569
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 570
    .line 571
    .line 572
    move-result-object v3

    .line 573
    check-cast v3, Landroid/widget/TextView;

    .line 574
    .line 575
    invoke-virtual {v0, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 576
    .line 577
    .line 578
    iget-object v1, v1, Lub2;->l:Ljava/lang/CharSequence;

    .line 579
    .line 580
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 581
    .line 582
    .line 583
    const/4 v1, 0x0

    .line 584
    invoke-virtual {v2, v0, v1, v7}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 585
    .line 586
    .line 587
    invoke-virtual {v8}, Lm42;->a()V

    .line 588
    .line 589
    .line 590
    :cond_1e
    return-void
.end method
