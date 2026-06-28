.class public abstract Lm42;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ltm3;


# static fields
.field public static final J:Ljava/lang/reflect/Method;

.field public static final K:Ljava/lang/reflect/Method;


# instance fields
.field public final A:Li42;

.field public final B:Ll42;

.field public final C:Lk42;

.field public final D:Li42;

.field public final E:Landroid/os/Handler;

.field public final F:Landroid/graphics/Rect;

.field public G:Landroid/graphics/Rect;

.field public H:Z

.field public final I:Lmg;

.field public final n:Landroid/content/Context;

.field public o:Landroid/widget/ListAdapter;

.field public p:Lfc2;

.field public q:I

.field public r:I

.field public s:I

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:I

.field public x:Lj42;

.field public y:Landroid/view/View;

.field public z:Lac2;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    const-string v0, "ListPopupWindow"

    .line 2
    .line 3
    const-class v1, Landroid/widget/PopupWindow;

    .line 4
    .line 5
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 v3, 0x1c

    .line 8
    .line 9
    if-gt v2, v3, :cond_0

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x1

    .line 13
    :try_start_0
    const-string v4, "setClipToScreenEnabled"

    .line 14
    .line 15
    new-array v5, v3, [Ljava/lang/Class;

    .line 16
    .line 17
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 18
    .line 19
    aput-object v6, v5, v2

    .line 20
    .line 21
    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    sput-object v4, Lm42;->J:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    const-string v4, "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well."

    .line 29
    .line 30
    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    :goto_0
    :try_start_1
    const-string v4, "setEpicenterBounds"

    .line 34
    .line 35
    new-array v3, v3, [Ljava/lang/Class;

    .line 36
    .line 37
    const-class v5, Landroid/graphics/Rect;

    .line 38
    .line 39
    aput-object v5, v3, v2

    .line 40
    .line 41
    invoke-virtual {v1, v4, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    sput-object v1, Lm42;->K:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :catch_1
    const-string v1, "Could not find method setEpicenterBounds(Rect) on PopupWindow. Oh well."

    .line 49
    .line 50
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    :cond_0
    :goto_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x2

    .line 5
    iput v0, p0, Lm42;->q:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lm42;->w:I

    .line 9
    .line 10
    new-instance v1, Li42;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-direct {v1, p0, v2}, Li42;-><init>(Lm42;I)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lm42;->A:Li42;

    .line 17
    .line 18
    new-instance v1, Ll42;

    .line 19
    .line 20
    invoke-direct {v1, p0}, Ll42;-><init>(Lm42;)V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lm42;->B:Ll42;

    .line 24
    .line 25
    new-instance v1, Lk42;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Lk42;-><init>(Lm42;)V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lm42;->C:Lk42;

    .line 31
    .line 32
    new-instance v1, Li42;

    .line 33
    .line 34
    invoke-direct {v1, p0, v0}, Li42;-><init>(Lm42;I)V

    .line 35
    .line 36
    .line 37
    iput-object v1, p0, Lm42;->D:Li42;

    .line 38
    .line 39
    new-instance v1, Landroid/graphics/Rect;

    .line 40
    .line 41
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lm42;->F:Landroid/graphics/Rect;

    .line 45
    .line 46
    iput-object p1, p0, Lm42;->n:Landroid/content/Context;

    .line 47
    .line 48
    new-instance v1, Landroid/os/Handler;

    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 55
    .line 56
    .line 57
    iput-object v1, p0, Lm42;->E:Landroid/os/Handler;

    .line 58
    .line 59
    sget-object v1, Li13;->k:[I

    .line 60
    .line 61
    const/4 v3, 0x0

    .line 62
    invoke-virtual {p1, v3, v1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    iput v4, p0, Lm42;->r:I

    .line 71
    .line 72
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    iput v4, p0, Lm42;->s:I

    .line 77
    .line 78
    if-eqz v4, :cond_0

    .line 79
    .line 80
    iput-boolean v2, p0, Lm42;->t:Z

    .line 81
    .line 82
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 83
    .line 84
    .line 85
    new-instance v1, Lmg;

    .line 86
    .line 87
    invoke-direct {v1, p1, v3, p2, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 88
    .line 89
    .line 90
    sget-object v4, Li13;->o:[I

    .line 91
    .line 92
    invoke-virtual {p1, v3, v4, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    const/4 v3, 0x2

    .line 97
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    if-eqz v4, :cond_1

    .line 102
    .line 103
    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setOverlapAnchor(Z)V

    .line 108
    .line 109
    .line 110
    :cond_1
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    if-eqz v3, :cond_2

    .line 115
    .line 116
    invoke-virtual {p2, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    if-eqz v3, :cond_2

    .line 121
    .line 122
    invoke-static {p1, v3}, Lzf5;->H(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    goto :goto_0

    .line 127
    :cond_2
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    :goto_0
    invoke-virtual {v1, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 135
    .line 136
    .line 137
    iput-object v1, p0, Lm42;->I:Lmg;

    .line 138
    .line 139
    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 140
    .line 141
    .line 142
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 11

    .line 1
    iget-object v0, p0, Lm42;->p:Lfc2;

    .line 2
    .line 3
    iget-object v1, p0, Lm42;->n:Landroid/content/Context;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iget-object v3, p0, Lm42;->I:Lmg;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-boolean v0, p0, Lm42;->H:Z

    .line 11
    .line 12
    xor-int/2addr v0, v2

    .line 13
    move-object v4, p0

    .line 14
    check-cast v4, Lgc2;

    .line 15
    .line 16
    new-instance v5, Lfc2;

    .line 17
    .line 18
    invoke-direct {v5, v1, v0}, Lfc2;-><init>(Landroid/content/Context;Z)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v5, v4}, Lfc2;->setHoverListener(Lyb2;)V

    .line 22
    .line 23
    .line 24
    iput-object v5, p0, Lm42;->p:Lfc2;

    .line 25
    .line 26
    iget-object v0, p0, Lm42;->o:Landroid/widget/ListAdapter;

    .line 27
    .line 28
    invoke-virtual {v5, v0}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lm42;->p:Lfc2;

    .line 32
    .line 33
    iget-object v4, p0, Lm42;->z:Lac2;

    .line 34
    .line 35
    invoke-virtual {v0, v4}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lm42;->p:Lfc2;

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lm42;->p:Lfc2;

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lm42;->p:Lfc2;

    .line 49
    .line 50
    new-instance v4, Lf42;

    .line 51
    .line 52
    invoke-direct {v4, p0}, Lf42;-><init>(Lm42;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v4}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lm42;->p:Lfc2;

    .line 59
    .line 60
    iget-object v4, p0, Lm42;->C:Lk42;

    .line 61
    .line 62
    invoke-virtual {v0, v4}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lm42;->p:Lfc2;

    .line 66
    .line 67
    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Landroid/view/ViewGroup;

    .line 76
    .line 77
    :goto_0
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    iget-object v4, p0, Lm42;->F:Landroid/graphics/Rect;

    .line 82
    .line 83
    const/4 v5, 0x0

    .line 84
    if-eqz v0, :cond_1

    .line 85
    .line 86
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 87
    .line 88
    .line 89
    iget v0, v4, Landroid/graphics/Rect;->top:I

    .line 90
    .line 91
    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 92
    .line 93
    add-int/2addr v6, v0

    .line 94
    iget-boolean v7, p0, Lm42;->t:Z

    .line 95
    .line 96
    if-nez v7, :cond_2

    .line 97
    .line 98
    neg-int v0, v0

    .line 99
    iput v0, p0, Lm42;->s:I

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_1
    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 103
    .line 104
    .line 105
    move v6, v5

    .line 106
    :cond_2
    :goto_1
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    const/4 v7, 0x2

    .line 111
    if-ne v0, v7, :cond_3

    .line 112
    .line 113
    move v0, v2

    .line 114
    goto :goto_2

    .line 115
    :cond_3
    move v0, v5

    .line 116
    :goto_2
    iget-object v7, p0, Lm42;->y:Landroid/view/View;

    .line 117
    .line 118
    iget v8, p0, Lm42;->s:I

    .line 119
    .line 120
    invoke-static {v3, v7, v8, v0}, Lg42;->a(Landroid/widget/PopupWindow;Landroid/view/View;IZ)I

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    iget v7, p0, Lm42;->q:I

    .line 125
    .line 126
    const/4 v8, -0x2

    .line 127
    const/4 v9, -0x1

    .line 128
    if-eq v7, v8, :cond_5

    .line 129
    .line 130
    const/high16 v10, 0x40000000    # 2.0f

    .line 131
    .line 132
    if-eq v7, v9, :cond_4

    .line 133
    .line 134
    invoke-static {v7, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    goto :goto_3

    .line 139
    :cond_4
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 148
    .line 149
    iget v7, v4, Landroid/graphics/Rect;->left:I

    .line 150
    .line 151
    iget v4, v4, Landroid/graphics/Rect;->right:I

    .line 152
    .line 153
    add-int/2addr v7, v4

    .line 154
    sub-int/2addr v1, v7

    .line 155
    invoke-static {v1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    goto :goto_3

    .line 160
    :cond_5
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 169
    .line 170
    iget v7, v4, Landroid/graphics/Rect;->left:I

    .line 171
    .line 172
    iget v4, v4, Landroid/graphics/Rect;->right:I

    .line 173
    .line 174
    add-int/2addr v7, v4

    .line 175
    sub-int/2addr v1, v7

    .line 176
    const/high16 v4, -0x80000000

    .line 177
    .line 178
    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    :goto_3
    iget-object v4, p0, Lm42;->p:Lfc2;

    .line 183
    .line 184
    invoke-virtual {v4, v1, v0}, Lyx0;->a(II)I

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    if-lez v0, :cond_6

    .line 189
    .line 190
    iget-object v1, p0, Lm42;->p:Lfc2;

    .line 191
    .line 192
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    .line 193
    .line 194
    .line 195
    move-result v1

    .line 196
    iget-object v4, p0, Lm42;->p:Lfc2;

    .line 197
    .line 198
    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    .line 199
    .line 200
    .line 201
    move-result v4

    .line 202
    add-int/2addr v4, v1

    .line 203
    add-int/2addr v4, v6

    .line 204
    goto :goto_4

    .line 205
    :cond_6
    move v4, v5

    .line 206
    :goto_4
    add-int/2addr v0, v4

    .line 207
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    .line 208
    .line 209
    .line 210
    const/16 v1, 0x3ea

    .line 211
    .line 212
    invoke-virtual {v3, v1}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 216
    .line 217
    .line 218
    move-result v1

    .line 219
    if-eqz v1, :cond_c

    .line 220
    .line 221
    iget-object v1, p0, Lm42;->y:Landroid/view/View;

    .line 222
    .line 223
    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    .line 224
    .line 225
    .line 226
    move-result v1

    .line 227
    if-nez v1, :cond_7

    .line 228
    .line 229
    goto/16 :goto_b

    .line 230
    .line 231
    :cond_7
    iget v1, p0, Lm42;->q:I

    .line 232
    .line 233
    if-ne v1, v9, :cond_8

    .line 234
    .line 235
    move v1, v9

    .line 236
    goto :goto_5

    .line 237
    :cond_8
    if-ne v1, v8, :cond_9

    .line 238
    .line 239
    iget-object v1, p0, Lm42;->y:Landroid/view/View;

    .line 240
    .line 241
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 242
    .line 243
    .line 244
    move-result v1

    .line 245
    :cond_9
    :goto_5
    invoke-virtual {v3, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 246
    .line 247
    .line 248
    iget-object v4, p0, Lm42;->y:Landroid/view/View;

    .line 249
    .line 250
    iget v5, p0, Lm42;->r:I

    .line 251
    .line 252
    iget v6, p0, Lm42;->s:I

    .line 253
    .line 254
    if-gez v1, :cond_a

    .line 255
    .line 256
    move v7, v9

    .line 257
    goto :goto_6

    .line 258
    :cond_a
    move v7, v1

    .line 259
    :goto_6
    if-gez v0, :cond_b

    .line 260
    .line 261
    move v8, v9

    .line 262
    goto :goto_7

    .line 263
    :cond_b
    move v8, v0

    .line 264
    :goto_7
    invoke-virtual/range {v3 .. v8}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 265
    .line 266
    .line 267
    return-void

    .line 268
    :cond_c
    iget v1, p0, Lm42;->q:I

    .line 269
    .line 270
    if-ne v1, v9, :cond_d

    .line 271
    .line 272
    move v1, v9

    .line 273
    goto :goto_8

    .line 274
    :cond_d
    if-ne v1, v8, :cond_e

    .line 275
    .line 276
    iget-object v1, p0, Lm42;->y:Landroid/view/View;

    .line 277
    .line 278
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 279
    .line 280
    .line 281
    move-result v1

    .line 282
    :cond_e
    :goto_8
    invoke-virtual {v3, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 286
    .line 287
    .line 288
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 289
    .line 290
    const-string v1, "ListPopupWindow"

    .line 291
    .line 292
    const/16 v4, 0x1c

    .line 293
    .line 294
    if-gt v0, v4, :cond_f

    .line 295
    .line 296
    sget-object v0, Lm42;->J:Ljava/lang/reflect/Method;

    .line 297
    .line 298
    if-eqz v0, :cond_10

    .line 299
    .line 300
    :try_start_0
    new-array v6, v2, [Ljava/lang/Object;

    .line 301
    .line 302
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 303
    .line 304
    aput-object v7, v6, v5

    .line 305
    .line 306
    invoke-virtual {v0, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    .line 308
    .line 309
    goto :goto_9

    .line 310
    :catch_0
    const-string v0, "Could not call setClipToScreenEnabled() on PopupWindow. Oh well."

    .line 311
    .line 312
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    .line 314
    .line 315
    goto :goto_9

    .line 316
    :cond_f
    invoke-static {v3, v2}, Lh42;->b(Landroid/widget/PopupWindow;Z)V

    .line 317
    .line 318
    .line 319
    :cond_10
    :goto_9
    invoke-virtual {v3, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 320
    .line 321
    .line 322
    iget-object v0, p0, Lm42;->B:Ll42;

    .line 323
    .line 324
    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 325
    .line 326
    .line 327
    iget-boolean v0, p0, Lm42;->v:Z

    .line 328
    .line 329
    if-eqz v0, :cond_11

    .line 330
    .line 331
    iget-boolean v0, p0, Lm42;->u:Z

    .line 332
    .line 333
    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setOverlapAnchor(Z)V

    .line 334
    .line 335
    .line 336
    :cond_11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 337
    .line 338
    if-gt v0, v4, :cond_12

    .line 339
    .line 340
    sget-object v0, Lm42;->K:Ljava/lang/reflect/Method;

    .line 341
    .line 342
    if-eqz v0, :cond_13

    .line 343
    .line 344
    :try_start_1
    iget-object v4, p0, Lm42;->G:Landroid/graphics/Rect;

    .line 345
    .line 346
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move-result-object v4

    .line 350
    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 351
    .line 352
    .line 353
    goto :goto_a

    .line 354
    :catch_1
    move-exception v0

    .line 355
    const-string v4, "Could not invoke setEpicenterBounds on PopupWindow"

    .line 356
    .line 357
    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 358
    .line 359
    .line 360
    goto :goto_a

    .line 361
    :cond_12
    iget-object v0, p0, Lm42;->G:Landroid/graphics/Rect;

    .line 362
    .line 363
    invoke-static {v3, v0}, Lh42;->a(Landroid/widget/PopupWindow;Landroid/graphics/Rect;)V

    .line 364
    .line 365
    .line 366
    :cond_13
    :goto_a
    iget-object v0, p0, Lm42;->y:Landroid/view/View;

    .line 367
    .line 368
    iget v1, p0, Lm42;->r:I

    .line 369
    .line 370
    iget v4, p0, Lm42;->s:I

    .line 371
    .line 372
    iget v5, p0, Lm42;->w:I

    .line 373
    .line 374
    invoke-virtual {v3, v0, v1, v4, v5}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    .line 375
    .line 376
    .line 377
    iget-object v0, p0, Lm42;->p:Lfc2;

    .line 378
    .line 379
    invoke-virtual {v0, v9}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 380
    .line 381
    .line 382
    iget-boolean v0, p0, Lm42;->H:Z

    .line 383
    .line 384
    if-eqz v0, :cond_14

    .line 385
    .line 386
    iget-object v0, p0, Lm42;->p:Lfc2;

    .line 387
    .line 388
    invoke-virtual {v0}, Lyx0;->isInTouchMode()Z

    .line 389
    .line 390
    .line 391
    move-result v0

    .line 392
    if-eqz v0, :cond_15

    .line 393
    .line 394
    :cond_14
    iget-object v0, p0, Lm42;->p:Lfc2;

    .line 395
    .line 396
    if-eqz v0, :cond_15

    .line 397
    .line 398
    invoke-virtual {v0, v2}, Lyx0;->setListSelectionHidden(Z)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 402
    .line 403
    .line 404
    :cond_15
    iget-boolean v0, p0, Lm42;->H:Z

    .line 405
    .line 406
    if-nez v0, :cond_16

    .line 407
    .line 408
    iget-object v0, p0, Lm42;->E:Landroid/os/Handler;

    .line 409
    .line 410
    iget-object p0, p0, Lm42;->D:Li42;

    .line 411
    .line 412
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 413
    .line 414
    .line 415
    :cond_16
    :goto_b
    return-void
.end method

.method public final c(Landroid/widget/ListAdapter;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lm42;->x:Lj42;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lj42;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lj42;-><init>(Lm42;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lm42;->x:Lj42;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v1, p0, Lm42;->o:Landroid/widget/ListAdapter;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v1, v0}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    :goto_0
    iput-object p1, p0, Lm42;->o:Landroid/widget/ListAdapter;

    .line 21
    .line 22
    if-eqz p1, :cond_2

    .line 23
    .line 24
    iget-object v0, p0, Lm42;->x:Lj42;

    .line 25
    .line 26
    invoke-interface {p1, v0}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 27
    .line 28
    .line 29
    :cond_2
    iget-object p1, p0, Lm42;->p:Lfc2;

    .line 30
    .line 31
    if-eqz p1, :cond_3

    .line 32
    .line 33
    iget-object p0, p0, Lm42;->o:Landroid/widget/ListAdapter;

    .line 34
    .line 35
    invoke-virtual {p1, p0}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 36
    .line 37
    .line 38
    :cond_3
    return-void
.end method

.method public final dismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Lm42;->I:Lmg;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    iput-object v1, p0, Lm42;->p:Lfc2;

    .line 11
    .line 12
    iget-object v0, p0, Lm42;->E:Landroid/os/Handler;

    .line 13
    .line 14
    iget-object p0, p0, Lm42;->A:Li42;

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final g()Landroid/widget/ListView;
    .locals 0

    .line 1
    iget-object p0, p0, Lm42;->p:Lfc2;

    .line 2
    .line 3
    return-object p0
.end method

.method public final k()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lm42;->I:Lmg;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
