.class public final Lhu3;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public A:Ljava/lang/CharSequence;

.field public B:Landroid/content/res/ColorStateList;

.field public C:Landroid/graphics/PorterDuff$Mode;

.field public final synthetic D:Liu3;

.field public final a:Landroid/view/Menu;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:I

.field public j:I

.field public k:Ljava/lang/CharSequence;

.field public l:Ljava/lang/CharSequence;

.field public m:I

.field public n:C

.field public o:I

.field public p:C

.field public q:I

.field public r:I

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:I

.field public w:I

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Liu3;Landroid/view/Menu;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lhu3;->D:Liu3;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lhu3;->B:Landroid/content/res/ColorStateList;

    .line 8
    .line 9
    iput-object p1, p0, Lhu3;->C:Landroid/graphics/PorterDuff$Mode;

    .line 10
    .line 11
    iput-object p2, p0, Lhu3;->a:Landroid/view/Menu;

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lhu3;->b:I

    .line 15
    .line 16
    iput p1, p0, Lhu3;->c:I

    .line 17
    .line 18
    iput p1, p0, Lhu3;->d:I

    .line 19
    .line 20
    iput p1, p0, Lhu3;->e:I

    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    iput-boolean p1, p0, Lhu3;->f:Z

    .line 24
    .line 25
    iput-boolean p1, p0, Lhu3;->g:Z

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lhu3;->D:Liu3;

    .line 2
    .line 3
    iget-object p0, p0, Liu3;->c:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-static {p1, v0, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const/4 p2, 0x1

    .line 19
    invoke-virtual {p0, p2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    return-object p0

    .line 27
    :catch_0
    move-exception p0

    .line 28
    new-instance p2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string p3, "Cannot instantiate class: "

    .line 31
    .line 32
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const-string p2, "SupportMenuInflater"

    .line 43
    .line 44
    invoke-static {p2, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    .line 46
    .line 47
    const/4 p0, 0x0

    .line 48
    return-object p0
.end method

.method public final b(Landroid/view/MenuItem;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lhu3;->D:Liu3;

    .line 2
    .line 3
    iget-object v1, v0, Liu3;->c:Landroid/content/Context;

    .line 4
    .line 5
    iget-boolean v2, p0, Lhu3;->s:Z

    .line 6
    .line 7
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-boolean v3, p0, Lhu3;->t:Z

    .line 12
    .line 13
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget-boolean v3, p0, Lhu3;->u:Z

    .line 18
    .line 19
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iget v3, p0, Lhu3;->r:I

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    const/4 v5, 0x1

    .line 27
    if-lt v3, v5, :cond_0

    .line 28
    .line 29
    move v3, v5

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move v3, v4

    .line 32
    :goto_0
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    iget-object v3, p0, Lhu3;->l:Ljava/lang/CharSequence;

    .line 37
    .line 38
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    iget v3, p0, Lhu3;->m:I

    .line 43
    .line 44
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 45
    .line 46
    .line 47
    iget v2, p0, Lhu3;->v:I

    .line 48
    .line 49
    if-ltz v2, :cond_1

    .line 50
    .line 51
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 52
    .line 53
    .line 54
    :cond_1
    iget-object v2, p0, Lhu3;->y:Ljava/lang/String;

    .line 55
    .line 56
    if-eqz v2, :cond_4

    .line 57
    .line 58
    invoke-virtual {v1}, Landroid/content/Context;->isRestricted()Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-nez v2, :cond_3

    .line 63
    .line 64
    new-instance v2, Lgu3;

    .line 65
    .line 66
    iget-object v3, v0, Liu3;->d:Ljava/lang/Object;

    .line 67
    .line 68
    if-nez v3, :cond_2

    .line 69
    .line 70
    invoke-static {v1}, Liu3;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    iput-object v1, v0, Liu3;->d:Ljava/lang/Object;

    .line 75
    .line 76
    :cond_2
    iget-object v1, v0, Liu3;->d:Ljava/lang/Object;

    .line 77
    .line 78
    iget-object v3, p0, Lhu3;->y:Ljava/lang/String;

    .line 79
    .line 80
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 81
    .line 82
    .line 83
    iput-object v1, v2, Lgu3;->a:Ljava/lang/Object;

    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    :try_start_0
    sget-object v6, Lgu3;->c:[Ljava/lang/Class;

    .line 90
    .line 91
    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    iput-object v6, v2, Lgu3;->b:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .line 97
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :catch_0
    move-exception p0

    .line 102
    new-instance p1, Landroid/view/InflateException;

    .line 103
    .line 104
    const-string v0, "Couldn\'t resolve menu item onClick handler "

    .line 105
    .line 106
    const-string v2, " in class "

    .line 107
    .line 108
    invoke-static {v0, v3, v2}, Ldi0;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-direct {p1, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 127
    .line 128
    .line 129
    throw p1

    .line 130
    :cond_3
    const-string p0, "The android:onClick attribute cannot be used within a restricted context"

    .line 131
    .line 132
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    return-void

    .line 136
    :cond_4
    :goto_1
    iget v1, p0, Lhu3;->r:I

    .line 137
    .line 138
    const/4 v2, 0x2

    .line 139
    if-lt v1, v2, :cond_5

    .line 140
    .line 141
    instance-of v1, p1, Lzb2;

    .line 142
    .line 143
    if-eqz v1, :cond_5

    .line 144
    .line 145
    move-object v1, p1

    .line 146
    check-cast v1, Lzb2;

    .line 147
    .line 148
    iget v2, v1, Lzb2;->x:I

    .line 149
    .line 150
    and-int/lit8 v2, v2, -0x5

    .line 151
    .line 152
    or-int/lit8 v2, v2, 0x4

    .line 153
    .line 154
    iput v2, v1, Lzb2;->x:I

    .line 155
    .line 156
    :cond_5
    iget-object v1, p0, Lhu3;->x:Ljava/lang/String;

    .line 157
    .line 158
    if-eqz v1, :cond_6

    .line 159
    .line 160
    sget-object v2, Liu3;->e:[Ljava/lang/Class;

    .line 161
    .line 162
    iget-object v0, v0, Liu3;->a:[Ljava/lang/Object;

    .line 163
    .line 164
    invoke-virtual {p0, v1, v2, v0}, Lhu3;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    check-cast v0, Landroid/view/View;

    .line 169
    .line 170
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 171
    .line 172
    .line 173
    move v4, v5

    .line 174
    :cond_6
    iget v0, p0, Lhu3;->w:I

    .line 175
    .line 176
    if-lez v0, :cond_8

    .line 177
    .line 178
    if-nez v4, :cond_7

    .line 179
    .line 180
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    .line 181
    .line 182
    .line 183
    goto :goto_2

    .line 184
    :cond_7
    const-string v0, "SupportMenuInflater"

    .line 185
    .line 186
    const-string v1, "Ignoring attribute \'itemActionViewLayout\'. Action view already specified."

    .line 187
    .line 188
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .line 190
    .line 191
    :cond_8
    :goto_2
    iget-object v0, p0, Lhu3;->z:Ljava/lang/CharSequence;

    .line 192
    .line 193
    instance-of v1, p1, Lzb2;

    .line 194
    .line 195
    const/16 v2, 0x1a

    .line 196
    .line 197
    if-eqz v1, :cond_9

    .line 198
    .line 199
    move-object v3, p1

    .line 200
    check-cast v3, Lzb2;

    .line 201
    .line 202
    invoke-virtual {v3, v0}, Lzb2;->c(Ljava/lang/CharSequence;)Lzb2;

    .line 203
    .line 204
    .line 205
    goto :goto_3

    .line 206
    :cond_9
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 207
    .line 208
    if-lt v3, v2, :cond_a

    .line 209
    .line 210
    invoke-static {p1, v0}, Lsf;->n(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    .line 211
    .line 212
    .line 213
    :cond_a
    :goto_3
    iget-object v0, p0, Lhu3;->A:Ljava/lang/CharSequence;

    .line 214
    .line 215
    if-eqz v1, :cond_b

    .line 216
    .line 217
    move-object v3, p1

    .line 218
    check-cast v3, Lzb2;

    .line 219
    .line 220
    invoke-virtual {v3, v0}, Lzb2;->e(Ljava/lang/CharSequence;)Lzb2;

    .line 221
    .line 222
    .line 223
    goto :goto_4

    .line 224
    :cond_b
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 225
    .line 226
    if-lt v3, v2, :cond_c

    .line 227
    .line 228
    invoke-static {p1, v0}, Lsf;->v(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    .line 229
    .line 230
    .line 231
    :cond_c
    :goto_4
    iget-char v0, p0, Lhu3;->n:C

    .line 232
    .line 233
    iget v3, p0, Lhu3;->o:I

    .line 234
    .line 235
    if-eqz v1, :cond_d

    .line 236
    .line 237
    move-object v4, p1

    .line 238
    check-cast v4, Lzb2;

    .line 239
    .line 240
    invoke-virtual {v4, v0, v3}, Lzb2;->setAlphabeticShortcut(CI)Landroid/view/MenuItem;

    .line 241
    .line 242
    .line 243
    goto :goto_5

    .line 244
    :cond_d
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 245
    .line 246
    if-lt v4, v2, :cond_e

    .line 247
    .line 248
    invoke-static {p1, v0, v3}, Lsf;->l(Landroid/view/MenuItem;CI)V

    .line 249
    .line 250
    .line 251
    :cond_e
    :goto_5
    iget-char v0, p0, Lhu3;->p:C

    .line 252
    .line 253
    iget v3, p0, Lhu3;->q:I

    .line 254
    .line 255
    if-eqz v1, :cond_f

    .line 256
    .line 257
    move-object v4, p1

    .line 258
    check-cast v4, Lzb2;

    .line 259
    .line 260
    invoke-virtual {v4, v0, v3}, Lzb2;->setNumericShortcut(CI)Landroid/view/MenuItem;

    .line 261
    .line 262
    .line 263
    goto :goto_6

    .line 264
    :cond_f
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 265
    .line 266
    if-lt v4, v2, :cond_10

    .line 267
    .line 268
    invoke-static {p1, v0, v3}, Lsf;->r(Landroid/view/MenuItem;CI)V

    .line 269
    .line 270
    .line 271
    :cond_10
    :goto_6
    iget-object v0, p0, Lhu3;->C:Landroid/graphics/PorterDuff$Mode;

    .line 272
    .line 273
    if-eqz v0, :cond_12

    .line 274
    .line 275
    if-eqz v1, :cond_11

    .line 276
    .line 277
    move-object v3, p1

    .line 278
    check-cast v3, Lzb2;

    .line 279
    .line 280
    invoke-virtual {v3, v0}, Lzb2;->setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;

    .line 281
    .line 282
    .line 283
    goto :goto_7

    .line 284
    :cond_11
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 285
    .line 286
    if-lt v3, v2, :cond_12

    .line 287
    .line 288
    invoke-static {p1, v0}, Lsf;->q(Landroid/view/MenuItem;Landroid/graphics/PorterDuff$Mode;)V

    .line 289
    .line 290
    .line 291
    :cond_12
    :goto_7
    iget-object p0, p0, Lhu3;->B:Landroid/content/res/ColorStateList;

    .line 292
    .line 293
    if-eqz p0, :cond_14

    .line 294
    .line 295
    if-eqz v1, :cond_13

    .line 296
    .line 297
    check-cast p1, Lzb2;

    .line 298
    .line 299
    invoke-virtual {p1, p0}, Lzb2;->setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    .line 300
    .line 301
    .line 302
    return-void

    .line 303
    :cond_13
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 304
    .line 305
    if-lt v0, v2, :cond_14

    .line 306
    .line 307
    invoke-static {p1, p0}, Lsf;->p(Landroid/view/MenuItem;Landroid/content/res/ColorStateList;)V

    .line 308
    .line 309
    .line 310
    :cond_14
    return-void
.end method
