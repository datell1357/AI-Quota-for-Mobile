.class public final Lp5;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final n:F

.field public final o:I

.field public final p:I

.field public final q:Landroid/view/View;

.field public r:Lac1;

.field public s:Lac1;

.field public t:Z

.field public u:I

.field public final v:[I

.field public final synthetic w:I

.field public final synthetic x:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    new-array v1, v0, [I

    .line 6
    .line 7
    iput-object v1, p0, Lp5;->v:[I

    .line 8
    .line 9
    iput-object p1, p0, Lp5;->q:Landroid/view/View;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {p1, v1}, Landroid/view/View;->setLongClickable(Z)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    int-to-float p1, p1

    .line 31
    iput p1, p0, Lp5;->n:F

    .line 32
    .line 33
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    iput p1, p0, Lp5;->o:I

    .line 38
    .line 39
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    add-int/2addr v1, p1

    .line 44
    div-int/2addr v1, v0

    .line 45
    iput v1, p0, Lp5;->p:I

    .line 46
    .line 47
    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/view/menu/ActionMenuItemView;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lp5;->w:I

    .line 48
    iput-object p1, p0, Lp5;->x:Landroid/view/View;

    .line 49
    invoke-direct {p0, p1}, Lp5;-><init>(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lt5;Lt5;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lp5;->w:I

    .line 50
    iput-object p1, p0, Lp5;->x:Landroid/view/View;

    invoke-direct {p0, p2}, Lp5;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lp5;->s:Lac1;

    .line 2
    .line 3
    iget-object v1, p0, Lp5;->q:Landroid/view/View;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object p0, p0, Lp5;->r:Lac1;

    .line 11
    .line 12
    if-eqz p0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v1, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 15
    .line 16
    .line 17
    :cond_1
    return-void
.end method

.method public final b()Lac2;
    .locals 2

    .line 1
    iget v0, p0, Lp5;->w:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object p0, p0, Lp5;->x:Landroid/view/View;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p0, Lt5;

    .line 10
    .line 11
    iget-object p0, p0, Lt5;->q:Lu5;

    .line 12
    .line 13
    iget-object p0, p0, Lu5;->E:Lr5;

    .line 14
    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcc2;->a()Lac2;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    :goto_0
    return-object v1

    .line 23
    :pswitch_0
    check-cast p0, Landroidx/appcompat/view/menu/ActionMenuItemView;

    .line 24
    .line 25
    iget-object p0, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->z:Lq5;

    .line 26
    .line 27
    if-eqz p0, :cond_1

    .line 28
    .line 29
    check-cast p0, Ls5;

    .line 30
    .line 31
    iget-object p0, p0, Ls5;->a:Lu5;

    .line 32
    .line 33
    iget-object p0, p0, Lu5;->F:Lr5;

    .line 34
    .line 35
    if-eqz p0, :cond_1

    .line 36
    .line 37
    invoke-virtual {p0}, Lcc2;->a()Lac2;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    :cond_1
    return-object v1

    .line 42
    nop

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c()Z
    .locals 3

    .line 1
    iget v0, p0, Lp5;->w:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object v2, p0, Lp5;->x:Landroid/view/View;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast v2, Lt5;

    .line 10
    .line 11
    iget-object p0, v2, Lt5;->q:Lu5;

    .line 12
    .line 13
    invoke-virtual {p0}, Lu5;->k()Z

    .line 14
    .line 15
    .line 16
    return v1

    .line 17
    :pswitch_0
    check-cast v2, Landroidx/appcompat/view/menu/ActionMenuItemView;

    .line 18
    .line 19
    iget-object v0, v2, Landroidx/appcompat/view/menu/ActionMenuItemView;->x:Ltb2;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v2, v2, Landroidx/appcompat/view/menu/ActionMenuItemView;->u:Lzb2;

    .line 24
    .line 25
    invoke-interface {v0, v2}, Ltb2;->a(Lzb2;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0}, Lp5;->b()Lac2;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    if-eqz p0, :cond_0

    .line 36
    .line 37
    invoke-interface {p0}, Ltm3;->k()Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-eqz p0, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/4 v1, 0x0

    .line 45
    :goto_0
    return v1

    .line 46
    nop

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12

    .line 1
    iget-boolean p1, p0, Lp5;->t:Z

    .line 2
    .line 3
    const/4 v0, 0x3

    .line 4
    iget-object v1, p0, Lp5;->q:Landroid/view/View;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x1

    .line 8
    if-eqz p1, :cond_7

    .line 9
    .line 10
    invoke-virtual {p0}, Lp5;->b()Lac2;

    .line 11
    .line 12
    .line 13
    move-result-object v4

    .line 14
    if-eqz v4, :cond_3

    .line 15
    .line 16
    invoke-interface {v4}, Ltm3;->k()Z

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    if-nez v5, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    invoke-interface {v4}, Ltm3;->g()Landroid/widget/ListView;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    check-cast v4, Lyx0;

    .line 28
    .line 29
    if-eqz v4, :cond_3

    .line 30
    .line 31
    invoke-virtual {v4}, Landroid/view/View;->isShown()Z

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    if-nez v5, :cond_1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    invoke-static {p2}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    iget-object v6, p0, Lp5;->v:[I

    .line 43
    .line 44
    invoke-virtual {v1, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 45
    .line 46
    .line 47
    aget v1, v6, v2

    .line 48
    .line 49
    int-to-float v1, v1

    .line 50
    aget v7, v6, v3

    .line 51
    .line 52
    int-to-float v7, v7

    .line 53
    invoke-virtual {v5, v1, v7}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 57
    .line 58
    .line 59
    aget v1, v6, v2

    .line 60
    .line 61
    neg-int v1, v1

    .line 62
    int-to-float v1, v1

    .line 63
    aget v6, v6, v3

    .line 64
    .line 65
    neg-int v6, v6

    .line 66
    int-to-float v6, v6

    .line 67
    invoke-virtual {v5, v1, v6}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 68
    .line 69
    .line 70
    iget v1, p0, Lp5;->u:I

    .line 71
    .line 72
    invoke-virtual {v4, v5, v1}, Lyx0;->b(Landroid/view/MotionEvent;I)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    invoke-virtual {v5}, Landroid/view/MotionEvent;->recycle()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    if-eq p2, v3, :cond_2

    .line 84
    .line 85
    if-eq p2, v0, :cond_2

    .line 86
    .line 87
    move p2, v3

    .line 88
    goto :goto_0

    .line 89
    :cond_2
    move p2, v2

    .line 90
    :goto_0
    if-eqz v1, :cond_3

    .line 91
    .line 92
    if-eqz p2, :cond_3

    .line 93
    .line 94
    goto :goto_4

    .line 95
    :cond_3
    :goto_1
    iget p2, p0, Lp5;->w:I

    .line 96
    .line 97
    packed-switch p2, :pswitch_data_0

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Lp5;->b()Lac2;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    if-eqz p2, :cond_4

    .line 105
    .line 106
    invoke-interface {p2}, Ltm3;->k()Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-eqz v0, :cond_4

    .line 111
    .line 112
    invoke-interface {p2}, Ltm3;->dismiss()V

    .line 113
    .line 114
    .line 115
    :cond_4
    :goto_2
    move p2, v3

    .line 116
    goto :goto_3

    .line 117
    :pswitch_0
    iget-object p2, p0, Lp5;->x:Landroid/view/View;

    .line 118
    .line 119
    check-cast p2, Lt5;

    .line 120
    .line 121
    iget-object p2, p2, Lt5;->q:Lu5;

    .line 122
    .line 123
    iget-object v0, p2, Lu5;->G:Lrf1;

    .line 124
    .line 125
    if-eqz v0, :cond_5

    .line 126
    .line 127
    move p2, v2

    .line 128
    goto :goto_3

    .line 129
    :cond_5
    invoke-virtual {p2}, Lu5;->g()Z

    .line 130
    .line 131
    .line 132
    goto :goto_2

    .line 133
    :goto_3
    if-nez p2, :cond_6

    .line 134
    .line 135
    :goto_4
    move p2, v3

    .line 136
    goto/16 :goto_7

    .line 137
    .line 138
    :cond_6
    move p2, v2

    .line 139
    goto/16 :goto_7

    .line 140
    .line 141
    :cond_7
    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    .line 142
    .line 143
    .line 144
    move-result v4

    .line 145
    if-nez v4, :cond_8

    .line 146
    .line 147
    goto/16 :goto_5

    .line 148
    .line 149
    :cond_8
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 150
    .line 151
    .line 152
    move-result v4

    .line 153
    if-eqz v4, :cond_c

    .line 154
    .line 155
    if-eq v4, v3, :cond_b

    .line 156
    .line 157
    const/4 v5, 0x2

    .line 158
    if-eq v4, v5, :cond_9

    .line 159
    .line 160
    if-eq v4, v0, :cond_b

    .line 161
    .line 162
    goto/16 :goto_5

    .line 163
    .line 164
    :cond_9
    iget v0, p0, Lp5;->u:I

    .line 165
    .line 166
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    if-ltz v0, :cond_f

    .line 171
    .line 172
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 173
    .line 174
    .line 175
    move-result v4

    .line 176
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 177
    .line 178
    .line 179
    move-result p2

    .line 180
    iget v0, p0, Lp5;->n:F

    .line 181
    .line 182
    neg-float v5, v0

    .line 183
    cmpl-float v6, v4, v5

    .line 184
    .line 185
    if-ltz v6, :cond_a

    .line 186
    .line 187
    cmpl-float v5, p2, v5

    .line 188
    .line 189
    if-ltz v5, :cond_a

    .line 190
    .line 191
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    .line 192
    .line 193
    .line 194
    move-result v5

    .line 195
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 196
    .line 197
    .line 198
    move-result v6

    .line 199
    sub-int/2addr v5, v6

    .line 200
    int-to-float v5, v5

    .line 201
    add-float/2addr v5, v0

    .line 202
    cmpg-float v4, v4, v5

    .line 203
    .line 204
    if-gez v4, :cond_a

    .line 205
    .line 206
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    .line 207
    .line 208
    .line 209
    move-result v4

    .line 210
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 211
    .line 212
    .line 213
    move-result v5

    .line 214
    sub-int/2addr v4, v5

    .line 215
    int-to-float v4, v4

    .line 216
    add-float/2addr v4, v0

    .line 217
    cmpg-float p2, p2, v4

    .line 218
    .line 219
    if-gez p2, :cond_a

    .line 220
    .line 221
    goto :goto_5

    .line 222
    :cond_a
    invoke-virtual {p0}, Lp5;->a()V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 226
    .line 227
    .line 228
    move-result-object p2

    .line 229
    invoke-interface {p2, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {p0}, Lp5;->c()Z

    .line 233
    .line 234
    .line 235
    move-result p2

    .line 236
    if-eqz p2, :cond_f

    .line 237
    .line 238
    move p2, v3

    .line 239
    goto :goto_6

    .line 240
    :cond_b
    invoke-virtual {p0}, Lp5;->a()V

    .line 241
    .line 242
    .line 243
    goto :goto_5

    .line 244
    :cond_c
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 245
    .line 246
    .line 247
    move-result p2

    .line 248
    iput p2, p0, Lp5;->u:I

    .line 249
    .line 250
    iget-object p2, p0, Lp5;->r:Lac1;

    .line 251
    .line 252
    if-nez p2, :cond_d

    .line 253
    .line 254
    new-instance p2, Lac1;

    .line 255
    .line 256
    invoke-direct {p2, p0, v2}, Lac1;-><init>(Lp5;I)V

    .line 257
    .line 258
    .line 259
    iput-object p2, p0, Lp5;->r:Lac1;

    .line 260
    .line 261
    :cond_d
    iget-object p2, p0, Lp5;->r:Lac1;

    .line 262
    .line 263
    iget v0, p0, Lp5;->o:I

    .line 264
    .line 265
    int-to-long v4, v0

    .line 266
    invoke-virtual {v1, p2, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 267
    .line 268
    .line 269
    iget-object p2, p0, Lp5;->s:Lac1;

    .line 270
    .line 271
    if-nez p2, :cond_e

    .line 272
    .line 273
    new-instance p2, Lac1;

    .line 274
    .line 275
    invoke-direct {p2, p0, v3}, Lac1;-><init>(Lp5;I)V

    .line 276
    .line 277
    .line 278
    iput-object p2, p0, Lp5;->s:Lac1;

    .line 279
    .line 280
    :cond_e
    iget-object p2, p0, Lp5;->s:Lac1;

    .line 281
    .line 282
    iget v0, p0, Lp5;->p:I

    .line 283
    .line 284
    int-to-long v4, v0

    .line 285
    invoke-virtual {v1, p2, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 286
    .line 287
    .line 288
    :cond_f
    :goto_5
    move p2, v2

    .line 289
    :goto_6
    if-eqz p2, :cond_10

    .line 290
    .line 291
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 292
    .line 293
    .line 294
    move-result-wide v4

    .line 295
    const/4 v10, 0x0

    .line 296
    const/4 v11, 0x0

    .line 297
    const/4 v8, 0x3

    .line 298
    const/4 v9, 0x0

    .line 299
    move-wide v6, v4

    .line 300
    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    invoke-virtual {v1, v0}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 305
    .line 306
    .line 307
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 308
    .line 309
    .line 310
    :cond_10
    :goto_7
    iput-boolean p2, p0, Lp5;->t:Z

    .line 311
    .line 312
    if-nez p2, :cond_12

    .line 313
    .line 314
    if-eqz p1, :cond_11

    .line 315
    .line 316
    goto :goto_8

    .line 317
    :cond_11
    return v2

    .line 318
    :cond_12
    :goto_8
    return v3

    .line 319
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lp5;->t:Z

    .line 3
    .line 4
    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lp5;->u:I

    .line 6
    .line 7
    iget-object p1, p0, Lp5;->r:Lac1;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lp5;->q:Landroid/view/View;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method
