.class public final synthetic Ld4;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lpe1;


# instance fields
.field public final synthetic n:Ljava/lang/String;

.field public final synthetic o:Ln1;

.field public final synthetic p:Lps;

.field public final synthetic q:Lqi0;

.field public final synthetic r:Lur3;

.field public final synthetic s:Lne1;

.field public final synthetic t:Lne1;

.field public final synthetic u:Ly3;

.field public final synthetic v:Ln8;

.field public final synthetic w:Lpg2;

.field public final synthetic x:Lpg2;

.field public final synthetic y:Lpg2;

.field public final synthetic z:Lpg2;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ln1;Lps;Lqi0;Lur3;Lne1;Lne1;Ly3;Ln8;Lpg2;Lpg2;Lpg2;Lpg2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ld4;->n:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Ld4;->o:Ln1;

    .line 7
    .line 8
    iput-object p3, p0, Ld4;->p:Lps;

    .line 9
    .line 10
    iput-object p4, p0, Ld4;->q:Lqi0;

    .line 11
    .line 12
    iput-object p5, p0, Ld4;->r:Lur3;

    .line 13
    .line 14
    iput-object p6, p0, Ld4;->s:Lne1;

    .line 15
    .line 16
    iput-object p7, p0, Ld4;->t:Lne1;

    .line 17
    .line 18
    iput-object p8, p0, Ld4;->u:Ly3;

    .line 19
    .line 20
    iput-object p9, p0, Ld4;->v:Ln8;

    .line 21
    .line 22
    iput-object p10, p0, Ld4;->w:Lpg2;

    .line 23
    .line 24
    iput-object p11, p0, Ld4;->x:Lpg2;

    .line 25
    .line 26
    iput-object p12, p0, Ld4;->y:Lpg2;

    .line 27
    .line 28
    iput-object p13, p0, Ld4;->z:Lpg2;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    sget-object v2, Lez3;->a:Lra3;

    .line 11
    .line 12
    const/4 v11, 0x0

    .line 13
    new-array v3, v11, [Ljava/lang/Object;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-static {v3}, Lra3;->c([Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    new-instance v12, Landroid/widget/FrameLayout;

    .line 22
    .line 23
    invoke-direct {v12, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    new-instance v13, Le4;

    .line 27
    .line 28
    iget-object v2, v0, Ld4;->w:Lpg2;

    .line 29
    .line 30
    invoke-direct {v13, v2, v11}, Le4;-><init>(Lpg2;I)V

    .line 31
    .line 32
    .line 33
    new-instance v10, Le4;

    .line 34
    .line 35
    iget-object v2, v0, Ld4;->x:Lpg2;

    .line 36
    .line 37
    const/4 v3, 0x1

    .line 38
    invoke-direct {v10, v2, v3}, Le4;-><init>(Lpg2;I)V

    .line 39
    .line 40
    .line 41
    new-instance v8, Le4;

    .line 42
    .line 43
    iget-object v2, v0, Ld4;->y:Lpg2;

    .line 44
    .line 45
    const/4 v4, 0x2

    .line 46
    invoke-direct {v8, v2, v4}, Le4;-><init>(Lpg2;I)V

    .line 47
    .line 48
    .line 49
    new-instance v17, Ls33;

    .line 50
    .line 51
    invoke-direct/range {v17 .. v17}, Ljava/lang/Object;-><init>()V

    .line 52
    .line 53
    .line 54
    new-array v2, v11, [Ljava/lang/Object;

    .line 55
    .line 56
    invoke-static {v2}, Lra3;->c([Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    iget-object v15, v0, Ld4;->u:Ly3;

    .line 60
    .line 61
    iget-object v2, v15, Ly3;->a:Ly84;

    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    new-array v2, v11, [Ljava/lang/Object;

    .line 67
    .line 68
    invoke-static {v2}, Lra3;->c([Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string v5, "AccountScreen ["

    .line 74
    .line 75
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-object v5, v0, Ld4;->n:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v6, "]"

    .line 84
    .line 85
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v23

    .line 92
    new-instance v2, Lp;

    .line 93
    .line 94
    const/4 v6, 0x0

    .line 95
    invoke-direct {v2, v5, v15, v6, v4}, Lp;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ldh0;I)V

    .line 96
    .line 97
    .line 98
    new-instance v14, Lg5;

    .line 99
    .line 100
    const/16 v22, 0x0

    .line 101
    .line 102
    iget-object v4, v0, Ld4;->v:Ln8;

    .line 103
    .line 104
    iget-object v6, v0, Ld4;->s:Lne1;

    .line 105
    .line 106
    move-object/from16 v18, v4

    .line 107
    .line 108
    move-object/from16 v16, v5

    .line 109
    .line 110
    move-object/from16 v21, v6

    .line 111
    .line 112
    move-object/from16 v19, v8

    .line 113
    .line 114
    move-object/from16 v20, v10

    .line 115
    .line 116
    invoke-direct/range {v14 .. v22}, Lg5;-><init>(Ly3;Ljava/lang/String;Ls33;Ln8;Le4;Le4;Lne1;Ldh0;)V

    .line 117
    .line 118
    .line 119
    move-object/from16 v21, v15

    .line 120
    .line 121
    move-object v15, v14

    .line 122
    move-object/from16 v14, v20

    .line 123
    .line 124
    new-instance v7, Li5;

    .line 125
    .line 126
    const/4 v10, 0x0

    .line 127
    iget-object v5, v0, Ld4;->p:Lps;

    .line 128
    .line 129
    iget-object v9, v0, Ld4;->t:Lne1;

    .line 130
    .line 131
    move-object/from16 v4, v16

    .line 132
    .line 133
    move-object/from16 v16, v2

    .line 134
    .line 135
    move-object v2, v4

    .line 136
    move-object v6, v1

    .line 137
    move v11, v3

    .line 138
    move-object v1, v7

    .line 139
    move-object/from16 v7, v17

    .line 140
    .line 141
    move-object/from16 v4, v18

    .line 142
    .line 143
    move-object/from16 v3, v21

    .line 144
    .line 145
    invoke-direct/range {v1 .. v10}, Li5;-><init>(Ljava/lang/String;Ly3;Ln8;Lps;Landroid/content/Context;Ls33;Le4;Lne1;Ldh0;)V

    .line 146
    .line 147
    .line 148
    move-object v8, v2

    .line 149
    move-object v7, v1

    .line 150
    move-object v1, v6

    .line 151
    iget-object v2, v0, Ld4;->o:Ln1;

    .line 152
    .line 153
    iget-object v3, v0, Ld4;->q:Lqi0;

    .line 154
    .line 155
    move-object v6, v15

    .line 156
    move-object/from16 v5, v16

    .line 157
    .line 158
    move-object/from16 v4, v23

    .line 159
    .line 160
    invoke-static/range {v1 .. v7}, Lxc4;->a(Landroid/content/Context;Ln1;Lqi0;Ljava/lang/String;Ldf1;Lgf1;Lpe1;)Lsc4;

    .line 161
    .line 162
    .line 163
    move-result-object v19

    .line 164
    new-instance v2, Lsc4;

    .line 165
    .line 166
    new-instance v4, Lm;

    .line 167
    .line 168
    invoke-direct {v4, v8, v3, v14}, Lm;-><init>(Ljava/lang/String;Lqi0;Le4;)V

    .line 169
    .line 170
    .line 171
    const/16 v5, 0x10

    .line 172
    .line 173
    invoke-direct {v2, v1, v5, v4}, Lsc4;-><init>(Landroid/content/Context;ILpe1;)V

    .line 174
    .line 175
    .line 176
    new-instance v4, Landroid/webkit/WebView;

    .line 177
    .line 178
    invoke-direct {v4, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 179
    .line 180
    .line 181
    const/16 v23, 0x0

    .line 182
    .line 183
    const/16 v24, 0x200

    .line 184
    .line 185
    iget-object v5, v0, Ld4;->r:Lur3;

    .line 186
    .line 187
    move-object/from16 v22, v2

    .line 188
    .line 189
    move-object/from16 v18, v4

    .line 190
    .line 191
    move-object/from16 v20, v5

    .line 192
    .line 193
    invoke-static/range {v18 .. v24}, Lix;->m(Landroid/webkit/WebView;Lsc4;Lur3;Ly3;Lsc4;Lt3;I)V

    .line 194
    .line 195
    .line 196
    move-object/from16 v15, v18

    .line 197
    .line 198
    invoke-virtual {v15}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    invoke-virtual {v2, v11}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v2, v11}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 206
    .line 207
    .line 208
    move-object v6, v1

    .line 209
    new-instance v1, Le5;

    .line 210
    .line 211
    move-object v9, v3

    .line 212
    move-object v3, v6

    .line 213
    move-object v2, v8

    .line 214
    move-object v6, v12

    .line 215
    move-object v7, v13

    .line 216
    move-object v10, v14

    .line 217
    move-object/from16 v8, v17

    .line 218
    .line 219
    move-object/from16 v4, v20

    .line 220
    .line 221
    move-object/from16 v5, v21

    .line 222
    .line 223
    invoke-direct/range {v1 .. v10}, Le5;-><init>(Ljava/lang/String;Landroid/content/Context;Lur3;Ly3;Landroid/widget/FrameLayout;Le4;Ls33;Lqi0;Le4;)V

    .line 224
    .line 225
    .line 226
    move-object v3, v5

    .line 227
    invoke-virtual {v15, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 228
    .line 229
    .line 230
    iget-object v1, v3, Ly3;->c:Ljava/lang/String;

    .line 231
    .line 232
    const/4 v2, 0x0

    .line 233
    new-array v2, v2, [Ljava/lang/Object;

    .line 234
    .line 235
    invoke-static {v2}, Lra3;->c([Ljava/lang/Object;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v15, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    iget-object v0, v0, Ld4;->z:Lpg2;

    .line 242
    .line 243
    invoke-interface {v0, v15}, Lpg2;->setValue(Ljava/lang/Object;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v6, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 247
    .line 248
    .line 249
    return-object v6
.end method
