.class public abstract Lu/sage/a;
.super Landroid/app/Service;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final D:Lwr3;

.field public static final E:Lb23;

.field public static final F:Lwr3;

.field public static final G:Lb23;


# instance fields
.field public A:I

.field public B:I

.field public C:Lv43;

.field public final n:Landroid/os/Handler;

.field public final o:Lnv3;

.field public p:Landroid/webkit/WebView;

.field public final q:Lbh0;

.field public final r:Lpi1;

.field public s:Ljava/lang/String;

.field public t:Lir3;

.field public u:Lir3;

.field public v:Ljava/lang/String;

.field public w:Z

.field public final x:Lwr3;

.field public final y:Lwr3;

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-static {v0}, Lxr3;->a(Ljava/lang/Object;)Lwr3;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lu/sage/a;->D:Lwr3;

    .line 8
    .line 9
    new-instance v1, Lb23;

    .line 10
    .line 11
    invoke-direct {v1, v0}, Lb23;-><init>(Lwr3;)V

    .line 12
    .line 13
    .line 14
    sput-object v1, Lu/sage/a;->E:Lb23;

    .line 15
    .line 16
    sget-object v0, Lh01;->n:Lh01;

    .line 17
    .line 18
    invoke-static {v0}, Lxr3;->a(Ljava/lang/Object;)Lwr3;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Lu/sage/a;->F:Lwr3;

    .line 23
    .line 24
    new-instance v1, Lb23;

    .line 25
    .line 26
    invoke-direct {v1, v0}, Lb23;-><init>(Lwr3;)V

    .line 27
    .line 28
    .line 29
    sput-object v1, Lu/sage/a;->G:Lb23;

    .line 30
    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lu/sage/a;->n:Landroid/os/Handler;

    .line 14
    .line 15
    new-instance v0, Lcc;

    .line 16
    .line 17
    const/4 v1, 0x3

    .line 18
    invoke-direct {v0, v1, p0}, Lcc;-><init>(ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    new-instance v1, Lnv3;

    .line 22
    .line 23
    invoke-direct {v1, v0}, Lnv3;-><init>(Lne1;)V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lu/sage/a;->o:Lnv3;

    .line 27
    .line 28
    invoke-static {}, Lk30;->f()Lbu3;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    sget-object v1, Lzu0;->a:Lzp0;

    .line 33
    .line 34
    sget-object v1, Ln92;->a:Lxi1;

    .line 35
    .line 36
    invoke-static {v0, v1}, Lca;->B(Lfi0;Lhi0;)Lhi0;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v0}, Ldm0;->c(Lhi0;)Lbh0;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lu/sage/a;->q:Lbh0;

    .line 45
    .line 46
    new-instance v0, Lpi1;

    .line 47
    .line 48
    invoke-direct {v0}, Lpi1;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lu/sage/a;->r:Lpi1;

    .line 52
    .line 53
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 54
    .line 55
    invoke-static {v0}, Lxr3;->a(Ljava/lang/Object;)Lwr3;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    iput-object v1, p0, Lu/sage/a;->x:Lwr3;

    .line 60
    .line 61
    invoke-static {v0}, Lxr3;->a(Ljava/lang/Object;)Lwr3;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iput-object v0, p0, Lu/sage/a;->y:Lwr3;

    .line 66
    .line 67
    const/4 v0, 0x0

    .line 68
    invoke-static {v0}, Lxr3;->a(Ljava/lang/Object;)Lwr3;

    .line 69
    .line 70
    .line 71
    sget-object v0, Ln43;->b:Ln43;

    .line 72
    .line 73
    iput-object v0, p0, Lu/sage/a;->C:Lv43;

    .line 74
    .line 75
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p2, p0, Lu/sage/a;->s:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p2, p1}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    if-eqz p2, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Lu/sage/a;->o()Lpt;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-virtual {p2}, Lpt;->g()Z

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    if-eqz p2, :cond_1

    .line 18
    .line 19
    iget p2, p0, Lu/sage/a;->A:I

    .line 20
    .line 21
    const/4 v0, 0x2

    .line 22
    const/4 v1, 0x0

    .line 23
    if-ge p2, v0, :cond_0

    .line 24
    .line 25
    add-int/lit8 p2, p2, 0x1

    .line 26
    .line 27
    iput p2, p0, Lu/sage/a;->A:I

    .line 28
    .line 29
    sget-object p2, Lez3;->a:Lra3;

    .line 30
    .line 31
    invoke-virtual {p0}, Lu/sage/a;->j()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    new-array v0, v1, [Ljava/lang/Object;

    .line 35
    .line 36
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Lra3;->m([Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    new-instance p2, Lst;

    .line 43
    .line 44
    invoke-direct {p2, p0, p1, v1}, Lst;-><init>(Lu/sage/a;Ljava/lang/String;I)V

    .line 45
    .line 46
    .line 47
    iget-object p0, p0, Lu/sage/a;->n:Landroid/os/Handler;

    .line 48
    .line 49
    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_0
    sget-object p1, Lez3;->a:Lra3;

    .line 54
    .line 55
    invoke-virtual {p0}, Lu/sage/a;->j()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    new-array p2, v1, [Ljava/lang/Object;

    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    invoke-static {p2}, Lra3;->f([Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Lu/sage/a;->o()Lpt;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p1, v1}, Lpt;->s(Z)V

    .line 71
    .line 72
    .line 73
    const-string p1, "MaxRetriesReached"

    .line 74
    .line 75
    invoke-virtual {p0, p1}, Lu/sage/a;->x(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    :cond_1
    return-void
.end method

.method public final c(Ld84;)Landroid/app/Notification;
    .locals 35

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual {v0}, Lu/sage/a;->o()Lpt;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lpt;->g()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const-string v2, "notification"

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    check-cast v3, Landroid/app/NotificationManager;

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    :try_start_0
    invoke-virtual {v3}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    .line 24
    .line 25
    .line 26
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    goto :goto_0

    .line 28
    :catch_0
    sget-object v3, Lez3;->a:Lra3;

    .line 29
    .line 30
    new-array v5, v4, [Ljava/lang/Object;

    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-static {v5}, Lra3;->g([Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    new-array v3, v4, [Landroid/service/notification/StatusBarNotification;

    .line 39
    .line 40
    :goto_0
    new-instance v5, Ljava/util/ArrayList;

    .line 41
    .line 42
    sget-object v6, Ly84;->x:Lt11;

    .line 43
    .line 44
    const/16 v7, 0xa

    .line 45
    .line 46
    invoke-static {v6, v7}, Lp70;->a0(Ljava/lang/Iterable;I)I

    .line 47
    .line 48
    .line 49
    move-result v8

    .line 50
    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 51
    .line 52
    .line 53
    new-instance v8, Lg1;

    .line 54
    .line 55
    invoke-direct {v8, v4, v6}, Lg1;-><init>(ILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    :goto_1
    invoke-virtual {v8}, Lg1;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    if-eqz v6, :cond_0

    .line 63
    .line 64
    invoke-virtual {v8}, Lg1;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    check-cast v6, Ly84;

    .line 69
    .line 70
    iget v6, v6, Ly84;->p:I

    .line 71
    .line 72
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_0
    invoke-static {v5}, Lo70;->F0(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    array-length v6, v3

    .line 88
    move v8, v4

    .line 89
    move v9, v8

    .line 90
    :goto_2
    if-ge v8, v6, :cond_2

    .line 91
    .line 92
    aget-object v10, v3, v8

    .line 93
    .line 94
    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getId()I

    .line 95
    .line 96
    .line 97
    move-result v10

    .line 98
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object v10

    .line 102
    invoke-interface {v5, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v10

    .line 106
    if-eqz v10, :cond_1

    .line 107
    .line 108
    add-int/lit8 v9, v9, 0x1

    .line 109
    .line 110
    :cond_1
    add-int/lit8 v8, v8, 0x1

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_2
    array-length v5, v3

    .line 114
    move v6, v4

    .line 115
    :goto_3
    if-ge v6, v5, :cond_4

    .line 116
    .line 117
    aget-object v8, v3, v6

    .line 118
    .line 119
    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getId()I

    .line 120
    .line 121
    .line 122
    move-result v8

    .line 123
    invoke-virtual {v0}, Lu/sage/a;->m()I

    .line 124
    .line 125
    .line 126
    move-result v10

    .line 127
    if-ne v8, v10, :cond_3

    .line 128
    .line 129
    goto :goto_4

    .line 130
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_4
    add-int/lit8 v9, v9, 0x1

    .line 134
    .line 135
    :goto_4
    const/4 v3, 0x1

    .line 136
    if-le v9, v3, :cond_5

    .line 137
    .line 138
    move v5, v3

    .line 139
    goto :goto_5

    .line 140
    :cond_5
    move v5, v4

    .line 141
    :goto_5
    iget-boolean v6, v0, Lu/sage/a;->z:Z

    .line 142
    .line 143
    const/4 v8, 0x3

    .line 144
    if-eqz v6, :cond_6

    .line 145
    .line 146
    const v6, 0x7f100400

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v6

    .line 153
    goto :goto_6

    .line 154
    :cond_6
    if-eqz v1, :cond_7

    .line 155
    .line 156
    const v6, 0x7f100374

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v6

    .line 163
    goto :goto_6

    .line 164
    :cond_7
    if-eqz p1, :cond_8

    .line 165
    .line 166
    invoke-virtual/range {p1 .. p1}, Ld84;->c()Ljava/util/List;

    .line 167
    .line 168
    .line 169
    move-result-object v6

    .line 170
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    .line 171
    .line 172
    .line 173
    move-result v6

    .line 174
    if-nez v6, :cond_8

    .line 175
    .line 176
    invoke-virtual/range {p1 .. p1}, Ld84;->c()Ljava/util/List;

    .line 177
    .line 178
    .line 179
    move-result-object v9

    .line 180
    new-instance v13, Lv;

    .line 181
    .line 182
    invoke-direct {v13, v8, v0}, Lv;-><init>(ILjava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    const/16 v14, 0x1e

    .line 186
    .line 187
    const-string v10, " | "

    .line 188
    .line 189
    const/4 v11, 0x0

    .line 190
    const/4 v12, 0x0

    .line 191
    invoke-static/range {v9 .. v14}, Lo70;->n0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lpe1;I)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v6

    .line 195
    goto :goto_6

    .line 196
    :cond_8
    if-eqz p1, :cond_9

    .line 197
    .line 198
    const-string v6, "No usage limits found."

    .line 199
    .line 200
    goto :goto_6

    .line 201
    :cond_9
    const-string v6, "Loading usage data..."

    .line 202
    .line 203
    :goto_6
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 204
    .line 205
    .line 206
    if-eqz p1, :cond_1a

    .line 207
    .line 208
    if-nez v1, :cond_1a

    .line 209
    .line 210
    iget-boolean v9, v0, Lu/sage/a;->z:Z

    .line 211
    .line 212
    if-nez v9, :cond_1a

    .line 213
    .line 214
    new-instance v9, Ljava/lang/StringBuilder;

    .line 215
    .line 216
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    .line 218
    .line 219
    invoke-virtual/range {p1 .. p1}, Ld84;->c()Ljava/util/List;

    .line 220
    .line 221
    .line 222
    move-result-object v10

    .line 223
    invoke-static {v8, v10}, Lo70;->z0(ILjava/util/List;)Ljava/util/List;

    .line 224
    .line 225
    .line 226
    move-result-object v8

    .line 227
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 228
    .line 229
    .line 230
    move-result-object v8

    .line 231
    move v10, v4

    .line 232
    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 233
    .line 234
    .line 235
    move-result v11

    .line 236
    if-eqz v11, :cond_19

    .line 237
    .line 238
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v11

    .line 242
    add-int/lit8 v12, v10, 0x1

    .line 243
    .line 244
    if-ltz v10, :cond_18

    .line 245
    .line 246
    check-cast v11, Lp84;

    .line 247
    .line 248
    if-lez v10, :cond_a

    .line 249
    .line 250
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    :cond_a
    invoke-virtual {v0}, Lu/sage/a;->q()Ly84;

    .line 254
    .line 255
    .line 256
    move-result-object v10

    .line 257
    invoke-static {v11, v0, v10}, Ltv4;->u(Lp84;Landroid/content/Context;Ly84;)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v10

    .line 261
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v11}, Lp84;->e()D

    .line 268
    .line 269
    .line 270
    move-result-wide v13

    .line 271
    invoke-virtual {v11}, Lp84;->c()Ljava/lang/Long;

    .line 272
    .line 273
    .line 274
    move-result-object v10

    .line 275
    invoke-virtual {v11}, Lp84;->b()Ljava/lang/Long;

    .line 276
    .line 277
    .line 278
    move-result-object v15

    .line 279
    invoke-virtual/range {p1 .. p1}, Ld84;->b()J

    .line 280
    .line 281
    .line 282
    move-result-wide v16

    .line 283
    const-wide/high16 v18, 0x4031000000000000L    # 17.0

    .line 284
    .line 285
    mul-double v20, v13, v18

    .line 286
    .line 287
    const-wide/high16 v22, 0x4059000000000000L    # 100.0

    .line 288
    .line 289
    move-object/from16 v24, v8

    .line 290
    .line 291
    div-double v7, v20, v22

    .line 292
    .line 293
    double-to-int v7, v7

    .line 294
    const/16 v8, 0x11

    .line 295
    .line 296
    invoke-static {v7, v4, v8}, Lix;->k(III)I

    .line 297
    .line 298
    .line 299
    move-result v7

    .line 300
    const-string v3, " "

    .line 301
    .line 302
    const-string v4, "\u2588"

    .line 303
    .line 304
    const-string v8, "\u2591"

    .line 305
    .line 306
    if-eqz v10, :cond_b

    .line 307
    .line 308
    if-nez v15, :cond_c

    .line 309
    .line 310
    :cond_b
    move/from16 v16, v1

    .line 311
    .line 312
    move v15, v5

    .line 313
    move-object/from16 v23, v6

    .line 314
    .line 315
    goto/16 :goto_e

    .line 316
    .line 317
    :cond_c
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    .line 318
    .line 319
    .line 320
    move-result-wide v25

    .line 321
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    .line 322
    .line 323
    .line 324
    move-result-wide v27

    .line 325
    cmp-long v23, v25, v27

    .line 326
    .line 327
    const-wide/16 v25, 0x0

    .line 328
    .line 329
    if-ltz v23, :cond_d

    .line 330
    .line 331
    :goto_8
    move v15, v5

    .line 332
    move-object/from16 v23, v6

    .line 333
    .line 334
    goto :goto_9

    .line 335
    :cond_d
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    .line 336
    .line 337
    .line 338
    move-result-wide v27

    .line 339
    cmp-long v23, v16, v27

    .line 340
    .line 341
    if-ltz v23, :cond_e

    .line 342
    .line 343
    const-wide/high16 v25, 0x3ff0000000000000L    # 1.0

    .line 344
    .line 345
    goto :goto_8

    .line 346
    :cond_e
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    .line 347
    .line 348
    .line 349
    move-result-wide v27

    .line 350
    cmp-long v23, v16, v27

    .line 351
    .line 352
    if-gtz v23, :cond_f

    .line 353
    .line 354
    goto :goto_8

    .line 355
    :cond_f
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    .line 356
    .line 357
    .line 358
    move-result-wide v25

    .line 359
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    .line 360
    .line 361
    .line 362
    move-result-wide v27

    .line 363
    move v15, v5

    .line 364
    move-object/from16 v23, v6

    .line 365
    .line 366
    sub-long v5, v25, v27

    .line 367
    .line 368
    long-to-double v5, v5

    .line 369
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    .line 370
    .line 371
    .line 372
    move-result-wide v25

    .line 373
    move-wide/from16 v27, v5

    .line 374
    .line 375
    sub-long v5, v16, v25

    .line 376
    .line 377
    long-to-double v5, v5

    .line 378
    div-double v29, v5, v27

    .line 379
    .line 380
    const-wide/16 v31, 0x0

    .line 381
    .line 382
    const-wide/high16 v33, 0x3ff0000000000000L    # 1.0

    .line 383
    .line 384
    invoke-static/range {v29 .. v34}, Lix;->i(DDD)D

    .line 385
    .line 386
    .line 387
    move-result-wide v25

    .line 388
    :goto_9
    mul-double v5, v25, v18

    .line 389
    .line 390
    double-to-int v5, v5

    .line 391
    const/4 v6, 0x0

    .line 392
    const/16 v10, 0x11

    .line 393
    .line 394
    invoke-static {v5, v6, v10}, Lix;->k(III)I

    .line 395
    .line 396
    .line 397
    move-result v5

    .line 398
    new-instance v6, Ljava/lang/StringBuilder;

    .line 399
    .line 400
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 401
    .line 402
    .line 403
    if-le v7, v5, :cond_12

    .line 404
    .line 405
    move/from16 v16, v1

    .line 406
    .line 407
    const/4 v1, 0x0

    .line 408
    :goto_a
    if-ge v1, v10, :cond_15

    .line 409
    .line 410
    if-ge v1, v5, :cond_10

    .line 411
    .line 412
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    goto :goto_b

    .line 416
    :cond_10
    if-ge v1, v7, :cond_11

    .line 417
    .line 418
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    goto :goto_b

    .line 422
    :cond_11
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    .line 425
    :goto_b
    add-int/lit8 v1, v1, 0x1

    .line 426
    .line 427
    const/16 v10, 0x11

    .line 428
    .line 429
    goto :goto_a

    .line 430
    :cond_12
    move/from16 v16, v1

    .line 431
    .line 432
    const/4 v1, 0x0

    .line 433
    :goto_c
    if-ge v1, v10, :cond_15

    .line 434
    .line 435
    if-ge v1, v7, :cond_13

    .line 436
    .line 437
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    goto :goto_d

    .line 441
    :cond_13
    if-ge v1, v5, :cond_14

    .line 442
    .line 443
    const-string v10, "\u2592"

    .line 444
    .line 445
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    .line 447
    .line 448
    goto :goto_d

    .line 449
    :cond_14
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    .line 451
    .line 452
    :goto_d
    add-int/lit8 v1, v1, 0x1

    .line 453
    .line 454
    const/16 v10, 0x11

    .line 455
    .line 456
    goto :goto_c

    .line 457
    :cond_15
    invoke-virtual {v0}, Lu/sage/a;->q()Ly84;

    .line 458
    .line 459
    .line 460
    move-result-object v1

    .line 461
    invoke-virtual {v1}, Ly84;->a()Lts1;

    .line 462
    .line 463
    .line 464
    move-result-object v1

    .line 465
    invoke-virtual {v1, v13, v14}, Lts1;->a(D)Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v1

    .line 469
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v1

    .line 473
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v1

    .line 480
    goto :goto_11

    .line 481
    :goto_e
    new-instance v1, Ljava/lang/StringBuilder;

    .line 482
    .line 483
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 484
    .line 485
    .line 486
    const/4 v5, 0x0

    .line 487
    const/16 v10, 0x11

    .line 488
    .line 489
    :goto_f
    if-ge v5, v10, :cond_17

    .line 490
    .line 491
    if-ge v5, v7, :cond_16

    .line 492
    .line 493
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    .line 495
    .line 496
    goto :goto_10

    .line 497
    :cond_16
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    .line 499
    .line 500
    :goto_10
    add-int/lit8 v5, v5, 0x1

    .line 501
    .line 502
    goto :goto_f

    .line 503
    :cond_17
    invoke-virtual {v0}, Lu/sage/a;->q()Ly84;

    .line 504
    .line 505
    .line 506
    move-result-object v4

    .line 507
    invoke-virtual {v4}, Ly84;->a()Lts1;

    .line 508
    .line 509
    .line 510
    move-result-object v4

    .line 511
    invoke-virtual {v4, v13, v14}, Lts1;->a(D)Ljava/lang/String;

    .line 512
    .line 513
    .line 514
    move-result-object v4

    .line 515
    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    move-result-object v3

    .line 519
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    .line 521
    .line 522
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 523
    .line 524
    .line 525
    move-result-object v1

    .line 526
    :goto_11
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    .line 528
    .line 529
    const/16 v1, 0xa

    .line 530
    .line 531
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 532
    .line 533
    .line 534
    invoke-virtual {v0}, Lu/sage/a;->q()Ly84;

    .line 535
    .line 536
    .line 537
    move-result-object v3

    .line 538
    invoke-static {v3}, Lzf5;->K(Ly84;)V

    .line 539
    .line 540
    .line 541
    invoke-virtual {v11}, Lp84;->b()Ljava/lang/Long;

    .line 542
    .line 543
    .line 544
    move-result-object v3

    .line 545
    invoke-virtual/range {p1 .. p1}, Ld84;->b()J

    .line 546
    .line 547
    .line 548
    move-result-wide v4

    .line 549
    invoke-virtual {v11}, Lp84;->a()Ljava/lang/String;

    .line 550
    .line 551
    .line 552
    move-result-object v6

    .line 553
    invoke-static {v0, v3, v4, v5, v6}, Le10;->a(Landroid/content/Context;Ljava/lang/Long;JLjava/lang/String;)Ljava/lang/String;

    .line 554
    .line 555
    .line 556
    move-result-object v3

    .line 557
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    .line 559
    .line 560
    move v7, v1

    .line 561
    move v10, v12

    .line 562
    move v5, v15

    .line 563
    move/from16 v1, v16

    .line 564
    .line 565
    move-object/from16 v6, v23

    .line 566
    .line 567
    move-object/from16 v8, v24

    .line 568
    .line 569
    const/4 v3, 0x1

    .line 570
    const/4 v4, 0x0

    .line 571
    goto/16 :goto_7

    .line 572
    .line 573
    :cond_18
    invoke-static {}, Ltv4;->S()V

    .line 574
    .line 575
    .line 576
    const/4 v0, 0x0

    .line 577
    throw v0

    .line 578
    :cond_19
    move/from16 v16, v1

    .line 579
    .line 580
    move v15, v5

    .line 581
    move-object/from16 v23, v6

    .line 582
    .line 583
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 584
    .line 585
    .line 586
    move-result-object v1

    .line 587
    goto :goto_12

    .line 588
    :cond_1a
    move/from16 v16, v1

    .line 589
    .line 590
    move v15, v5

    .line 591
    move-object/from16 v23, v6

    .line 592
    .line 593
    move-object/from16 v1, v23

    .line 594
    .line 595
    :goto_12
    new-instance v3, Landroid/content/Intent;

    .line 596
    .line 597
    invoke-virtual {v0}, Lu/sage/a;->p()Ljava/lang/Class;

    .line 598
    .line 599
    .line 600
    move-result-object v4

    .line 601
    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 602
    .line 603
    .line 604
    const-string v4, "u.sage.ACTION_REFRESH"

    .line 605
    .line 606
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 607
    .line 608
    .line 609
    invoke-static {}, Lc75;->D()I

    .line 610
    .line 611
    .line 612
    move-result v4

    .line 613
    const/high16 v5, 0xc000000

    .line 614
    .line 615
    invoke-static {v0, v4, v3, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 616
    .line 617
    .line 618
    move-result-object v3

    .line 619
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 620
    .line 621
    .line 622
    new-instance v4, Landroid/content/Intent;

    .line 623
    .line 624
    const-class v6, Lu/sage/MainActivity;

    .line 625
    .line 626
    invoke-direct {v4, v0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 627
    .line 628
    .line 629
    const/high16 v6, 0x24000000

    .line 630
    .line 631
    invoke-virtual {v4, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 632
    .line 633
    .line 634
    const-string v6, "extra_nav_route"

    .line 635
    .line 636
    invoke-virtual {v0}, Lu/sage/a;->k()Ljava/lang/String;

    .line 637
    .line 638
    .line 639
    move-result-object v7

    .line 640
    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 641
    .line 642
    .line 643
    const-string v6, "extra_source"

    .line 644
    .line 645
    invoke-virtual {v4, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 646
    .line 647
    .line 648
    invoke-static {}, Lc75;->D()I

    .line 649
    .line 650
    .line 651
    move-result v2

    .line 652
    invoke-static {v0, v2, v4, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 653
    .line 654
    .line 655
    move-result-object v2

    .line 656
    new-instance v4, Landroid/content/Intent;

    .line 657
    .line 658
    invoke-virtual {v0}, Lu/sage/a;->p()Ljava/lang/Class;

    .line 659
    .line 660
    .line 661
    move-result-object v6

    .line 662
    invoke-direct {v4, v0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 663
    .line 664
    .line 665
    const-string v6, "u.sage.ACTION_NOTIFICATION_DISMISSED"

    .line 666
    .line 667
    invoke-virtual {v4, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 668
    .line 669
    .line 670
    invoke-static {}, Lc75;->D()I

    .line 671
    .line 672
    .line 673
    move-result v6

    .line 674
    invoke-static {v0, v6, v4, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 675
    .line 676
    .line 677
    move-result-object v4

    .line 678
    new-instance v5, Len2;

    .line 679
    .line 680
    invoke-virtual {v0}, Lu/sage/a;->h()Ljava/lang/String;

    .line 681
    .line 682
    .line 683
    move-result-object v6

    .line 684
    invoke-direct {v5, v0, v6}, Len2;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 685
    .line 686
    .line 687
    invoke-virtual {v0}, Lu/sage/a;->l()I

    .line 688
    .line 689
    .line 690
    move-result v6

    .line 691
    iget-object v7, v5, Len2;->q:Landroid/app/Notification;

    .line 692
    .line 693
    iput v6, v7, Landroid/app/Notification;->icon:I

    .line 694
    .line 695
    invoke-virtual {v0}, Lu/sage/a;->n()Ljava/lang/String;

    .line 696
    .line 697
    .line 698
    move-result-object v6

    .line 699
    invoke-static {v6}, Len2;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 700
    .line 701
    .line 702
    move-result-object v6

    .line 703
    iput-object v6, v5, Len2;->e:Ljava/lang/CharSequence;

    .line 704
    .line 705
    invoke-static/range {v23 .. v23}, Len2;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 706
    .line 707
    .line 708
    move-result-object v6

    .line 709
    iput-object v6, v5, Len2;->f:Ljava/lang/CharSequence;

    .line 710
    .line 711
    const/4 v6, 0x0

    .line 712
    iput v6, v5, Len2;->h:I

    .line 713
    .line 714
    iput-object v2, v5, Len2;->g:Landroid/app/PendingIntent;

    .line 715
    .line 716
    const/4 v2, 0x2

    .line 717
    invoke-virtual {v5, v2, v6}, Len2;->c(IZ)V

    .line 718
    .line 719
    .line 720
    const/16 v2, 0x8

    .line 721
    .line 722
    const/4 v6, 0x1

    .line 723
    invoke-virtual {v5, v2, v6}, Len2;->c(IZ)V

    .line 724
    .line 725
    .line 726
    iput-boolean v6, v5, Len2;->r:Z

    .line 727
    .line 728
    if-eqz v15, :cond_1c

    .line 729
    .line 730
    :try_start_1
    sget-object v2, Lzi3;->a:Lwr3;

    .line 731
    .line 732
    invoke-virtual {v0}, Lu/sage/a;->q()Ly84;

    .line 733
    .line 734
    .line 735
    move-result-object v2

    .line 736
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 737
    .line 738
    .line 739
    sget-object v6, Lzi3;->a:Lwr3;

    .line 740
    .line 741
    invoke-virtual {v6}, Lwr3;->getValue()Ljava/lang/Object;

    .line 742
    .line 743
    .line 744
    move-result-object v6

    .line 745
    check-cast v6, Ljava/util/List;

    .line 746
    .line 747
    invoke-interface {v6, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 748
    .line 749
    .line 750
    move-result v6

    .line 751
    if-ltz v6, :cond_1b

    .line 752
    .line 753
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 754
    .line 755
    .line 756
    move-result-object v2

    .line 757
    goto :goto_13

    .line 758
    :cond_1b
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 759
    .line 760
    .line 761
    move-result v2

    .line 762
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 763
    .line 764
    .line 765
    move-result-object v2

    .line 766
    :goto_13
    sget-object v6, Lez3;->a:Lra3;

    .line 767
    .line 768
    invoke-virtual {v0}, Lu/sage/a;->j()Ljava/lang/String;

    .line 769
    .line 770
    .line 771
    const/4 v8, 0x0

    .line 772
    new-array v9, v8, [Ljava/lang/Object;

    .line 773
    .line 774
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 775
    .line 776
    .line 777
    invoke-static {v9}, Lra3;->c([Ljava/lang/Object;)V

    .line 778
    .line 779
    .line 780
    iput-object v2, v5, Len2;->l:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 781
    .line 782
    goto :goto_14

    .line 783
    :catch_1
    sget-object v2, Lez3;->a:Lra3;

    .line 784
    .line 785
    invoke-virtual {v0}, Lu/sage/a;->j()Ljava/lang/String;

    .line 786
    .line 787
    .line 788
    move-result-object v6

    .line 789
    const-string v8, ": Failed to set sort key (likely too early initialization)."

    .line 790
    .line 791
    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 792
    .line 793
    .line 794
    const/4 v6, 0x0

    .line 795
    new-array v8, v6, [Ljava/lang/Object;

    .line 796
    .line 797
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 798
    .line 799
    .line 800
    invoke-static {v8}, Lra3;->n([Ljava/lang/Object;)V

    .line 801
    .line 802
    .line 803
    :cond_1c
    :goto_14
    iput-object v4, v7, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 804
    .line 805
    if-eqz v16, :cond_1d

    .line 806
    .line 807
    const/4 v6, 0x1

    .line 808
    iput-boolean v6, v5, Len2;->k:Z

    .line 809
    .line 810
    goto :goto_15

    .line 811
    :cond_1d
    new-instance v2, Lxh1;

    .line 812
    .line 813
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 814
    .line 815
    .line 816
    invoke-static {v1}, Len2;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 817
    .line 818
    .line 819
    move-result-object v1

    .line 820
    iput-object v1, v2, Lxh1;->o:Ljava/lang/Object;

    .line 821
    .line 822
    invoke-virtual {v5, v2}, Len2;->d(Lxh1;)V

    .line 823
    .line 824
    .line 825
    const/4 v6, 0x0

    .line 826
    iput-boolean v6, v5, Len2;->k:Z

    .line 827
    .line 828
    iget-boolean v1, v0, Lu/sage/a;->z:Z

    .line 829
    .line 830
    iget-object v2, v5, Len2;->b:Ljava/util/ArrayList;

    .line 831
    .line 832
    if-nez v1, :cond_1e

    .line 833
    .line 834
    const v1, 0x7f100373

    .line 835
    .line 836
    .line 837
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 838
    .line 839
    .line 840
    move-result-object v1

    .line 841
    new-instance v6, Ldn2;

    .line 842
    .line 843
    const v7, 0x7f08018e

    .line 844
    .line 845
    .line 846
    invoke-direct {v6, v7, v1, v3}, Ldn2;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 847
    .line 848
    .line 849
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 850
    .line 851
    .line 852
    :cond_1e
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 853
    .line 854
    const/16 v3, 0x21

    .line 855
    .line 856
    if-ge v1, v3, :cond_1f

    .line 857
    .line 858
    const v1, 0x7f10001f

    .line 859
    .line 860
    .line 861
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 862
    .line 863
    .line 864
    move-result-object v0

    .line 865
    new-instance v1, Ldn2;

    .line 866
    .line 867
    const v3, 0x1080038

    .line 868
    .line 869
    .line 870
    invoke-direct {v1, v3, v0, v4}, Ldn2;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 871
    .line 872
    .line 873
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 874
    .line 875
    .line 876
    :cond_1f
    :goto_15
    invoke-virtual {v5}, Len2;->a()Landroid/app/Notification;

    .line 877
    .line 878
    .line 879
    move-result-object v0

    .line 880
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 881
    .line 882
    .line 883
    return-object v0
.end method

.method public d()V
    .locals 10

    .line 1
    iget-object v0, p0, Lu/sage/a;->p:Landroid/webkit/WebView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lk30;->h(Landroid/webkit/WebView;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    new-instance v9, Lsc4;

    .line 9
    .line 10
    new-instance v0, Lo;

    .line 11
    .line 12
    const/4 v7, 0x0

    .line 13
    const/4 v8, 0x4

    .line 14
    const/4 v1, 0x1

    .line 15
    const-class v3, Lu/sage/a;

    .line 16
    .line 17
    const-string v4, "handleUsageResult"

    .line 18
    .line 19
    const-string v5, "handleUsageResult(Ljava/lang/String;)V"

    .line 20
    .line 21
    const/4 v6, 0x0

    .line 22
    move-object v2, p0

    .line 23
    invoke-direct/range {v0 .. v8}, Lo;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V

    .line 24
    .line 25
    .line 26
    invoke-direct {v9, p0, v1, v0}, Lsc4;-><init>(Landroid/content/Context;ILpe1;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lu/sage/a;->p:Landroid/webkit/WebView;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {v9}, Lsc4;->a()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v9, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-virtual {p0}, Lu/sage/a;->f()Ln1;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {p0}, Lu/sage/a;->s()Lps;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p0}, Lu/sage/a;->j()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {p0}, Lu/sage/a;->g()Ln8;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    invoke-virtual {p0}, Lu/sage/a;->q()Ly84;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    new-instance v9, Lwt;

    .line 61
    .line 62
    const/4 v3, 0x0

    .line 63
    invoke-direct {v9, p0, v3}, Lwt;-><init>(Lu/sage/a;Ldh0;)V

    .line 64
    .line 65
    .line 66
    iget-object v3, p0, Lu/sage/a;->q:Lbh0;

    .line 67
    .line 68
    sget-object v7, Loj3;->b:Loj3;

    .line 69
    .line 70
    const/4 v8, 0x0

    .line 71
    move-object v2, v0

    .line 72
    move-object v0, p0

    .line 73
    invoke-static/range {v0 .. v9}, Lxc4;->c(Landroid/content/Context;Ln1;Lps;Lqi0;Ljava/lang/String;Ln8;Ly84;Lv43;ZLpe1;)Lsc4;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    iget-object v0, p0, Lu/sage/a;->p:Landroid/webkit/WebView;

    .line 78
    .line 79
    if-eqz v0, :cond_2

    .line 80
    .line 81
    invoke-virtual {v1}, Lsc4;->a()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {v0, v1, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    :cond_2
    new-instance v9, Lsc4;

    .line 89
    .line 90
    new-instance v0, Lo;

    .line 91
    .line 92
    const/4 v7, 0x0

    .line 93
    const/4 v8, 0x1

    .line 94
    const/4 v1, 0x1

    .line 95
    const-class v3, Lu/sage/a;

    .line 96
    .line 97
    const-string v4, "handleRecreateWebView"

    .line 98
    .line 99
    const-string v5, "handleRecreateWebView(Ljava/lang/String;)V"

    .line 100
    .line 101
    const/4 v6, 0x0

    .line 102
    move-object v2, p0

    .line 103
    invoke-direct/range {v0 .. v8}, Lo;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V

    .line 104
    .line 105
    .line 106
    const/16 v1, 0xa

    .line 107
    .line 108
    invoke-direct {v9, p0, v1, v0}, Lsc4;-><init>(Landroid/content/Context;ILpe1;)V

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Lu/sage/a;->p:Landroid/webkit/WebView;

    .line 112
    .line 113
    if-eqz v0, :cond_3

    .line 114
    .line 115
    invoke-virtual {v9}, Lsc4;->a()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {v0, v9, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    :cond_3
    new-instance v9, Lsc4;

    .line 123
    .line 124
    new-instance v0, Lo;

    .line 125
    .line 126
    const/4 v7, 0x0

    .line 127
    const/4 v8, 0x2

    .line 128
    const/4 v1, 0x1

    .line 129
    const-class v3, Lu/sage/a;

    .line 130
    .line 131
    const-string v4, "handleInitiateThrottleCheck"

    .line 132
    .line 133
    const-string v5, "handleInitiateThrottleCheck(Ljava/lang/String;)V"

    .line 134
    .line 135
    const/4 v6, 0x0

    .line 136
    move-object v2, p0

    .line 137
    invoke-direct/range {v0 .. v8}, Lo;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V

    .line 138
    .line 139
    .line 140
    const/16 v1, 0xb

    .line 141
    .line 142
    invoke-direct {v9, p0, v1, v0}, Lsc4;-><init>(Landroid/content/Context;ILpe1;)V

    .line 143
    .line 144
    .line 145
    iget-object v0, p0, Lu/sage/a;->p:Landroid/webkit/WebView;

    .line 146
    .line 147
    if-eqz v0, :cond_4

    .line 148
    .line 149
    invoke-virtual {v9}, Lsc4;->a()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-virtual {v0, v9, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    :cond_4
    new-instance v9, Lsc4;

    .line 157
    .line 158
    new-instance v0, Lo;

    .line 159
    .line 160
    const/4 v7, 0x0

    .line 161
    const/4 v8, 0x3

    .line 162
    const/4 v1, 0x1

    .line 163
    const-class v3, Lu/sage/a;

    .line 164
    .line 165
    const-string v4, "handleReportTimerTest"

    .line 166
    .line 167
    const-string v5, "handleReportTimerTest(Ljava/lang/String;)V"

    .line 168
    .line 169
    const/4 v6, 0x0

    .line 170
    move-object v2, p0

    .line 171
    invoke-direct/range {v0 .. v8}, Lo;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V

    .line 172
    .line 173
    .line 174
    const/16 v1, 0xc

    .line 175
    .line 176
    invoke-direct {v9, p0, v1, v0}, Lsc4;-><init>(Landroid/content/Context;ILpe1;)V

    .line 177
    .line 178
    .line 179
    iget-object v0, p0, Lu/sage/a;->p:Landroid/webkit/WebView;

    .line 180
    .line 181
    if-eqz v0, :cond_5

    .line 182
    .line 183
    invoke-virtual {v9}, Lsc4;->a()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    invoke-virtual {v0, v9, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    :cond_5
    iget-object v0, p0, Lu/sage/a;->p:Landroid/webkit/WebView;

    .line 191
    .line 192
    if-eqz v0, :cond_6

    .line 193
    .line 194
    invoke-virtual {p0}, Lu/sage/a;->j()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    new-instance v3, Lbd4;

    .line 199
    .line 200
    invoke-direct {v3, v1}, Lbd4;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 204
    .line 205
    .line 206
    :cond_6
    iget-object v0, p0, Lu/sage/a;->p:Landroid/webkit/WebView;

    .line 207
    .line 208
    if-eqz v0, :cond_7

    .line 209
    .line 210
    new-instance v1, Lvt;

    .line 211
    .line 212
    invoke-direct {v1, p0}, Lvt;-><init>(Lu/sage/a;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 216
    .line 217
    .line 218
    :cond_7
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lu/sage/a;->B:I

    .line 5
    .line 6
    sget-object v1, Lez3;->a:Lra3;

    .line 7
    .line 8
    invoke-virtual {p0}, Lu/sage/a;->j()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    new-array v3, v2, [Ljava/lang/Object;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {v3}, Lra3;->c([Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    new-instance v1, Lqt;

    .line 21
    .line 22
    invoke-direct {v1, v0, v2, p0, p1}, Lqt;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iget-object p0, p0, Lu/sage/a;->n:Landroid/os/Handler;

    .line 26
    .line 27
    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public abstract f()Ln1;
.end method

.method public abstract g()Ln8;
.end method

.method public abstract h()Ljava/lang/String;
.end method

.method public abstract i()Ljava/lang/String;
.end method

.method public final j()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lu/sage/a;->o:Lnv3;

    .line 2
    .line 3
    invoke-virtual {p0}, Lnv3;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    check-cast p0, Ljava/lang/String;

    .line 11
    .line 12
    return-object p0
.end method

.method public abstract k()Ljava/lang/String;
.end method

.method public abstract l()I
.end method

.method public abstract m()I
.end method

.method public abstract n()Ljava/lang/String;
.end method

.method public abstract o()Lpt;
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public onCreate()V
    .locals 6

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lez3;->a:Lra3;

    .line 5
    .line 6
    invoke-virtual {p0}, Lu/sage/a;->j()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string v2, ": onCreate: Service Created."

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    new-array v2, v1, [Ljava/lang/Object;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-static {v2}, Lra3;->c([Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 25
    .line 26
    const/16 v2, 0x1a

    .line 27
    .line 28
    if-lt v0, v2, :cond_0

    .line 29
    .line 30
    const-string v0, "notification"

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    check-cast v0, Landroid/app/NotificationManager;

    .line 40
    .line 41
    invoke-static {}, Ly2;->k()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lu/sage/a;->h()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {p0}, Lu/sage/a;->i()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-static {v2, v3}, Ly2;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-static {v2}, Ly2;->m(Landroid/app/NotificationChannel;)V

    .line 57
    .line 58
    .line 59
    invoke-static {v0, v2}, Ld51;->u(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 60
    .line 61
    .line 62
    :cond_0
    invoke-virtual {p0}, Lu/sage/a;->j()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    const-string v2, ": [RemoteConfig] setupScriptObserver: Subscribing to preparedScriptFlow."

    .line 67
    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    new-array v0, v1, [Ljava/lang/Object;

    .line 72
    .line 73
    invoke-static {v0}, Lra3;->h([Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    new-instance v0, Lyt;

    .line 77
    .line 78
    const/16 v2, 0x9

    .line 79
    .line 80
    const/4 v3, 0x0

    .line 81
    invoke-direct {v0, p0, v3, v2}, Lyt;-><init>(Lu/sage/a;Ldh0;I)V

    .line 82
    .line 83
    .line 84
    iget-object v2, p0, Lu/sage/a;->q:Lbh0;

    .line 85
    .line 86
    const/4 v4, 0x3

    .line 87
    invoke-static {v2, v3, v3, v0, v4}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;

    .line 88
    .line 89
    .line 90
    new-instance v0, Lyt;

    .line 91
    .line 92
    const/4 v5, 0x5

    .line 93
    invoke-direct {v0, p0, v3, v5}, Lyt;-><init>(Lu/sage/a;Ldh0;I)V

    .line 94
    .line 95
    .line 96
    invoke-static {v2, v3, v3, v0, v4}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;

    .line 97
    .line 98
    .line 99
    new-instance v0, Lyt;

    .line 100
    .line 101
    const/4 v5, 0x6

    .line 102
    invoke-direct {v0, p0, v3, v5}, Lyt;-><init>(Lu/sage/a;Ldh0;I)V

    .line 103
    .line 104
    .line 105
    invoke-static {v2, v3, v3, v0, v4}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;

    .line 106
    .line 107
    .line 108
    new-instance v0, Lyt;

    .line 109
    .line 110
    const/4 v5, 0x7

    .line 111
    invoke-direct {v0, p0, v3, v5}, Lyt;-><init>(Lu/sage/a;Ldh0;I)V

    .line 112
    .line 113
    .line 114
    invoke-static {v2, v3, v3, v0, v4}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;

    .line 115
    .line 116
    .line 117
    new-instance v0, Lyt;

    .line 118
    .line 119
    const/16 v5, 0x8

    .line 120
    .line 121
    invoke-direct {v0, p0, v3, v5}, Lyt;-><init>(Lu/sage/a;Ldh0;I)V

    .line 122
    .line 123
    .line 124
    invoke-static {v2, v3, v3, v0, v4}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;

    .line 125
    .line 126
    .line 127
    new-instance v0, Lrt;

    .line 128
    .line 129
    invoke-direct {v0, p0, v1}, Lrt;-><init>(Lu/sage/a;I)V

    .line 130
    .line 131
    .line 132
    iget-object v1, p0, Lu/sage/a;->n:Landroid/os/Handler;

    .line 133
    .line 134
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 135
    .line 136
    .line 137
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 138
    .line 139
    iget-object p0, p0, Lu/sage/a;->x:Lwr3;

    .line 140
    .line 141
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0, v3, v0}, Lwr3;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    return-void
.end method

.method public onDestroy()V
    .locals 9

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 2
    .line 3
    .line 4
    const-string v0, "notification"

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    check-cast v0, Landroid/app/NotificationManager;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    :try_start_0
    invoke-virtual {v0}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    .line 17
    .line 18
    .line 19
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    goto :goto_0

    .line 21
    :catch_0
    new-array v2, v1, [Landroid/service/notification/StatusBarNotification;

    .line 22
    .line 23
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    array-length v3, v2

    .line 27
    move v4, v1

    .line 28
    :goto_1
    const/4 v5, 0x0

    .line 29
    if-ge v4, v3, :cond_1

    .line 30
    .line 31
    aget-object v6, v2, v4

    .line 32
    .line 33
    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getId()I

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    invoke-virtual {p0}, Lu/sage/a;->m()I

    .line 38
    .line 39
    .line 40
    move-result v8

    .line 41
    if-ne v7, v8, :cond_0

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    move-object v6, v5

    .line 48
    :goto_2
    sget-object v2, Lez3;->a:Lra3;

    .line 49
    .line 50
    invoke-virtual {p0}, Lu/sage/a;->j()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    if-eqz v6, :cond_2

    .line 54
    .line 55
    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    :cond_2
    if-eqz v6, :cond_3

    .line 60
    .line 61
    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    :cond_3
    new-array v3, v1, [Ljava/lang/Object;

    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    invoke-static {v3}, Lra3;->c([Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Lu/sage/a;->j()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    new-array v2, v1, [Ljava/lang/Object;

    .line 77
    .line 78
    invoke-static {v2}, Lra3;->c([Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    const/4 v2, 0x1

    .line 82
    invoke-virtual {p0, v2}, Landroid/app/Service;->stopForeground(I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Lu/sage/a;->m()I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Lu/sage/a;->j()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    const-string v3, ": onDestroy called. Stopping periodic checks and destroying WebView."

    .line 97
    .line 98
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    new-array v2, v1, [Ljava/lang/Object;

    .line 102
    .line 103
    invoke-static {v2}, Lra3;->c([Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    iget-object v2, p0, Lu/sage/a;->q:Lbh0;

    .line 107
    .line 108
    invoke-static {v2, v5}, Ldm0;->o(Lqi0;Lqd2;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Lu/sage/a;->o()Lpt;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-virtual {v2, v1}, Lpt;->s(Z)V

    .line 116
    .line 117
    .line 118
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 119
    .line 120
    iget-object v2, p0, Lu/sage/a;->x:Lwr3;

    .line 121
    .line 122
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2, v5, v1}, Lwr3;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    new-instance v1, Lh7;

    .line 129
    .line 130
    const/4 v2, 0x3

    .line 131
    invoke-direct {v1, v2, p0, v0}, Lh7;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    iget-object p0, p0, Lu/sage/a;->n:Landroid/os/Handler;

    .line 135
    .line 136
    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 137
    .line 138
    .line 139
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 8

    .line 1
    sget-object p2, Lez3;->a:Lra3;

    .line 2
    .line 3
    invoke-virtual {p0}, Lu/sage/a;->j()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    :cond_0
    const/4 p3, 0x0

    .line 12
    new-array v0, p3, [Ljava/lang/Object;

    .line 13
    .line 14
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lra3;->c([Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    const-string p2, "notification"

    .line 21
    .line 22
    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    check-cast v0, Landroid/app/NotificationManager;

    .line 30
    .line 31
    :try_start_0
    invoke-virtual {v0}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    .line 32
    .line 33
    .line 34
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    goto :goto_0

    .line 36
    :catch_0
    new-array v0, p3, [Landroid/service/notification/StatusBarNotification;

    .line 37
    .line 38
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    array-length v1, v0

    .line 42
    move v2, p3

    .line 43
    :goto_1
    const/4 v3, 0x0

    .line 44
    if-ge v2, v1, :cond_2

    .line 45
    .line 46
    aget-object v4, v0, v2

    .line 47
    .line 48
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getId()I

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    invoke-virtual {p0}, Lu/sage/a;->m()I

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    if-ne v5, v6, :cond_1

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    move-object v4, v3

    .line 63
    :goto_2
    sget-object v0, Lez3;->a:Lra3;

    .line 64
    .line 65
    invoke-virtual {p0}, Lu/sage/a;->j()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    if-eqz v4, :cond_3

    .line 69
    .line 70
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    :cond_3
    if-eqz v4, :cond_4

    .line 75
    .line 76
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    :cond_4
    new-array v1, p3, [Ljava/lang/Object;

    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    invoke-static {v1}, Lra3;->c([Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    if-eqz p1, :cond_5

    .line 89
    .line 90
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    goto :goto_3

    .line 95
    :cond_5
    move-object v0, v3

    .line 96
    :goto_3
    const-string v1, "u.sage.ACTION_NOTIFICATION_DISMISSED"

    .line 97
    .line 98
    invoke-static {v0, v1}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    const/4 v2, 0x2

    .line 103
    if-nez v0, :cond_8

    .line 104
    .line 105
    :try_start_1
    invoke-virtual {p0}, Lu/sage/a;->o()Lpt;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {v0}, Lpt;->k()Lur3;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-interface {v0}, Lur3;->getValue()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    check-cast v0, Ld84;

    .line 118
    .line 119
    invoke-virtual {p0, v0}, Lu/sage/a;->c(Ld84;)Landroid/app/Notification;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {p0}, Lu/sage/a;->j()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    new-array v4, p3, [Ljava/lang/Object;

    .line 127
    .line 128
    invoke-static {v4}, Lra3;->c([Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 132
    .line 133
    const/16 v5, 0x22

    .line 134
    .line 135
    if-lt v4, v5, :cond_6

    .line 136
    .line 137
    invoke-virtual {p0}, Lu/sage/a;->m()I

    .line 138
    .line 139
    .line 140
    move-result v4

    .line 141
    invoke-static {p0, v4, v0}, Lx8;->r(Lu/sage/a;ILandroid/app/Notification;)V

    .line 142
    .line 143
    .line 144
    goto :goto_4

    .line 145
    :catch_1
    move-exception v0

    .line 146
    goto :goto_5

    .line 147
    :cond_6
    invoke-virtual {p0}, Lu/sage/a;->m()I

    .line 148
    .line 149
    .line 150
    move-result v4

    .line 151
    invoke-virtual {p0, v4, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 152
    .line 153
    .line 154
    :goto_4
    invoke-virtual {p0}, Lu/sage/a;->j()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    new-array v0, p3, [Ljava/lang/Object;

    .line 158
    .line 159
    invoke-static {v0}, Lra3;->c([Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 160
    .line 161
    .line 162
    goto :goto_6

    .line 163
    :goto_5
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 164
    .line 165
    const/16 v5, 0x1f

    .line 166
    .line 167
    if-lt v4, v5, :cond_7

    .line 168
    .line 169
    invoke-static {v0}, Lz9;->z(Ljava/lang/Exception;)Z

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    if-eqz v0, :cond_7

    .line 174
    .line 175
    sget-object p1, Lez3;->a:Lra3;

    .line 176
    .line 177
    invoke-virtual {p0}, Lu/sage/a;->j()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p2

    .line 181
    const-string v0, ": Service start not allowed by system (Background limitation). Stopping service."

    .line 182
    .line 183
    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    new-array p2, p3, [Ljava/lang/Object;

    .line 187
    .line 188
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 189
    .line 190
    .line 191
    invoke-static {p2}, Lra3;->g([Ljava/lang/Object;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 195
    .line 196
    .line 197
    return v2

    .line 198
    :cond_7
    sget-object v0, Lez3;->a:Lra3;

    .line 199
    .line 200
    invoke-virtual {p0}, Lu/sage/a;->j()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v4

    .line 204
    const-string v5, ": Failed to start foreground service."

    .line 205
    .line 206
    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    new-array v4, p3, [Ljava/lang/Object;

    .line 210
    .line 211
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 212
    .line 213
    .line 214
    invoke-static {v4}, Lra3;->g([Ljava/lang/Object;)V

    .line 215
    .line 216
    .line 217
    goto :goto_6

    .line 218
    :cond_8
    invoke-virtual {p0}, Lu/sage/a;->j()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    new-array v0, p3, [Ljava/lang/Object;

    .line 222
    .line 223
    invoke-static {v0}, Lra3;->c([Ljava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    :goto_6
    if-eqz p1, :cond_9

    .line 227
    .line 228
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    goto :goto_7

    .line 233
    :cond_9
    move-object v0, v3

    .line 234
    :goto_7
    const/4 v4, 0x3

    .line 235
    iget-object v5, p0, Lu/sage/a;->q:Lbh0;

    .line 236
    .line 237
    const/4 v6, 0x1

    .line 238
    if-eqz v0, :cond_21

    .line 239
    .line 240
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 241
    .line 242
    .line 243
    move-result v7

    .line 244
    sparse-switch v7, :sswitch_data_0

    .line 245
    .line 246
    .line 247
    goto/16 :goto_c

    .line 248
    .line 249
    :sswitch_0
    const-string p1, "u.sage.ACTION_SIMULATE_FREEZE"

    .line 250
    .line 251
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result p1

    .line 255
    if-nez p1, :cond_a

    .line 256
    .line 257
    goto/16 :goto_c

    .line 258
    .line 259
    :cond_a
    sget-object p1, Lez3;->a:Lra3;

    .line 260
    .line 261
    invoke-virtual {p0}, Lu/sage/a;->j()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object p2

    .line 265
    const-string v0, ": Simulating WebView freeze - calling onPause() and pauseTimers()..."

    .line 266
    .line 267
    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    new-array p2, p3, [Ljava/lang/Object;

    .line 271
    .line 272
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 273
    .line 274
    .line 275
    invoke-static {p2}, Lra3;->c([Ljava/lang/Object;)V

    .line 276
    .line 277
    .line 278
    iget-object p1, p0, Lu/sage/a;->p:Landroid/webkit/WebView;

    .line 279
    .line 280
    if-eqz p1, :cond_b

    .line 281
    .line 282
    invoke-virtual {p1}, Landroid/webkit/WebView;->onPause()V

    .line 283
    .line 284
    .line 285
    :cond_b
    iget-object p0, p0, Lu/sage/a;->p:Landroid/webkit/WebView;

    .line 286
    .line 287
    if-eqz p0, :cond_22

    .line 288
    .line 289
    invoke-virtual {p0}, Landroid/webkit/WebView;->pauseTimers()V

    .line 290
    .line 291
    .line 292
    goto/16 :goto_d

    .line 293
    .line 294
    :sswitch_1
    const-string p1, "u.sage.ACTION_RECREATE_WEBVIEW"

    .line 295
    .line 296
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    move-result p1

    .line 300
    if-nez p1, :cond_c

    .line 301
    .line 302
    goto/16 :goto_c

    .line 303
    .line 304
    :cond_c
    sget-object p1, Lez3;->a:Lra3;

    .line 305
    .line 306
    invoke-virtual {p0}, Lu/sage/a;->j()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object p2

    .line 310
    const-string v0, ": Received ACTION_RECREATE_WEBVIEW. Force recreating..."

    .line 311
    .line 312
    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    new-array p2, p3, [Ljava/lang/Object;

    .line 316
    .line 317
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 318
    .line 319
    .line 320
    invoke-static {p2}, Lra3;->m([Ljava/lang/Object;)V

    .line 321
    .line 322
    .line 323
    iget-object p1, p0, Lu/sage/a;->p:Landroid/webkit/WebView;

    .line 324
    .line 325
    if-eqz p1, :cond_22

    .line 326
    .line 327
    const-string p1, "action_recreate"

    .line 328
    .line 329
    invoke-virtual {p0, p1}, Lu/sage/a;->w(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    goto/16 :goto_d

    .line 333
    .line 334
    :sswitch_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 335
    .line 336
    .line 337
    move-result p1

    .line 338
    if-nez p1, :cond_d

    .line 339
    .line 340
    goto/16 :goto_c

    .line 341
    .line 342
    :cond_d
    sget-object p1, Lez3;->a:Lra3;

    .line 343
    .line 344
    invoke-virtual {p0}, Lu/sage/a;->j()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    new-array p2, p3, [Ljava/lang/Object;

    .line 348
    .line 349
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 350
    .line 351
    .line 352
    invoke-static {p2}, Lra3;->c([Ljava/lang/Object;)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {p0}, Lu/sage/a;->g()Ln8;

    .line 356
    .line 357
    .line 358
    move-result-object p1

    .line 359
    invoke-virtual {p0}, Lu/sage/a;->q()Ly84;

    .line 360
    .line 361
    .line 362
    move-result-object p2

    .line 363
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 364
    .line 365
    .line 366
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    new-array p3, p3, [Ljava/lang/Object;

    .line 370
    .line 371
    invoke-static {p3}, Lra3;->c([Ljava/lang/Object;)V

    .line 372
    .line 373
    .line 374
    new-instance p3, Landroid/os/Bundle;

    .line 375
    .line 376
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 377
    .line 378
    .line 379
    const-string v0, "service_type"

    .line 380
    .line 381
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object p2

    .line 385
    invoke-virtual {p3, v0, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    .line 387
    .line 388
    const-string p2, "notification_dismissed"

    .line 389
    .line 390
    invoke-virtual {p1, p2, p3}, Ln8;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {p1}, Ln8;->b()Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 394
    .line 395
    .line 396
    move-result-object p1

    .line 397
    invoke-virtual {p1, p2, p3}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 398
    .line 399
    .line 400
    new-instance p1, Lyt;

    .line 401
    .line 402
    invoke-direct {p1, p0, v3, v4}, Lyt;-><init>(Lu/sage/a;Ldh0;I)V

    .line 403
    .line 404
    .line 405
    invoke-static {v5, v3, v3, p1, v4}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;

    .line 406
    .line 407
    .line 408
    goto/16 :goto_d

    .line 409
    .line 410
    :sswitch_3
    const-string v1, "u.sage.ACTION_REFRESH"

    .line 411
    .line 412
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 413
    .line 414
    .line 415
    move-result v0

    .line 416
    if-nez v0, :cond_e

    .line 417
    .line 418
    goto/16 :goto_c

    .line 419
    .line 420
    :cond_e
    const-string v0, "extra_refresh_source"

    .line 421
    .line 422
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object p1

    .line 426
    sget-object v0, Lez3;->a:Lra3;

    .line 427
    .line 428
    invoke-virtual {p0}, Lu/sage/a;->j()Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    new-array v1, p3, [Ljava/lang/Object;

    .line 432
    .line 433
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 434
    .line 435
    .line 436
    invoke-static {v1}, Lra3;->c([Ljava/lang/Object;)V

    .line 437
    .line 438
    .line 439
    const-string v0, "button"

    .line 440
    .line 441
    invoke-static {p1, v0}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 442
    .line 443
    .line 444
    move-result v0

    .line 445
    sget-object v1, Lq43;->b:Lq43;

    .line 446
    .line 447
    if-eqz v0, :cond_f

    .line 448
    .line 449
    sget-object p1, Lo43;->b:Lo43;

    .line 450
    .line 451
    goto/16 :goto_8

    .line 452
    .line 453
    :cond_f
    invoke-static {p1, p2}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 454
    .line 455
    .line 456
    move-result p2

    .line 457
    if-eqz p2, :cond_10

    .line 458
    .line 459
    move-object p1, v1

    .line 460
    goto :goto_8

    .line 461
    :cond_10
    const-string p2, "auto"

    .line 462
    .line 463
    invoke-static {p1, p2}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 464
    .line 465
    .line 466
    move-result p2

    .line 467
    if-eqz p2, :cond_11

    .line 468
    .line 469
    sget-object p1, Ln43;->b:Ln43;

    .line 470
    .line 471
    goto :goto_8

    .line 472
    :cond_11
    const-string p2, "account_switch"

    .line 473
    .line 474
    invoke-static {p1, p2}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 475
    .line 476
    .line 477
    move-result p2

    .line 478
    if-eqz p2, :cond_12

    .line 479
    .line 480
    sget-object p1, Ll43;->b:Ll43;

    .line 481
    .line 482
    goto :goto_8

    .line 483
    :cond_12
    const-string p2, "service_start"

    .line 484
    .line 485
    invoke-static {p1, p2}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 486
    .line 487
    .line 488
    move-result p2

    .line 489
    if-eqz p2, :cond_13

    .line 490
    .line 491
    sget-object p1, Lt43;->b:Lt43;

    .line 492
    .line 493
    goto :goto_8

    .line 494
    :cond_13
    const-string p2, "app_foreground"

    .line 495
    .line 496
    invoke-static {p1, p2}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 497
    .line 498
    .line 499
    move-result p2

    .line 500
    if-eqz p2, :cond_14

    .line 501
    .line 502
    sget-object p1, Lm43;->b:Lm43;

    .line 503
    .line 504
    goto :goto_8

    .line 505
    :cond_14
    const-string p2, "pull_to_refresh"

    .line 506
    .line 507
    invoke-static {p1, p2}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 508
    .line 509
    .line 510
    move-result p2

    .line 511
    if-eqz p2, :cond_15

    .line 512
    .line 513
    sget-object p1, Lr43;->b:Lr43;

    .line 514
    .line 515
    goto :goto_8

    .line 516
    :cond_15
    const-string p2, "rolling_window"

    .line 517
    .line 518
    invoke-static {p1, p2}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 519
    .line 520
    .line 521
    move-result p2

    .line 522
    if-eqz p2, :cond_16

    .line 523
    .line 524
    sget-object p1, Ls43;->b:Ls43;

    .line 525
    .line 526
    goto :goto_8

    .line 527
    :cond_16
    const-string p2, "widget"

    .line 528
    .line 529
    invoke-static {p1, p2}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 530
    .line 531
    .line 532
    move-result p2

    .line 533
    if-eqz p2, :cond_17

    .line 534
    .line 535
    sget-object p1, Lu43;->b:Lu43;

    .line 536
    .line 537
    goto :goto_8

    .line 538
    :cond_17
    const-string p2, "login"

    .line 539
    .line 540
    invoke-static {p1, p2}, Lnt1;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 541
    .line 542
    .line 543
    move-result p1

    .line 544
    if-eqz p1, :cond_18

    .line 545
    .line 546
    sget-object p1, Lp43;->b:Lp43;

    .line 547
    .line 548
    goto :goto_8

    .line 549
    :cond_18
    move-object p1, v3

    .line 550
    :goto_8
    if-nez p1, :cond_19

    .line 551
    .line 552
    goto :goto_9

    .line 553
    :cond_19
    move-object v1, p1

    .line 554
    :goto_9
    invoke-virtual {p0}, Lu/sage/a;->j()Ljava/lang/String;

    .line 555
    .line 556
    .line 557
    new-array p1, p3, [Ljava/lang/Object;

    .line 558
    .line 559
    invoke-static {p1}, Lra3;->c([Ljava/lang/Object;)V

    .line 560
    .line 561
    .line 562
    const-string p1, "connectivity"

    .line 563
    .line 564
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 565
    .line 566
    .line 567
    move-result-object p1

    .line 568
    instance-of p2, p1, Landroid/net/ConnectivityManager;

    .line 569
    .line 570
    if-eqz p2, :cond_1a

    .line 571
    .line 572
    check-cast p1, Landroid/net/ConnectivityManager;

    .line 573
    .line 574
    goto :goto_a

    .line 575
    :cond_1a
    move-object p1, v3

    .line 576
    :goto_a
    if-nez p1, :cond_1b

    .line 577
    .line 578
    goto :goto_b

    .line 579
    :cond_1b
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    .line 580
    .line 581
    .line 582
    move-result-object p2

    .line 583
    if-nez p2, :cond_1c

    .line 584
    .line 585
    goto :goto_b

    .line 586
    :cond_1c
    invoke-virtual {p1, p2}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    .line 587
    .line 588
    .line 589
    move-result-object p1

    .line 590
    if-nez p1, :cond_1d

    .line 591
    .line 592
    goto :goto_b

    .line 593
    :cond_1d
    const/16 p2, 0xc

    .line 594
    .line 595
    invoke-virtual {p1, p2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 596
    .line 597
    .line 598
    move-result p2

    .line 599
    if-eqz p2, :cond_1f

    .line 600
    .line 601
    const/16 p2, 0x10

    .line 602
    .line 603
    invoke-virtual {p1, p2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 604
    .line 605
    .line 606
    move-result p1

    .line 607
    if-eqz p1, :cond_1f

    .line 608
    .line 609
    invoke-virtual {p0}, Lu/sage/a;->o()Lpt;

    .line 610
    .line 611
    .line 612
    move-result-object p1

    .line 613
    invoke-virtual {p1}, Lpt;->g()Z

    .line 614
    .line 615
    .line 616
    move-result p1

    .line 617
    if-eqz p1, :cond_1e

    .line 618
    .line 619
    invoke-virtual {p0}, Lu/sage/a;->j()Ljava/lang/String;

    .line 620
    .line 621
    .line 622
    new-array p0, p3, [Ljava/lang/Object;

    .line 623
    .line 624
    invoke-static {p0}, Lra3;->c([Ljava/lang/Object;)V

    .line 625
    .line 626
    .line 627
    goto :goto_d

    .line 628
    :cond_1e
    sget-object p1, Lzu0;->a:Lzp0;

    .line 629
    .line 630
    sget-object p1, Ln92;->a:Lxi1;

    .line 631
    .line 632
    new-instance p2, Lp;

    .line 633
    .line 634
    const/4 p3, 0x5

    .line 635
    invoke-direct {p2, p0, v1, v3, p3}, Lp;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V

    .line 636
    .line 637
    .line 638
    invoke-static {v5, p1, v3, p2, v2}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;

    .line 639
    .line 640
    .line 641
    goto :goto_d

    .line 642
    :cond_1f
    :goto_b
    invoke-virtual {p0}, Lu/sage/a;->j()Ljava/lang/String;

    .line 643
    .line 644
    .line 645
    new-array p0, p3, [Ljava/lang/Object;

    .line 646
    .line 647
    invoke-static {p0}, Lra3;->c([Ljava/lang/Object;)V

    .line 648
    .line 649
    .line 650
    goto :goto_d

    .line 651
    :sswitch_4
    const-string p1, "u.sage.ACTION_SHOW_NOTIFICATION"

    .line 652
    .line 653
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 654
    .line 655
    .line 656
    move-result p1

    .line 657
    if-nez p1, :cond_20

    .line 658
    .line 659
    goto :goto_c

    .line 660
    :cond_20
    new-instance p1, Lyt;

    .line 661
    .line 662
    invoke-direct {p1, p0, v3, v6}, Lyt;-><init>(Lu/sage/a;Ldh0;I)V

    .line 663
    .line 664
    .line 665
    invoke-static {v5, v3, v3, p1, v4}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;

    .line 666
    .line 667
    .line 668
    goto :goto_d

    .line 669
    :cond_21
    :goto_c
    new-instance p1, Lyt;

    .line 670
    .line 671
    const/4 p2, 0x4

    .line 672
    invoke-direct {p1, p0, v3, p2}, Lyt;-><init>(Lu/sage/a;Ldh0;I)V

    .line 673
    .line 674
    .line 675
    invoke-static {v5, v3, v3, p1, v4}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;

    .line 676
    .line 677
    .line 678
    :cond_22
    :goto_d
    return v6

    .line 679
    :sswitch_data_0
    .sparse-switch
        -0x7a2fce93 -> :sswitch_4
        0x20cce53b -> :sswitch_3
        0x34d33fb5 -> :sswitch_2
        0x505d8609 -> :sswitch_1
        0x6b5e8f92 -> :sswitch_0
    .end sparse-switch
.end method

.method public abstract p()Ljava/lang/Class;
.end method

.method public abstract q()Ly84;
.end method

.method public abstract r()Ljava/lang/String;
.end method

.method public abstract s()Lps;
.end method

.method public abstract t()Ljava/lang/String;
.end method

.method public final u()V
    .locals 6

    .line 1
    iget v0, p0, Lu/sage/a;->B:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lu/sage/a;->B:I

    .line 6
    .line 7
    sget-object v0, Lez3;->a:Lra3;

    .line 8
    .line 9
    invoke-virtual {p0}, Lu/sage/a;->j()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    new-array v2, v1, [Ljava/lang/Object;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-static {v2}, Lra3;->c([Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Landroid/webkit/WebView;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lu/sage/a;->p:Landroid/webkit/WebView;

    .line 27
    .line 28
    invoke-virtual {p0}, Lu/sage/a;->d()V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lu/sage/a;->p:Landroid/webkit/WebView;

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    sget-object v2, Lu/sage/a;->F:Lwr3;

    .line 36
    .line 37
    invoke-virtual {v2}, Lwr3;->getValue()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Ljava/util/Map;

    .line 42
    .line 43
    invoke-virtual {p0}, Lu/sage/a;->r()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-eqz v5, :cond_0

    .line 55
    .line 56
    invoke-static {v4, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    new-instance v5, Ljava/util/LinkedHashMap;

    .line 65
    .line 66
    invoke-direct {v5, v3}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v5, v4, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-object v0, v5

    .line 73
    :goto_0
    const/4 v3, 0x0

    .line 74
    invoke-virtual {v2, v3, v0}, Lwr3;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    :cond_1
    invoke-virtual {p0}, Lu/sage/a;->j()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    new-array v0, v1, [Ljava/lang/Object;

    .line 81
    .line 82
    invoke-static {v0}, Lra3;->c([Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lu/sage/a;->p:Landroid/webkit/WebView;

    .line 86
    .line 87
    if-eqz v0, :cond_2

    .line 88
    .line 89
    invoke-virtual {p0}, Lu/sage/a;->t()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-virtual {v0, p0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    :cond_2
    return-void
.end method

.method public final v(Ljava/lang/String;)V
    .locals 7

    .line 1
    sget-object v0, Lez3;->a:Lra3;

    .line 2
    .line 3
    invoke-virtual {p0}, Lu/sage/a;->j()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    new-array v2, v1, [Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-static {v2}, Lra3;->c([Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lu/sage/a;->p:Landroid/webkit/WebView;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    sget-object v3, Lu/sage/a;->F:Lwr3;

    .line 21
    .line 22
    invoke-virtual {v3}, Lwr3;->getValue()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    check-cast v4, Ljava/util/Map;

    .line 27
    .line 28
    invoke-virtual {p0}, Lu/sage/a;->r()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    new-instance v6, Ljava/util/LinkedHashMap;

    .line 36
    .line 37
    invoke-direct {v6, v4}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 38
    .line 39
    .line 40
    invoke-interface {v6, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    invoke-interface {v6}, Ljava/util/Map;->size()I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_1

    .line 48
    .line 49
    const/4 v5, 0x1

    .line 50
    if-eq v4, v5, :cond_0

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    check-cast v4, Ljava/util/Map$Entry;

    .line 66
    .line 67
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-static {v5, v4}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    sget-object v6, Lh01;->n:Lh01;

    .line 84
    .line 85
    :goto_0
    invoke-virtual {v3, v2, v6}, Lwr3;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 92
    .line 93
    .line 94
    :cond_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 95
    .line 96
    iget-object v3, p0, Lu/sage/a;->y:Lwr3;

    .line 97
    .line 98
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3, v2, v0}, Lwr3;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Lu/sage/a;->u()V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Lu/sage/a;->j()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    new-array v0, v1, [Ljava/lang/Object;

    .line 111
    .line 112
    invoke-static {v0}, Lra3;->c([Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    iget-object v0, p0, Lu/sage/a;->t:Lir3;

    .line 116
    .line 117
    if-eqz v0, :cond_3

    .line 118
    .line 119
    invoke-virtual {v0, v2}, Lbv1;->j(Ljava/util/concurrent/CancellationException;)V

    .line 120
    .line 121
    .line 122
    :cond_3
    new-instance v0, Lxt;

    .line 123
    .line 124
    const/4 v1, 0x4

    .line 125
    invoke-direct {v0, p0, p1, v2, v1}, Lxt;-><init>(Lu/sage/a;Ljava/lang/String;Ldh0;I)V

    .line 126
    .line 127
    .line 128
    const/4 p1, 0x3

    .line 129
    iget-object v1, p0, Lu/sage/a;->q:Lbh0;

    .line 130
    .line 131
    invoke-static {v1, v2, v2, v0, p1}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    iput-object p1, p0, Lu/sage/a;->t:Lir3;

    .line 136
    .line 137
    return-void
.end method

.method public final w(Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lez3;->a:Lra3;

    .line 2
    .line 3
    invoke-virtual {p0}, Lu/sage/a;->j()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    new-array v1, v1, [Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-static {v1}, Lra3;->c([Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lu/sage/a;->v(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sget-object v0, Lzu0;->a:Lzp0;

    .line 19
    .line 20
    sget-object v0, Ln92;->a:Lxi1;

    .line 21
    .line 22
    new-instance v1, Lxt;

    .line 23
    .line 24
    const/4 v2, 0x3

    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-direct {v1, p0, p1, v3, v2}, Lxt;-><init>(Lu/sage/a;Ljava/lang/String;Ldh0;I)V

    .line 27
    .line 28
    .line 29
    const/4 p1, 0x2

    .line 30
    iget-object p0, p0, Lu/sage/a;->q:Lbh0;

    .line 31
    .line 32
    invoke-static {p0, v0, v3, v1, p1}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final x(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lxt;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, p0, p1, v2, v1}, Lxt;-><init>(Lu/sage/a;Ljava/lang/String;Ldh0;I)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x3

    .line 9
    iget-object p0, p0, Lu/sage/a;->q:Lbh0;

    .line 10
    .line 11
    invoke-static {p0, v2, v2, v0, p1}, Lca;->y(Lqi0;Lhi0;Lti0;Ldf1;I)Lir3;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final y(Lfh0;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p1, Lcu;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcu;

    .line 7
    .line 8
    iget v1, v0, Lcu;->s:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcu;->s:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcu;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcu;-><init>(Lu/sage/a;Lfh0;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcu;->q:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lcu;->s:I

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    if-ne v1, v3, :cond_1

    .line 34
    .line 35
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 40
    .line 41
    invoke-static {p0}, Lk21;->n(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-object v2

    .line 45
    :cond_2
    invoke-static {p1}, Lgg4;->T(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    new-instance p1, Lyt;

    .line 49
    .line 50
    const/16 v1, 0xa

    .line 51
    .line 52
    invoke-direct {p1, p0, v2, v1}, Lyt;-><init>(Lu/sage/a;Ldh0;I)V

    .line 53
    .line 54
    .line 55
    iput v3, v0, Lcu;->s:I

    .line 56
    .line 57
    const-wide/16 v1, 0x1f40

    .line 58
    .line 59
    invoke-static {v1, v2, p1, v0}, Lw80;->Z(JLdf1;Lfh0;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    sget-object v0, Lri0;->n:Lri0;

    .line 64
    .line 65
    if-ne p1, v0, :cond_3

    .line 66
    .line 67
    return-object v0

    .line 68
    :cond_3
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    .line 69
    .line 70
    const/4 v0, 0x0

    .line 71
    if-nez p1, :cond_4

    .line 72
    .line 73
    sget-object p1, Lez3;->a:Lra3;

    .line 74
    .line 75
    invoke-virtual {p0}, Lu/sage/a;->j()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    const-string v1, ": [ScriptInjection] Timed out waiting for script injection flag."

    .line 80
    .line 81
    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    new-array p0, v0, [Ljava/lang/Object;

    .line 85
    .line 86
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    invoke-static {p0}, Lra3;->m([Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_4
    sget-object p1, Lez3;->a:Lra3;

    .line 94
    .line 95
    invoke-virtual {p0}, Lu/sage/a;->j()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    const-string v1, ": [ScriptInjection] Script injection confirmed. Safe to evaluate."

    .line 100
    .line 101
    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    new-array p0, v0, [Ljava/lang/Object;

    .line 105
    .line 106
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    invoke-static {p0}, Lra3;->c([Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    :goto_2
    sget-object p0, Lt64;->a:Lt64;

    .line 113
    .line 114
    return-object p0
.end method
