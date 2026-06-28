.class public final Lu5;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lic2;


# instance fields
.field public A:I

.field public B:I

.field public C:Z

.field public final D:Landroid/util/SparseBooleanArray;

.field public E:Lr5;

.field public F:Lr5;

.field public G:Lrf1;

.field public H:Ls5;

.field public final I:Ldh1;

.field public final n:Landroid/content/Context;

.field public o:Landroid/content/Context;

.field public p:Lub2;

.field public final q:Landroid/view/LayoutInflater;

.field public r:Lhc2;

.field public final s:I

.field public t:Landroidx/appcompat/widget/ActionMenuView;

.field public u:Lt5;

.field public v:Landroid/graphics/drawable/Drawable;

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lu5;->n:Landroid/content/Context;

    .line 5
    .line 6
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lu5;->q:Landroid/view/LayoutInflater;

    .line 11
    .line 12
    const p1, 0x7f0c0002

    .line 13
    .line 14
    .line 15
    iput p1, p0, Lu5;->s:I

    .line 16
    .line 17
    new-instance p1, Landroid/util/SparseBooleanArray;

    .line 18
    .line 19
    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lu5;->D:Landroid/util/SparseBooleanArray;

    .line 23
    .line 24
    new-instance p1, Ldh1;

    .line 25
    .line 26
    invoke-direct {p1, p0}, Ldh1;-><init>(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lu5;->I:Ldh1;

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final a(Lzb2;Landroid/view/View;Landroidx/appcompat/widget/ActionMenuView;)Landroid/view/View;
    .locals 5

    .line 1
    iget-object v0, p1, Lzb2;->z:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v1, v0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    const/16 v2, 0x8

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    iget v4, p1, Lzb2;->y:I

    .line 14
    .line 15
    and-int/2addr v4, v2

    .line 16
    if-eqz v4, :cond_4

    .line 17
    .line 18
    if-eqz v0, :cond_4

    .line 19
    .line 20
    :cond_1
    instance-of v0, p2, Lkc2;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    check-cast p2, Lkc2;

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_2
    iget-object p2, p0, Lu5;->q:Landroid/view/LayoutInflater;

    .line 28
    .line 29
    iget v0, p0, Lu5;->s:I

    .line 30
    .line 31
    invoke-virtual {p2, v0, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    check-cast p2, Lkc2;

    .line 36
    .line 37
    :goto_1
    invoke-interface {p2, p1}, Lkc2;->a(Lzb2;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lu5;->t:Landroidx/appcompat/widget/ActionMenuView;

    .line 41
    .line 42
    move-object v1, p2

    .line 43
    check-cast v1, Landroidx/appcompat/view/menu/ActionMenuItemView;

    .line 44
    .line 45
    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setItemInvoker(Ltb2;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lu5;->H:Ls5;

    .line 49
    .line 50
    if-nez v0, :cond_3

    .line 51
    .line 52
    new-instance v0, Ls5;

    .line 53
    .line 54
    invoke-direct {v0, p0}, Ls5;-><init>(Lu5;)V

    .line 55
    .line 56
    .line 57
    iput-object v0, p0, Lu5;->H:Ls5;

    .line 58
    .line 59
    :cond_3
    iget-object p0, p0, Lu5;->H:Ls5;

    .line 60
    .line 61
    invoke-virtual {v1, p0}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setPopupCallback(Lq5;)V

    .line 62
    .line 63
    .line 64
    move-object v1, p2

    .line 65
    check-cast v1, Landroid/view/View;

    .line 66
    .line 67
    :cond_4
    iget-boolean p0, p1, Lzb2;->B:Z

    .line 68
    .line 69
    if-eqz p0, :cond_5

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_5
    move v2, v3

    .line 73
    :goto_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    instance-of p1, p0, Lw5;

    .line 84
    .line 85
    if-nez p1, :cond_6

    .line 86
    .line 87
    invoke-static {p0}, Landroidx/appcompat/widget/ActionMenuView;->i(Landroid/view/ViewGroup$LayoutParams;)Lw5;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-virtual {v1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    .line 93
    .line 94
    :cond_6
    return-object v1
.end method

.method public final b(Lub2;Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lu5;->g()Z

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lu5;->F:Lr5;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcc2;->b()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-object v0, v0, Lcc2;->i:Lac2;

    .line 15
    .line 16
    invoke-interface {v0}, Ltm3;->dismiss()V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object p0, p0, Lu5;->r:Lhc2;

    .line 20
    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    invoke-interface {p0, p1, p2}, Lhc2;->b(Lub2;Z)V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method public final c(Lzb2;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final d(Lhc2;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final e(Lzb2;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final f()V
    .locals 11

    .line 1
    iget-object v0, p0, Lu5;->t:Landroidx/appcompat/widget/ActionMenuView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_3

    .line 8
    .line 9
    :cond_0
    iget-object v3, p0, Lu5;->p:Lub2;

    .line 10
    .line 11
    if-eqz v3, :cond_6

    .line 12
    .line 13
    invoke-virtual {v3}, Lub2;->i()V

    .line 14
    .line 15
    .line 16
    iget-object v3, p0, Lu5;->p:Lub2;

    .line 17
    .line 18
    invoke-virtual {v3}, Lub2;->k()Ljava/util/ArrayList;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    move v5, v2

    .line 27
    move v6, v5

    .line 28
    :goto_0
    if-ge v5, v4, :cond_7

    .line 29
    .line 30
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v7

    .line 34
    check-cast v7, Lzb2;

    .line 35
    .line 36
    iget v8, v7, Lzb2;->x:I

    .line 37
    .line 38
    const/16 v9, 0x20

    .line 39
    .line 40
    and-int/2addr v8, v9

    .line 41
    if-ne v8, v9, :cond_5

    .line 42
    .line 43
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v8

    .line 47
    instance-of v9, v8, Lkc2;

    .line 48
    .line 49
    if-eqz v9, :cond_1

    .line 50
    .line 51
    move-object v9, v8

    .line 52
    check-cast v9, Lkc2;

    .line 53
    .line 54
    invoke-interface {v9}, Lkc2;->getItemData()Lzb2;

    .line 55
    .line 56
    .line 57
    move-result-object v9

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    move-object v9, v1

    .line 60
    :goto_1
    invoke-virtual {p0, v7, v8, v0}, Lu5;->a(Lzb2;Landroid/view/View;Landroidx/appcompat/widget/ActionMenuView;)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v10

    .line 64
    if-eq v7, v9, :cond_2

    .line 65
    .line 66
    invoke-virtual {v10, v2}, Landroid/view/View;->setPressed(Z)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v10}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 70
    .line 71
    .line 72
    :cond_2
    if-eq v10, v8, :cond_4

    .line 73
    .line 74
    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    check-cast v7, Landroid/view/ViewGroup;

    .line 79
    .line 80
    if-eqz v7, :cond_3

    .line 81
    .line 82
    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 83
    .line 84
    .line 85
    :cond_3
    iget-object v7, p0, Lu5;->t:Landroidx/appcompat/widget/ActionMenuView;

    .line 86
    .line 87
    invoke-virtual {v7, v10, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 88
    .line 89
    .line 90
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 91
    .line 92
    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_6
    move v6, v2

    .line 96
    :cond_7
    :goto_2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    if-ge v6, v3, :cond_9

    .line 101
    .line 102
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    iget-object v4, p0, Lu5;->u:Lt5;

    .line 107
    .line 108
    if-ne v3, v4, :cond_8

    .line 109
    .line 110
    add-int/lit8 v6, v6, 0x1

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_8
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 114
    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_9
    :goto_3
    iget-object v0, p0, Lu5;->t:Landroidx/appcompat/widget/ActionMenuView;

    .line 118
    .line 119
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 120
    .line 121
    .line 122
    iget-object v0, p0, Lu5;->p:Lub2;

    .line 123
    .line 124
    if-eqz v0, :cond_a

    .line 125
    .line 126
    invoke-virtual {v0}, Lub2;->i()V

    .line 127
    .line 128
    .line 129
    iget-object v0, v0, Lub2;->i:Ljava/util/ArrayList;

    .line 130
    .line 131
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    move v4, v2

    .line 136
    :goto_4
    if-ge v4, v3, :cond_a

    .line 137
    .line 138
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    check-cast v5, Lzb2;

    .line 143
    .line 144
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    .line 146
    .line 147
    add-int/lit8 v4, v4, 0x1

    .line 148
    .line 149
    goto :goto_4

    .line 150
    :cond_a
    iget-object v0, p0, Lu5;->p:Lub2;

    .line 151
    .line 152
    if-eqz v0, :cond_b

    .line 153
    .line 154
    invoke-virtual {v0}, Lub2;->i()V

    .line 155
    .line 156
    .line 157
    iget-object v1, v0, Lub2;->j:Ljava/util/ArrayList;

    .line 158
    .line 159
    :cond_b
    iget-boolean v0, p0, Lu5;->x:Z

    .line 160
    .line 161
    const/4 v3, 0x1

    .line 162
    if-eqz v0, :cond_d

    .line 163
    .line 164
    if-eqz v1, :cond_d

    .line 165
    .line 166
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    if-ne v0, v3, :cond_c

    .line 171
    .line 172
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    check-cast v0, Lzb2;

    .line 177
    .line 178
    iget-boolean v0, v0, Lzb2;->B:Z

    .line 179
    .line 180
    xor-int/lit8 v2, v0, 0x1

    .line 181
    .line 182
    goto :goto_5

    .line 183
    :cond_c
    if-lez v0, :cond_d

    .line 184
    .line 185
    move v2, v3

    .line 186
    :cond_d
    :goto_5
    iget-object v0, p0, Lu5;->u:Lt5;

    .line 187
    .line 188
    if-eqz v2, :cond_10

    .line 189
    .line 190
    if-nez v0, :cond_e

    .line 191
    .line 192
    new-instance v0, Lt5;

    .line 193
    .line 194
    iget-object v1, p0, Lu5;->n:Landroid/content/Context;

    .line 195
    .line 196
    invoke-direct {v0, p0, v1}, Lt5;-><init>(Lu5;Landroid/content/Context;)V

    .line 197
    .line 198
    .line 199
    iput-object v0, p0, Lu5;->u:Lt5;

    .line 200
    .line 201
    :cond_e
    iget-object v0, p0, Lu5;->u:Lt5;

    .line 202
    .line 203
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    check-cast v0, Landroid/view/ViewGroup;

    .line 208
    .line 209
    iget-object v1, p0, Lu5;->t:Landroidx/appcompat/widget/ActionMenuView;

    .line 210
    .line 211
    if-eq v0, v1, :cond_11

    .line 212
    .line 213
    if-eqz v0, :cond_f

    .line 214
    .line 215
    iget-object v1, p0, Lu5;->u:Lt5;

    .line 216
    .line 217
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 218
    .line 219
    .line 220
    :cond_f
    iget-object v0, p0, Lu5;->t:Landroidx/appcompat/widget/ActionMenuView;

    .line 221
    .line 222
    iget-object v1, p0, Lu5;->u:Lt5;

    .line 223
    .line 224
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 225
    .line 226
    .line 227
    invoke-static {}, Landroidx/appcompat/widget/ActionMenuView;->h()Lw5;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    iput-boolean v3, v2, Lw5;->a:Z

    .line 232
    .line 233
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 234
    .line 235
    .line 236
    goto :goto_6

    .line 237
    :cond_10
    if-eqz v0, :cond_11

    .line 238
    .line 239
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    iget-object v1, p0, Lu5;->t:Landroidx/appcompat/widget/ActionMenuView;

    .line 244
    .line 245
    if-ne v0, v1, :cond_11

    .line 246
    .line 247
    iget-object v0, p0, Lu5;->u:Lt5;

    .line 248
    .line 249
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 250
    .line 251
    .line 252
    :cond_11
    :goto_6
    iget-object v0, p0, Lu5;->t:Landroidx/appcompat/widget/ActionMenuView;

    .line 253
    .line 254
    iget-boolean p0, p0, Lu5;->x:Z

    .line 255
    .line 256
    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ActionMenuView;->setOverflowReserved(Z)V

    .line 257
    .line 258
    .line 259
    return-void
.end method

.method public final g()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lu5;->G:Lrf1;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v2, p0, Lu5;->t:Landroidx/appcompat/widget/ActionMenuView;

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    invoke-virtual {v2, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lu5;->G:Lrf1;

    .line 15
    .line 16
    return v1

    .line 17
    :cond_0
    iget-object p0, p0, Lu5;->E:Lr5;

    .line 18
    .line 19
    if-eqz p0, :cond_2

    .line 20
    .line 21
    invoke-virtual {p0}, Lcc2;->b()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object p0, p0, Lcc2;->i:Lac2;

    .line 28
    .line 29
    invoke-interface {p0}, Ltm3;->dismiss()V

    .line 30
    .line 31
    .line 32
    :cond_1
    return v1

    .line 33
    :cond_2
    const/4 p0, 0x0

    .line 34
    return p0
.end method

.method public final h(Landroid/content/Context;Lub2;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lu5;->o:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lu5;->p:Lub2;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    iget-boolean v0, p0, Lu5;->y:Z

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lu5;->x:Z

    .line 18
    .line 19
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 28
    .line 29
    const/4 v1, 0x2

    .line 30
    div-int/2addr v0, v1

    .line 31
    iput v0, p0, Lu5;->z:I

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 42
    .line 43
    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 44
    .line 45
    iget p1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 46
    .line 47
    const/16 v3, 0x258

    .line 48
    .line 49
    if-gt p1, v3, :cond_6

    .line 50
    .line 51
    if-gt v0, v3, :cond_6

    .line 52
    .line 53
    const/16 p1, 0x2d0

    .line 54
    .line 55
    const/16 v3, 0x3c0

    .line 56
    .line 57
    if-le v0, v3, :cond_1

    .line 58
    .line 59
    if-gt v2, p1, :cond_6

    .line 60
    .line 61
    :cond_1
    if-le v0, p1, :cond_2

    .line 62
    .line 63
    if-le v2, v3, :cond_2

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    const/16 p1, 0x1f4

    .line 67
    .line 68
    if-ge v0, p1, :cond_5

    .line 69
    .line 70
    const/16 p1, 0x1e0

    .line 71
    .line 72
    const/16 v3, 0x280

    .line 73
    .line 74
    if-le v0, v3, :cond_3

    .line 75
    .line 76
    if-gt v2, p1, :cond_5

    .line 77
    .line 78
    :cond_3
    if-le v0, p1, :cond_4

    .line 79
    .line 80
    if-le v2, v3, :cond_4

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_4
    const/16 p1, 0x168

    .line 84
    .line 85
    if-lt v0, p1, :cond_7

    .line 86
    .line 87
    const/4 v1, 0x3

    .line 88
    goto :goto_2

    .line 89
    :cond_5
    :goto_0
    const/4 v1, 0x4

    .line 90
    goto :goto_2

    .line 91
    :cond_6
    :goto_1
    const/4 v1, 0x5

    .line 92
    :cond_7
    :goto_2
    iput v1, p0, Lu5;->B:I

    .line 93
    .line 94
    iget p1, p0, Lu5;->z:I

    .line 95
    .line 96
    iget-boolean v0, p0, Lu5;->x:Z

    .line 97
    .line 98
    const/4 v1, 0x0

    .line 99
    if-eqz v0, :cond_a

    .line 100
    .line 101
    iget-object v0, p0, Lu5;->u:Lt5;

    .line 102
    .line 103
    if-nez v0, :cond_9

    .line 104
    .line 105
    new-instance v0, Lt5;

    .line 106
    .line 107
    iget-object v2, p0, Lu5;->n:Landroid/content/Context;

    .line 108
    .line 109
    invoke-direct {v0, p0, v2}, Lt5;-><init>(Lu5;Landroid/content/Context;)V

    .line 110
    .line 111
    .line 112
    iput-object v0, p0, Lu5;->u:Lt5;

    .line 113
    .line 114
    iget-boolean v2, p0, Lu5;->w:Z

    .line 115
    .line 116
    const/4 v3, 0x0

    .line 117
    if-eqz v2, :cond_8

    .line 118
    .line 119
    iget-object v2, p0, Lu5;->v:Landroid/graphics/drawable/Drawable;

    .line 120
    .line 121
    invoke-virtual {v0, v2}, Llg;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 122
    .line 123
    .line 124
    iput-object v1, p0, Lu5;->v:Landroid/graphics/drawable/Drawable;

    .line 125
    .line 126
    iput-boolean v3, p0, Lu5;->w:Z

    .line 127
    .line 128
    :cond_8
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    iget-object v1, p0, Lu5;->u:Lt5;

    .line 133
    .line 134
    invoke-virtual {v1, v0, v0}, Landroid/view/View;->measure(II)V

    .line 135
    .line 136
    .line 137
    :cond_9
    iget-object v0, p0, Lu5;->u:Lt5;

    .line 138
    .line 139
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    sub-int/2addr p1, v0

    .line 144
    goto :goto_3

    .line 145
    :cond_a
    iput-object v1, p0, Lu5;->u:Lt5;

    .line 146
    .line 147
    :goto_3
    iput p1, p0, Lu5;->A:I

    .line 148
    .line 149
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 154
    .line 155
    return-void
.end method

.method public final i(Lkt3;)Z
    .locals 8

    .line 1
    invoke-virtual {p1}, Lub2;->hasVisibleItems()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_3

    .line 9
    :cond_0
    move-object v0, p1

    .line 10
    :goto_0
    iget-object v2, v0, Lkt3;->v:Lub2;

    .line 11
    .line 12
    iget-object v3, p0, Lu5;->p:Lub2;

    .line 13
    .line 14
    if-eq v2, v3, :cond_1

    .line 15
    .line 16
    move-object v0, v2

    .line 17
    check-cast v0, Lkt3;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    iget-object v0, v0, Lkt3;->w:Lzb2;

    .line 21
    .line 22
    iget-object v2, p0, Lu5;->t:Landroidx/appcompat/widget/ActionMenuView;

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    if-nez v2, :cond_2

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_2
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    move v5, v1

    .line 33
    :goto_1
    if-ge v5, v4, :cond_4

    .line 34
    .line 35
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    instance-of v7, v6, Lkc2;

    .line 40
    .line 41
    if-eqz v7, :cond_3

    .line 42
    .line 43
    move-object v7, v6

    .line 44
    check-cast v7, Lkc2;

    .line 45
    .line 46
    invoke-interface {v7}, Lkc2;->getItemData()Lzb2;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    if-ne v7, v0, :cond_3

    .line 51
    .line 52
    move-object v3, v6

    .line 53
    goto :goto_2

    .line 54
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_4
    :goto_2
    if-nez v3, :cond_5

    .line 58
    .line 59
    :goto_3
    return v1

    .line 60
    :cond_5
    iget-object v0, p1, Lkt3;->w:Lzb2;

    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    iget-object v0, p1, Lub2;->f:Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    move v2, v1

    .line 72
    :goto_4
    const/4 v4, 0x1

    .line 73
    if-ge v2, v0, :cond_7

    .line 74
    .line 75
    invoke-virtual {p1, v2}, Lub2;->getItem(I)Landroid/view/MenuItem;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    invoke-interface {v5}, Landroid/view/MenuItem;->isVisible()Z

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    if-eqz v6, :cond_6

    .line 84
    .line 85
    invoke-interface {v5}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    if-eqz v5, :cond_6

    .line 90
    .line 91
    move v0, v4

    .line 92
    goto :goto_5

    .line 93
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 94
    .line 95
    goto :goto_4

    .line 96
    :cond_7
    move v0, v1

    .line 97
    :goto_5
    new-instance v2, Lr5;

    .line 98
    .line 99
    iget-object v5, p0, Lu5;->o:Landroid/content/Context;

    .line 100
    .line 101
    invoke-direct {v2, p0, v5, p1, v3}, Lr5;-><init>(Lu5;Landroid/content/Context;Lkt3;Landroid/view/View;)V

    .line 102
    .line 103
    .line 104
    iput-object v2, p0, Lu5;->F:Lr5;

    .line 105
    .line 106
    iput-boolean v0, v2, Lcc2;->g:Z

    .line 107
    .line 108
    iget-object v2, v2, Lcc2;->i:Lac2;

    .line 109
    .line 110
    if-eqz v2, :cond_8

    .line 111
    .line 112
    invoke-virtual {v2, v0}, Lac2;->o(Z)V

    .line 113
    .line 114
    .line 115
    :cond_8
    iget-object v0, p0, Lu5;->F:Lr5;

    .line 116
    .line 117
    invoke-virtual {v0}, Lcc2;->b()Z

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    if-eqz v2, :cond_9

    .line 122
    .line 123
    goto :goto_6

    .line 124
    :cond_9
    iget-object v2, v0, Lcc2;->e:Landroid/view/View;

    .line 125
    .line 126
    if-eqz v2, :cond_b

    .line 127
    .line 128
    invoke-virtual {v0, v1, v1, v1, v1}, Lcc2;->d(IIZZ)V

    .line 129
    .line 130
    .line 131
    :goto_6
    iget-object p0, p0, Lu5;->r:Lhc2;

    .line 132
    .line 133
    if-eqz p0, :cond_a

    .line 134
    .line 135
    invoke-interface {p0, p1}, Lhc2;->l(Lub2;)Z

    .line 136
    .line 137
    .line 138
    :cond_a
    return v4

    .line 139
    :cond_b
    const-string p0, "MenuPopupHelper cannot be used without an anchor"

    .line 140
    .line 141
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    return v1
.end method

.method public final j()Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lu5;->p:Lub2;

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Lub2;->k()Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v4, v3

    .line 18
    const/4 v1, 0x0

    .line 19
    :goto_0
    iget v5, v0, Lu5;->B:I

    .line 20
    .line 21
    iget v6, v0, Lu5;->A:I

    .line 22
    .line 23
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 24
    .line 25
    .line 26
    move-result v7

    .line 27
    iget-object v8, v0, Lu5;->t:Landroidx/appcompat/widget/ActionMenuView;

    .line 28
    .line 29
    move v9, v3

    .line 30
    move v10, v9

    .line 31
    move v11, v10

    .line 32
    move v12, v11

    .line 33
    :goto_1
    const/4 v13, 0x2

    .line 34
    const/4 v14, 0x1

    .line 35
    if-ge v9, v4, :cond_4

    .line 36
    .line 37
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v15

    .line 41
    check-cast v15, Lzb2;

    .line 42
    .line 43
    iget v3, v15, Lzb2;->y:I

    .line 44
    .line 45
    and-int/lit8 v2, v3, 0x2

    .line 46
    .line 47
    if-ne v2, v13, :cond_1

    .line 48
    .line 49
    add-int/lit8 v11, v11, 0x1

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_1
    and-int/lit8 v2, v3, 0x1

    .line 53
    .line 54
    if-ne v2, v14, :cond_2

    .line 55
    .line 56
    add-int/lit8 v12, v12, 0x1

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_2
    move v10, v14

    .line 60
    :goto_2
    iget-boolean v2, v0, Lu5;->C:Z

    .line 61
    .line 62
    if-eqz v2, :cond_3

    .line 63
    .line 64
    iget-boolean v2, v15, Lzb2;->B:Z

    .line 65
    .line 66
    if-eqz v2, :cond_3

    .line 67
    .line 68
    const/4 v5, 0x0

    .line 69
    :cond_3
    add-int/lit8 v9, v9, 0x1

    .line 70
    .line 71
    const/4 v3, 0x0

    .line 72
    goto :goto_1

    .line 73
    :cond_4
    iget-boolean v2, v0, Lu5;->x:Z

    .line 74
    .line 75
    if-eqz v2, :cond_6

    .line 76
    .line 77
    if-nez v10, :cond_5

    .line 78
    .line 79
    add-int/2addr v12, v11

    .line 80
    if-le v12, v5, :cond_6

    .line 81
    .line 82
    :cond_5
    add-int/lit8 v5, v5, -0x1

    .line 83
    .line 84
    :cond_6
    sub-int/2addr v5, v11

    .line 85
    iget-object v2, v0, Lu5;->D:Landroid/util/SparseBooleanArray;

    .line 86
    .line 87
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 88
    .line 89
    .line 90
    const/4 v3, 0x0

    .line 91
    const/4 v9, 0x0

    .line 92
    :goto_3
    if-ge v3, v4, :cond_16

    .line 93
    .line 94
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v10

    .line 98
    check-cast v10, Lzb2;

    .line 99
    .line 100
    iget v11, v10, Lzb2;->y:I

    .line 101
    .line 102
    and-int/lit8 v12, v11, 0x2

    .line 103
    .line 104
    if-ne v12, v13, :cond_7

    .line 105
    .line 106
    move v12, v14

    .line 107
    goto :goto_4

    .line 108
    :cond_7
    const/4 v12, 0x0

    .line 109
    :goto_4
    iget v15, v10, Lzb2;->b:I

    .line 110
    .line 111
    if-eqz v12, :cond_a

    .line 112
    .line 113
    const/4 v12, 0x0

    .line 114
    invoke-virtual {v0, v10, v12, v8}, Lu5;->a(Lzb2;Landroid/view/View;Landroidx/appcompat/widget/ActionMenuView;)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object v11

    .line 118
    invoke-virtual {v11, v7, v7}, Landroid/view/View;->measure(II)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    .line 122
    .line 123
    .line 124
    move-result v11

    .line 125
    sub-int/2addr v6, v11

    .line 126
    if-nez v9, :cond_8

    .line 127
    .line 128
    move v9, v11

    .line 129
    :cond_8
    if-eqz v15, :cond_9

    .line 130
    .line 131
    invoke-virtual {v2, v15, v14}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 132
    .line 133
    .line 134
    :cond_9
    invoke-virtual {v10, v14}, Lzb2;->d(Z)V

    .line 135
    .line 136
    .line 137
    :goto_5
    const/4 v0, 0x0

    .line 138
    goto/16 :goto_a

    .line 139
    .line 140
    :cond_a
    and-int/lit8 v11, v11, 0x1

    .line 141
    .line 142
    if-ne v11, v14, :cond_15

    .line 143
    .line 144
    invoke-virtual {v2, v15}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 145
    .line 146
    .line 147
    move-result v11

    .line 148
    if-gtz v5, :cond_b

    .line 149
    .line 150
    if-eqz v11, :cond_c

    .line 151
    .line 152
    :cond_b
    if-lez v6, :cond_c

    .line 153
    .line 154
    move v12, v14

    .line 155
    goto :goto_6

    .line 156
    :cond_c
    const/4 v12, 0x0

    .line 157
    :goto_6
    const/4 v13, 0x0

    .line 158
    if-eqz v12, :cond_f

    .line 159
    .line 160
    invoke-virtual {v0, v10, v13, v8}, Lu5;->a(Lzb2;Landroid/view/View;Landroidx/appcompat/widget/ActionMenuView;)Landroid/view/View;

    .line 161
    .line 162
    .line 163
    move-result-object v14

    .line 164
    invoke-virtual {v14, v7, v7}, Landroid/view/View;->measure(II)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    .line 168
    .line 169
    .line 170
    move-result v14

    .line 171
    sub-int/2addr v6, v14

    .line 172
    if-nez v9, :cond_d

    .line 173
    .line 174
    move v9, v14

    .line 175
    :cond_d
    add-int v14, v6, v9

    .line 176
    .line 177
    if-lez v14, :cond_e

    .line 178
    .line 179
    const/4 v14, 0x1

    .line 180
    goto :goto_7

    .line 181
    :cond_e
    const/4 v14, 0x0

    .line 182
    :goto_7
    and-int/2addr v12, v14

    .line 183
    :cond_f
    if-eqz v12, :cond_10

    .line 184
    .line 185
    if-eqz v15, :cond_10

    .line 186
    .line 187
    const/4 v14, 0x1

    .line 188
    invoke-virtual {v2, v15, v14}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 189
    .line 190
    .line 191
    goto :goto_9

    .line 192
    :cond_10
    if-eqz v11, :cond_13

    .line 193
    .line 194
    const/4 v11, 0x0

    .line 195
    invoke-virtual {v2, v15, v11}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 196
    .line 197
    .line 198
    const/4 v11, 0x0

    .line 199
    :goto_8
    if-ge v11, v3, :cond_13

    .line 200
    .line 201
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v14

    .line 205
    check-cast v14, Lzb2;

    .line 206
    .line 207
    iget v13, v14, Lzb2;->b:I

    .line 208
    .line 209
    if-ne v13, v15, :cond_12

    .line 210
    .line 211
    iget v13, v14, Lzb2;->x:I

    .line 212
    .line 213
    const/16 v0, 0x20

    .line 214
    .line 215
    and-int/2addr v13, v0

    .line 216
    if-ne v13, v0, :cond_11

    .line 217
    .line 218
    add-int/lit8 v5, v5, 0x1

    .line 219
    .line 220
    :cond_11
    const/4 v0, 0x0

    .line 221
    invoke-virtual {v14, v0}, Lzb2;->d(Z)V

    .line 222
    .line 223
    .line 224
    :cond_12
    add-int/lit8 v11, v11, 0x1

    .line 225
    .line 226
    const/4 v13, 0x0

    .line 227
    move-object/from16 v0, p0

    .line 228
    .line 229
    goto :goto_8

    .line 230
    :cond_13
    :goto_9
    if-eqz v12, :cond_14

    .line 231
    .line 232
    add-int/lit8 v5, v5, -0x1

    .line 233
    .line 234
    :cond_14
    invoke-virtual {v10, v12}, Lzb2;->d(Z)V

    .line 235
    .line 236
    .line 237
    goto :goto_5

    .line 238
    :cond_15
    const/4 v0, 0x0

    .line 239
    invoke-virtual {v10, v0}, Lzb2;->d(Z)V

    .line 240
    .line 241
    .line 242
    :goto_a
    add-int/lit8 v3, v3, 0x1

    .line 243
    .line 244
    const/4 v13, 0x2

    .line 245
    move-object/from16 v0, p0

    .line 246
    .line 247
    const/4 v14, 0x1

    .line 248
    goto/16 :goto_3

    .line 249
    .line 250
    :cond_16
    move/from16 v16, v14

    .line 251
    .line 252
    return v16
.end method

.method public final k()Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lu5;->x:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lu5;->E:Lr5;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lcc2;->b()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lu5;->p:Lub2;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v2, p0, Lu5;->t:Landroidx/appcompat/widget/ActionMenuView;

    .line 22
    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    iget-object v2, p0, Lu5;->G:Lrf1;

    .line 26
    .line 27
    if-nez v2, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0}, Lub2;->i()V

    .line 30
    .line 31
    .line 32
    iget-object v0, v0, Lub2;->j:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    new-instance v0, Lr5;

    .line 41
    .line 42
    iget-object v2, p0, Lu5;->o:Landroid/content/Context;

    .line 43
    .line 44
    iget-object v3, p0, Lu5;->p:Lub2;

    .line 45
    .line 46
    iget-object v4, p0, Lu5;->u:Lt5;

    .line 47
    .line 48
    invoke-direct {v0, p0, v2, v3, v4}, Lr5;-><init>(Lu5;Landroid/content/Context;Lub2;Landroid/view/View;)V

    .line 49
    .line 50
    .line 51
    new-instance v2, Lrf1;

    .line 52
    .line 53
    const/4 v3, 0x2

    .line 54
    invoke-direct {v2, v3, p0, v0, v1}, Lrf1;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 55
    .line 56
    .line 57
    iput-object v2, p0, Lu5;->G:Lrf1;

    .line 58
    .line 59
    iget-object p0, p0, Lu5;->t:Landroidx/appcompat/widget/ActionMenuView;

    .line 60
    .line 61
    invoke-virtual {p0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 62
    .line 63
    .line 64
    const/4 p0, 0x1

    .line 65
    return p0

    .line 66
    :cond_1
    :goto_0
    return v1
.end method
