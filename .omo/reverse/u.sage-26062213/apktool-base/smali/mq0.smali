.class public final Lmq0;
.super Lnq0;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public c:Z

.field public d:Z

.field public e:Lgw4;


# virtual methods
.method public final l(Landroid/content/Context;)Lgw4;
    .locals 8

    .line 1
    iget-boolean v0, p0, Lmq0;->d:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lmq0;->e:Lgw4;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    iget-object v0, p0, Lnq0;->a:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lpq3;

    .line 11
    .line 12
    iget-object v1, v0, Lpq3;->c:Llc1;

    .line 13
    .line 14
    iget v0, v0, Lpq3;->a:I

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    const/4 v3, 0x0

    .line 18
    const/4 v4, 0x1

    .line 19
    if-ne v0, v2, :cond_1

    .line 20
    .line 21
    move v0, v4

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    move v0, v3

    .line 24
    :goto_0
    iget-boolean v2, p0, Lmq0;->c:Z

    .line 25
    .line 26
    invoke-virtual {v1}, Llc1;->getNextTransition()I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    if-eqz v2, :cond_3

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    invoke-virtual {v1}, Llc1;->getPopEnterAnim()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    goto :goto_1

    .line 39
    :cond_2
    invoke-virtual {v1}, Llc1;->getPopExitAnim()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    goto :goto_1

    .line 44
    :cond_3
    if-eqz v0, :cond_4

    .line 45
    .line 46
    invoke-virtual {v1}, Llc1;->getEnterAnim()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    goto :goto_1

    .line 51
    :cond_4
    invoke-virtual {v1}, Llc1;->getExitAnim()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    :goto_1
    invoke-virtual {v1, v3, v3, v3, v3}, Llc1;->setAnimations(IIII)V

    .line 56
    .line 57
    .line 58
    iget-object v3, v1, Llc1;->mContainer:Landroid/view/ViewGroup;

    .line 59
    .line 60
    const/4 v6, 0x0

    .line 61
    if-eqz v3, :cond_5

    .line 62
    .line 63
    const v7, 0x7f0900dc

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    if-eqz v3, :cond_5

    .line 71
    .line 72
    iget-object v3, v1, Llc1;->mContainer:Landroid/view/ViewGroup;

    .line 73
    .line 74
    invoke-virtual {v3, v7, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    :cond_5
    iget-object v3, v1, Llc1;->mContainer:Landroid/view/ViewGroup;

    .line 78
    .line 79
    if-eqz v3, :cond_6

    .line 80
    .line 81
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    if-eqz v3, :cond_6

    .line 86
    .line 87
    goto/16 :goto_5

    .line 88
    .line 89
    :cond_6
    invoke-virtual {v1, v5, v0, v2}, Llc1;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    const/16 v7, 0x1c

    .line 94
    .line 95
    if-eqz v3, :cond_7

    .line 96
    .line 97
    new-instance v6, Lgw4;

    .line 98
    .line 99
    invoke-direct {v6, v7, v3}, Lgw4;-><init>(ILjava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    goto/16 :goto_5

    .line 103
    .line 104
    :cond_7
    invoke-virtual {v1, v5, v0, v2}, Llc1;->onCreateAnimator(IZI)Landroid/animation/Animator;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    if-eqz v1, :cond_8

    .line 109
    .line 110
    new-instance v6, Lgw4;

    .line 111
    .line 112
    invoke-direct {v6, v1}, Lgw4;-><init>(Landroid/animation/Animator;)V

    .line 113
    .line 114
    .line 115
    goto/16 :goto_5

    .line 116
    .line 117
    :cond_8
    if-nez v2, :cond_13

    .line 118
    .line 119
    if-eqz v5, :cond_13

    .line 120
    .line 121
    const/16 v1, 0x1001

    .line 122
    .line 123
    if-eq v5, v1, :cond_11

    .line 124
    .line 125
    const/16 v1, 0x2002

    .line 126
    .line 127
    if-eq v5, v1, :cond_f

    .line 128
    .line 129
    const/16 v1, 0x2005

    .line 130
    .line 131
    if-eq v5, v1, :cond_d

    .line 132
    .line 133
    const/16 v1, 0x1003

    .line 134
    .line 135
    if-eq v5, v1, :cond_b

    .line 136
    .line 137
    const/16 v1, 0x1004

    .line 138
    .line 139
    if-eq v5, v1, :cond_9

    .line 140
    .line 141
    const/4 v0, -0x1

    .line 142
    :goto_2
    move v2, v0

    .line 143
    goto :goto_3

    .line 144
    :cond_9
    if-eqz v0, :cond_a

    .line 145
    .line 146
    const v0, 0x10100b8

    .line 147
    .line 148
    .line 149
    invoke-static {p1, v0}, Ltv4;->T(Landroid/content/Context;I)I

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    goto :goto_2

    .line 154
    :cond_a
    const v0, 0x10100b9

    .line 155
    .line 156
    .line 157
    invoke-static {p1, v0}, Ltv4;->T(Landroid/content/Context;I)I

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    goto :goto_2

    .line 162
    :cond_b
    if-eqz v0, :cond_c

    .line 163
    .line 164
    const v0, 0x7f020002

    .line 165
    .line 166
    .line 167
    goto :goto_2

    .line 168
    :cond_c
    const v0, 0x7f020003

    .line 169
    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_d
    if-eqz v0, :cond_e

    .line 173
    .line 174
    const v0, 0x10100ba

    .line 175
    .line 176
    .line 177
    invoke-static {p1, v0}, Ltv4;->T(Landroid/content/Context;I)I

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    goto :goto_2

    .line 182
    :cond_e
    const v0, 0x10100bb

    .line 183
    .line 184
    .line 185
    invoke-static {p1, v0}, Ltv4;->T(Landroid/content/Context;I)I

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    goto :goto_2

    .line 190
    :cond_f
    if-eqz v0, :cond_10

    .line 191
    .line 192
    const/high16 v0, 0x7f020000

    .line 193
    .line 194
    goto :goto_2

    .line 195
    :cond_10
    const v0, 0x7f020001

    .line 196
    .line 197
    .line 198
    goto :goto_2

    .line 199
    :cond_11
    if-eqz v0, :cond_12

    .line 200
    .line 201
    const v0, 0x7f020004

    .line 202
    .line 203
    .line 204
    goto :goto_2

    .line 205
    :cond_12
    const v0, 0x7f020005

    .line 206
    .line 207
    .line 208
    goto :goto_2

    .line 209
    :cond_13
    :goto_3
    if-eqz v2, :cond_16

    .line 210
    .line 211
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    const-string v1, "anim"

    .line 220
    .line 221
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result v0

    .line 225
    if-eqz v0, :cond_14

    .line 226
    .line 227
    :try_start_0
    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    if-eqz v1, :cond_16

    .line 232
    .line 233
    new-instance v3, Lgw4;

    .line 234
    .line 235
    invoke-direct {v3, v7, v1}, Lgw4;-><init>(ILjava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 236
    .line 237
    .line 238
    :goto_4
    move-object v6, v3

    .line 239
    goto :goto_5

    .line 240
    :catch_0
    move-exception p0

    .line 241
    throw p0

    .line 242
    :catch_1
    :cond_14
    :try_start_1
    invoke-static {p1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    if-eqz v1, :cond_16

    .line 247
    .line 248
    new-instance v3, Lgw4;

    .line 249
    .line 250
    invoke-direct {v3, v1}, Lgw4;-><init>(Landroid/animation/Animator;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 251
    .line 252
    .line 253
    goto :goto_4

    .line 254
    :catch_2
    move-exception v1

    .line 255
    if-nez v0, :cond_15

    .line 256
    .line 257
    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    if-eqz p1, :cond_16

    .line 262
    .line 263
    new-instance v6, Lgw4;

    .line 264
    .line 265
    invoke-direct {v6, v7, p1}, Lgw4;-><init>(ILjava/lang/Object;)V

    .line 266
    .line 267
    .line 268
    goto :goto_5

    .line 269
    :cond_15
    throw v1

    .line 270
    :cond_16
    :goto_5
    iput-object v6, p0, Lmq0;->e:Lgw4;

    .line 271
    .line 272
    iput-boolean v4, p0, Lmq0;->d:Z

    .line 273
    .line 274
    return-object v6
.end method
