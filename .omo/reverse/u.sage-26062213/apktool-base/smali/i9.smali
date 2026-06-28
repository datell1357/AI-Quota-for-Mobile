.class public final Li9;
.super Lxx1;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lne1;


# instance fields
.field public final synthetic o:I

.field public final synthetic p:Lq9;


# direct methods
.method public synthetic constructor <init>(Lq9;I)V
    .locals 0

    .line 1
    iput p2, p0, Li9;->o:I

    .line 2
    .line 3
    iput-object p1, p0, Li9;->p:Lq9;

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Lxx1;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Li9;->o:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Li9;->p:Lq9;

    .line 10
    .line 11
    iget-object v0, p0, Lq9;->z0:Landroid/view/MotionEvent;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const/16 v1, 0x9

    .line 16
    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const/4 v4, 0x7

    .line 22
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    const/16 v5, 0x8

    .line 27
    .line 28
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    filled-new-array {v1, v4, v5}, [Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-static {v1}, Ltv4;->F([Ljava/lang/Object;)Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    iget-object v1, p0, Lq9;->z0:Landroid/view/MotionEvent;

    .line 53
    .line 54
    if-eqz v1, :cond_0

    .line 55
    .line 56
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getButtonState()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-nez v1, :cond_0

    .line 61
    .line 62
    move v2, v3

    .line 63
    :cond_0
    if-eqz v0, :cond_1

    .line 64
    .line 65
    if-eqz v2, :cond_1

    .line 66
    .line 67
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 68
    .line 69
    .line 70
    move-result-wide v0

    .line 71
    iput-wide v0, p0, Lq9;->A0:J

    .line 72
    .line 73
    iget-object v0, p0, Lq9;->H0:Lo9;

    .line 74
    .line 75
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 76
    .line 77
    .line 78
    :cond_1
    iget-object p0, p0, Lq9;->N0:Li9;

    .line 79
    .line 80
    invoke-virtual {p0}, Li9;->a()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    sget-object p0, Lt64;->a:Lt64;

    .line 84
    .line 85
    return-object p0

    .line 86
    :pswitch_0
    sget-object v0, Lq9;->U0:Lqv3;

    .line 87
    .line 88
    iget-object p0, p0, Li9;->p:Lq9;

    .line 89
    .line 90
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 91
    .line 92
    const/16 v4, 0x1c

    .line 93
    .line 94
    if-le v0, v4, :cond_8

    .line 95
    .line 96
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-nez v0, :cond_2

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_2
    sget-object v0, Lq9;->Z0:Ll7;

    .line 104
    .line 105
    if-nez v0, :cond_7

    .line 106
    .line 107
    new-instance v0, Ll7;

    .line 108
    .line 109
    invoke-direct {v0, v3}, Ll7;-><init>(I)V

    .line 110
    .line 111
    .line 112
    sput-object v0, Lq9;->Z0:Ll7;

    .line 113
    .line 114
    invoke-static {}, Landroid/os/StrictMode;->getVmPolicy()Landroid/os/StrictMode$VmPolicy;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    :try_start_0
    sget-object v5, Lq9;->V0:Ljava/lang/Class;

    .line 119
    .line 120
    if-nez v5, :cond_3

    .line 121
    .line 122
    const-string v5, "android.os.SystemProperties"

    .line 123
    .line 124
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    sput-object v5, Lq9;->V0:Ljava/lang/Class;

    .line 129
    .line 130
    :cond_3
    sget-object v5, Lq9;->X0:Ljava/lang/reflect/Method;

    .line 131
    .line 132
    if-nez v5, :cond_5

    .line 133
    .line 134
    sget-object v5, Landroid/os/StrictMode$VmPolicy;->LAX:Landroid/os/StrictMode$VmPolicy;

    .line 135
    .line 136
    invoke-static {v5}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 137
    .line 138
    .line 139
    sget-object v5, Lq9;->V0:Ljava/lang/Class;

    .line 140
    .line 141
    if-eqz v5, :cond_4

    .line 142
    .line 143
    const-string v6, "addChangeCallback"

    .line 144
    .line 145
    new-array v7, v3, [Ljava/lang/Class;

    .line 146
    .line 147
    const-class v8, Ljava/lang/Runnable;

    .line 148
    .line 149
    aput-object v8, v7, v2

    .line 150
    .line 151
    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 152
    .line 153
    .line 154
    move-result-object v5

    .line 155
    goto :goto_0

    .line 156
    :cond_4
    move-object v5, v1

    .line 157
    :goto_0
    sput-object v5, Lq9;->X0:Ljava/lang/reflect/Method;

    .line 158
    .line 159
    :cond_5
    sget-object v5, Lq9;->X0:Ljava/lang/reflect/Method;

    .line 160
    .line 161
    if-eqz v5, :cond_6

    .line 162
    .line 163
    new-array v3, v3, [Ljava/lang/Object;

    .line 164
    .line 165
    aput-object v0, v3, v2

    .line 166
    .line 167
    invoke-virtual {v5, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    .line 169
    .line 170
    :catchall_0
    :cond_6
    invoke-static {v4}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 171
    .line 172
    .line 173
    :cond_7
    sget-object v0, Lq9;->Y0:Ldg2;

    .line 174
    .line 175
    monitor-enter v0

    .line 176
    :try_start_1
    invoke-virtual {v0, p0}, Ldg2;->a(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 177
    .line 178
    .line 179
    monitor-exit v0

    .line 180
    goto :goto_1

    .line 181
    :catchall_1
    move-exception p0

    .line 182
    monitor-exit v0

    .line 183
    throw p0

    .line 184
    :cond_8
    :goto_1
    sget-object p0, Lt64;->a:Lt64;

    .line 185
    .line 186
    return-object p0

    .line 187
    :pswitch_1
    iget-object p0, p0, Li9;->p:Lq9;

    .line 188
    .line 189
    invoke-virtual {p0}, Lq9;->getConfiguration()Landroid/content/res/Configuration;

    .line 190
    .line 191
    .line 192
    move-result-object p0

    .line 193
    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    .line 194
    .line 195
    .line 196
    move-result-object p0

    .line 197
    new-instance v0, Lf72;

    .line 198
    .line 199
    new-instance v1, Lg72;

    .line 200
    .line 201
    invoke-direct {v1, p0}, Lg72;-><init>(Landroid/os/LocaleList;)V

    .line 202
    .line 203
    .line 204
    invoke-direct {v0, v1}, Lf72;-><init>(Lg72;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p0}, Landroid/os/LocaleList;->isEmpty()Z

    .line 208
    .line 209
    .line 210
    move-result p0

    .line 211
    if-eqz p0, :cond_9

    .line 212
    .line 213
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    .line 214
    .line 215
    .line 216
    move-result-object p0

    .line 217
    new-instance v0, Lf72;

    .line 218
    .line 219
    new-instance v1, Lg72;

    .line 220
    .line 221
    invoke-direct {v1, p0}, Lg72;-><init>(Landroid/os/LocaleList;)V

    .line 222
    .line 223
    .line 224
    invoke-direct {v0, v1}, Lf72;-><init>(Lg72;)V

    .line 225
    .line 226
    .line 227
    :cond_9
    iget-object p0, v0, Lf72;->a:Lg72;

    .line 228
    .line 229
    iget-object v0, p0, Lg72;->a:Landroid/os/LocaleList;

    .line 230
    .line 231
    invoke-virtual {v0}, Landroid/os/LocaleList;->size()I

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    new-instance v1, Ljava/util/ArrayList;

    .line 236
    .line 237
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 238
    .line 239
    .line 240
    :goto_2
    if-ge v2, v0, :cond_a

    .line 241
    .line 242
    new-instance v3, Ld72;

    .line 243
    .line 244
    iget-object v4, p0, Lg72;->a:Landroid/os/LocaleList;

    .line 245
    .line 246
    invoke-virtual {v4, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    .line 247
    .line 248
    .line 249
    move-result-object v4

    .line 250
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 251
    .line 252
    .line 253
    invoke-direct {v3, v4}, Ld72;-><init>(Ljava/util/Locale;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    add-int/lit8 v2, v2, 0x1

    .line 260
    .line 261
    goto :goto_2

    .line 262
    :cond_a
    new-instance p0, Le72;

    .line 263
    .line 264
    invoke-direct {p0, v1}, Le72;-><init>(Ljava/util/List;)V

    .line 265
    .line 266
    .line 267
    return-object p0

    .line 268
    :pswitch_2
    iget-object p0, p0, Li9;->p:Lq9;

    .line 269
    .line 270
    invoke-virtual {p0}, Lq9;->getAndroidViewsHandler()Lid;

    .line 271
    .line 272
    .line 273
    move-result-object p0

    .line 274
    if-eqz p0, :cond_e

    .line 275
    .line 276
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 277
    .line 278
    .line 279
    move-result v0

    .line 280
    :goto_3
    if-ge v2, v0, :cond_e

    .line 281
    .line 282
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 283
    .line 284
    .line 285
    move-result-object v3

    .line 286
    instance-of v4, v3, Lbd;

    .line 287
    .line 288
    if-eqz v4, :cond_b

    .line 289
    .line 290
    check-cast v3, Lbd;

    .line 291
    .line 292
    goto :goto_4

    .line 293
    :cond_b
    move-object v3, v1

    .line 294
    :goto_4
    if-nez v3, :cond_c

    .line 295
    .line 296
    goto :goto_5

    .line 297
    :cond_c
    invoke-virtual {v3}, Landroid/view/View;->isLayoutRequested()Z

    .line 298
    .line 299
    .line 300
    move-result v4

    .line 301
    if-eqz v4, :cond_d

    .line 302
    .line 303
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    .line 304
    .line 305
    .line 306
    move-result v4

    .line 307
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    .line 308
    .line 309
    .line 310
    move-result v5

    .line 311
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    .line 312
    .line 313
    .line 314
    move-result v6

    .line 315
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    .line 316
    .line 317
    .line 318
    move-result v7

    .line 319
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 320
    .line 321
    .line 322
    :cond_d
    :goto_5
    add-int/lit8 v2, v2, 0x1

    .line 323
    .line 324
    goto :goto_3

    .line 325
    :cond_e
    sget-object p0, Lt64;->a:Lt64;

    .line 326
    .line 327
    return-object p0

    .line 328
    :pswitch_3
    iget-object p0, p0, Li9;->p:Lq9;

    .line 329
    .line 330
    iget-object p0, p0, Lq9;->B:Lws2;

    .line 331
    .line 332
    invoke-virtual {p0}, Lws2;->getValue()Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    move-result-object p0

    .line 336
    check-cast p0, Ljava/lang/Boolean;

    .line 337
    .line 338
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 339
    .line 340
    .line 341
    return-object p0

    .line 342
    nop

    .line 343
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
