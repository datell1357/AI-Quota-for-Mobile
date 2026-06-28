.class public final Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# static fields
.field private static final Companion:Lg71;

.field public static final LIBRARY_NAME:Ljava/lang/String; = "fire-sessions"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final appContext:Lz03;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz03;"
        }
    .end annotation
.end field

.field private static final backgroundDispatcher:Lz03;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz03;"
        }
    .end annotation
.end field

.field private static final blockingDispatcher:Lz03;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz03;"
        }
    .end annotation
.end field

.field private static final firebaseApp:Lz03;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz03;"
        }
    .end annotation
.end field

.field private static final firebaseInstallationsApi:Lz03;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz03;"
        }
    .end annotation
.end field

.field private static final firebaseSessionsComponent:Lz03;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz03;"
        }
    .end annotation
.end field

.field private static final transportFactory:Lz03;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz03;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lg71;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->Companion:Lg71;

    .line 7
    .line 8
    const-class v0, Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {v0}, Lz03;->a(Ljava/lang/Class;)Lz03;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->appContext:Lz03;

    .line 15
    .line 16
    const-class v0, Le61;

    .line 17
    .line 18
    invoke-static {v0}, Lz03;->a(Ljava/lang/Class;)Lz03;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseApp:Lz03;

    .line 23
    .line 24
    const-class v0, Ln61;

    .line 25
    .line 26
    invoke-static {v0}, Lz03;->a(Ljava/lang/Class;)Lz03;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseInstallationsApi:Lz03;

    .line 31
    .line 32
    new-instance v0, Lz03;

    .line 33
    .line 34
    const-class v1, Lfq;

    .line 35
    .line 36
    const-class v2, Lji0;

    .line 37
    .line 38
    invoke-direct {v0, v1, v2}, Lz03;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 39
    .line 40
    .line 41
    sput-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->backgroundDispatcher:Lz03;

    .line 42
    .line 43
    new-instance v0, Lz03;

    .line 44
    .line 45
    const-class v1, Lrw;

    .line 46
    .line 47
    invoke-direct {v0, v1, v2}, Lz03;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 48
    .line 49
    .line 50
    sput-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->blockingDispatcher:Lz03;

    .line 51
    .line 52
    const-class v0, Lw14;

    .line 53
    .line 54
    invoke-static {v0}, Lz03;->a(Ljava/lang/Class;)Lz03;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    sput-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->transportFactory:Lz03;

    .line 59
    .line 60
    const-class v0, Lz61;

    .line 61
    .line 62
    invoke-static {v0}, Lz03;->a(Ljava/lang/Class;)Lz03;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    sput-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseSessionsComponent:Lz03;

    .line 67
    .line 68
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Lhg;)Lz61;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->getComponents$lambda$1(Lw90;)Lz61;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getAppContext$cp()Lz03;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->appContext:Lz03;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getBackgroundDispatcher$cp()Lz03;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->backgroundDispatcher:Lz03;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getBlockingDispatcher$cp()Lz03;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->blockingDispatcher:Lz03;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getFirebaseApp$cp()Lz03;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseApp:Lz03;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getFirebaseInstallationsApi$cp()Lz03;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseInstallationsApi:Lz03;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getFirebaseSessionsComponent$cp()Lz03;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseSessionsComponent:Lz03;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getTransportFactory$cp()Lz03;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->transportFactory:Lz03;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic b(Lhg;)Ly61;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->getComponents$lambda$0(Lw90;)Ly61;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final getComponents$lambda$0(Lw90;)Ly61;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseSessionsComponent:Lz03;

    .line 2
    .line 3
    invoke-interface {p0, v0}, Lw90;->l(Lz03;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lz61;

    .line 8
    .line 9
    check-cast p0, Lpl0;

    .line 10
    .line 11
    iget-object p0, p0, Lpl0;->p:Lk03;

    .line 12
    .line 13
    invoke-interface {p0}, Lm03;->get()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Ly61;

    .line 18
    .line 19
    return-object p0
.end method

.method private static final getComponents$lambda$1(Lw90;)Lz61;
    .locals 14

    .line 1
    sget-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->appContext:Lz03;

    .line 2
    .line 3
    invoke-interface {p0, v0}, Lw90;->l(Lz03;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    check-cast v0, Landroid/content/Context;

    .line 11
    .line 12
    sget-object v1, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->backgroundDispatcher:Lz03;

    .line 13
    .line 14
    invoke-interface {p0, v1}, Lw90;->l(Lz03;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    check-cast v1, Lhi0;

    .line 22
    .line 23
    sget-object v2, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->blockingDispatcher:Lz03;

    .line 24
    .line 25
    invoke-interface {p0, v2}, Lw90;->l(Lz03;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    check-cast v2, Lhi0;

    .line 33
    .line 34
    sget-object v3, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseApp:Lz03;

    .line 35
    .line 36
    invoke-interface {p0, v3}, Lw90;->l(Lz03;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    check-cast v3, Le61;

    .line 44
    .line 45
    sget-object v4, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseInstallationsApi:Lz03;

    .line 46
    .line 47
    invoke-interface {p0, v4}, Lw90;->l(Lz03;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    check-cast v4, Ln61;

    .line 55
    .line 56
    sget-object v5, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->transportFactory:Lz03;

    .line 57
    .line 58
    invoke-interface {p0, v5}, Lw90;->k(Lz03;)Ln03;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    new-instance v5, Lpl0;

    .line 66
    .line 67
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-static {v3}, Lij3;->a(Ljava/lang/Object;)Lij3;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    iput-object v3, v5, Lpl0;->a:Lij3;

    .line 75
    .line 76
    invoke-static {v0}, Lij3;->a(Ljava/lang/Object;)Lij3;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iput-object v0, v5, Lpl0;->b:Lij3;

    .line 81
    .line 82
    new-instance v3, Li21;

    .line 83
    .line 84
    const/4 v6, 0x2

    .line 85
    invoke-direct {v3, v0, v6}, Li21;-><init>(Lij3;I)V

    .line 86
    .line 87
    .line 88
    invoke-static {v3}, Lvv0;->a(Li41;)Lk03;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    iput-object v0, v5, Lpl0;->c:Lk03;

    .line 93
    .line 94
    sget-object v0, Lqn0;->c:Lc71;

    .line 95
    .line 96
    invoke-static {v0}, Lvv0;->a(Li41;)Lk03;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    iput-object v0, v5, Lpl0;->d:Lk03;

    .line 101
    .line 102
    invoke-static {v4}, Lij3;->a(Ljava/lang/Object;)Lij3;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    iput-object v0, v5, Lpl0;->e:Lij3;

    .line 107
    .line 108
    iget-object v0, v5, Lpl0;->a:Lij3;

    .line 109
    .line 110
    new-instance v3, Li21;

    .line 111
    .line 112
    const/4 v4, 0x1

    .line 113
    invoke-direct {v3, v0, v4}, Li21;-><init>(Lij3;I)V

    .line 114
    .line 115
    .line 116
    invoke-static {v3}, Lvv0;->a(Li41;)Lk03;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    iput-object v0, v5, Lpl0;->f:Lk03;

    .line 121
    .line 122
    invoke-static {v2}, Lij3;->a(Ljava/lang/Object;)Lij3;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    iput-object v0, v5, Lpl0;->g:Lij3;

    .line 127
    .line 128
    iget-object v2, v5, Lpl0;->f:Lk03;

    .line 129
    .line 130
    new-instance v3, La71;

    .line 131
    .line 132
    invoke-direct {v3, v2, v0}, La71;-><init>(Lk03;Lij3;)V

    .line 133
    .line 134
    .line 135
    invoke-static {v3}, Lvv0;->a(Li41;)Lk03;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    iput-object v0, v5, Lpl0;->h:Lk03;

    .line 140
    .line 141
    invoke-static {v1}, Lij3;->a(Ljava/lang/Object;)Lij3;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    iput-object v0, v5, Lpl0;->i:Lij3;

    .line 146
    .line 147
    iget-object v0, v5, Lpl0;->b:Lij3;

    .line 148
    .line 149
    iget-object v1, v5, Lpl0;->g:Lij3;

    .line 150
    .line 151
    new-instance v2, La71;

    .line 152
    .line 153
    const/4 v3, 0x0

    .line 154
    invoke-direct {v2, v0, v1, v3}, La71;-><init>(Lij3;Lk03;I)V

    .line 155
    .line 156
    .line 157
    invoke-static {v2}, Lvv0;->a(Li41;)Lk03;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    iget-object v1, v5, Lpl0;->i:Lij3;

    .line 162
    .line 163
    iget-object v2, v5, Lpl0;->d:Lk03;

    .line 164
    .line 165
    new-instance v6, Lb71;

    .line 166
    .line 167
    invoke-direct {v6, v1, v2, v0}, Lb71;-><init>(Lk03;Lk03;Lk03;)V

    .line 168
    .line 169
    .line 170
    invoke-static {v6}, Lvv0;->a(Li41;)Lk03;

    .line 171
    .line 172
    .line 173
    move-result-object v12

    .line 174
    iget-object v8, v5, Lpl0;->d:Lk03;

    .line 175
    .line 176
    iget-object v9, v5, Lpl0;->e:Lij3;

    .line 177
    .line 178
    iget-object v10, v5, Lpl0;->f:Lk03;

    .line 179
    .line 180
    iget-object v11, v5, Lpl0;->h:Lk03;

    .line 181
    .line 182
    new-instance v7, Ly53;

    .line 183
    .line 184
    invoke-direct/range {v7 .. v12}, Ly53;-><init>(Lk03;Lk03;Lk03;Lk03;Lk03;)V

    .line 185
    .line 186
    .line 187
    invoke-static {v7}, Lvv0;->a(Li41;)Lk03;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    iget-object v1, v5, Lpl0;->c:Lk03;

    .line 192
    .line 193
    new-instance v2, Lvj3;

    .line 194
    .line 195
    invoke-direct {v2, v1, v0, v4}, Lvj3;-><init>(Lk03;Lk03;I)V

    .line 196
    .line 197
    .line 198
    invoke-static {v2}, Lvv0;->a(Li41;)Lk03;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    iput-object v0, v5, Lpl0;->j:Lk03;

    .line 203
    .line 204
    sget-object v0, Lmt1;->b:Lc71;

    .line 205
    .line 206
    invoke-static {v0}, Lvv0;->a(Li41;)Lk03;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    iput-object v0, v5, Lpl0;->k:Lk03;

    .line 211
    .line 212
    iget-object v1, v5, Lpl0;->d:Lk03;

    .line 213
    .line 214
    new-instance v2, Lvj3;

    .line 215
    .line 216
    invoke-direct {v2, v1, v0, v3}, Lvj3;-><init>(Lk03;Lk03;I)V

    .line 217
    .line 218
    .line 219
    invoke-static {v2}, Lvv0;->a(Li41;)Lk03;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    iput-object v0, v5, Lpl0;->l:Lk03;

    .line 224
    .line 225
    invoke-static {p0}, Lij3;->a(Ljava/lang/Object;)Lij3;

    .line 226
    .line 227
    .line 228
    move-result-object p0

    .line 229
    new-instance v0, Li21;

    .line 230
    .line 231
    invoke-direct {v0, p0, v3}, Li21;-><init>(Lij3;I)V

    .line 232
    .line 233
    .line 234
    invoke-static {v0}, Lvv0;->a(Li41;)Lk03;

    .line 235
    .line 236
    .line 237
    move-result-object v10

    .line 238
    iget-object v7, v5, Lpl0;->a:Lij3;

    .line 239
    .line 240
    iget-object v8, v5, Lpl0;->e:Lij3;

    .line 241
    .line 242
    iget-object v9, v5, Lpl0;->j:Lk03;

    .line 243
    .line 244
    iget-object v11, v5, Lpl0;->i:Lij3;

    .line 245
    .line 246
    new-instance v6, Ly53;

    .line 247
    .line 248
    invoke-direct/range {v6 .. v11}, Ly53;-><init>(Lij3;Lk03;Lk03;Lk03;Lk03;)V

    .line 249
    .line 250
    .line 251
    invoke-static {v6}, Lvv0;->a(Li41;)Lk03;

    .line 252
    .line 253
    .line 254
    move-result-object p0

    .line 255
    iput-object p0, v5, Lpl0;->m:Lk03;

    .line 256
    .line 257
    iget-object p0, v5, Lpl0;->l:Lk03;

    .line 258
    .line 259
    new-instance v0, Lij3;

    .line 260
    .line 261
    invoke-direct {v0, v3, p0}, Lij3;-><init>(ILjava/lang/Object;)V

    .line 262
    .line 263
    .line 264
    invoke-static {v0}, Lvv0;->a(Li41;)Lk03;

    .line 265
    .line 266
    .line 267
    move-result-object p0

    .line 268
    iget-object v0, v5, Lpl0;->b:Lij3;

    .line 269
    .line 270
    iget-object v1, v5, Lpl0;->g:Lij3;

    .line 271
    .line 272
    new-instance v2, Lb71;

    .line 273
    .line 274
    invoke-direct {v2, v0, v1, p0}, Lb71;-><init>(Lij3;Lk03;Lk03;)V

    .line 275
    .line 276
    .line 277
    invoke-static {v2}, Lvv0;->a(Li41;)Lk03;

    .line 278
    .line 279
    .line 280
    move-result-object p0

    .line 281
    iput-object p0, v5, Lpl0;->n:Lk03;

    .line 282
    .line 283
    iget-object p0, v5, Lpl0;->b:Lij3;

    .line 284
    .line 285
    iget-object v0, v5, Lpl0;->k:Lk03;

    .line 286
    .line 287
    new-instance v1, La71;

    .line 288
    .line 289
    invoke-direct {v1, p0, v0, v4}, La71;-><init>(Lij3;Lk03;I)V

    .line 290
    .line 291
    .line 292
    invoke-static {v1}, Lvv0;->a(Li41;)Lk03;

    .line 293
    .line 294
    .line 295
    move-result-object v12

    .line 296
    iget-object v7, v5, Lpl0;->j:Lk03;

    .line 297
    .line 298
    iget-object v8, v5, Lpl0;->l:Lk03;

    .line 299
    .line 300
    iget-object v9, v5, Lpl0;->m:Lk03;

    .line 301
    .line 302
    iget-object v10, v5, Lpl0;->d:Lk03;

    .line 303
    .line 304
    iget-object v11, v5, Lpl0;->n:Lk03;

    .line 305
    .line 306
    iget-object v13, v5, Lpl0;->i:Lij3;

    .line 307
    .line 308
    new-instance v6, Llm3;

    .line 309
    .line 310
    invoke-direct/range {v6 .. v13}, Llm3;-><init>(Lk03;Lk03;Lk03;Lk03;Lk03;Lk03;Lk03;)V

    .line 311
    .line 312
    .line 313
    invoke-static {v6}, Lvv0;->a(Li41;)Lk03;

    .line 314
    .line 315
    .line 316
    move-result-object p0

    .line 317
    iput-object p0, v5, Lpl0;->o:Lk03;

    .line 318
    .line 319
    new-instance v0, Lij3;

    .line 320
    .line 321
    invoke-direct {v0, v4, p0}, Lij3;-><init>(ILjava/lang/Object;)V

    .line 322
    .line 323
    .line 324
    invoke-static {v0}, Lvv0;->a(Li41;)Lk03;

    .line 325
    .line 326
    .line 327
    move-result-object p0

    .line 328
    iget-object v0, v5, Lpl0;->a:Lij3;

    .line 329
    .line 330
    iget-object v1, v5, Lpl0;->j:Lk03;

    .line 331
    .line 332
    iget-object v2, v5, Lpl0;->i:Lij3;

    .line 333
    .line 334
    new-instance v3, Lh71;

    .line 335
    .line 336
    invoke-direct {v3, v0, v1, v2, p0}, Lh71;-><init>(Lij3;Lk03;Lk03;Lk03;)V

    .line 337
    .line 338
    .line 339
    invoke-static {v3}, Lvv0;->a(Li41;)Lk03;

    .line 340
    .line 341
    .line 342
    move-result-object p0

    .line 343
    iput-object p0, v5, Lpl0;->p:Lk03;

    .line 344
    .line 345
    return-object v5
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Li90;",
            ">;"
        }
    .end annotation

    .line 1
    const-class p0, Ly61;

    .line 2
    .line 3
    invoke-static {p0}, Li90;->b(Ljava/lang/Class;)Lh90;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v0, "fire-sessions"

    .line 8
    .line 9
    iput-object v0, p0, Lh90;->a:Ljava/lang/String;

    .line 10
    .line 11
    sget-object v1, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseSessionsComponent:Lz03;

    .line 12
    .line 13
    invoke-static {v1}, Lfs0;->a(Lz03;)Lfs0;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p0, v1}, Lh90;->a(Lfs0;)V

    .line 18
    .line 19
    .line 20
    new-instance v1, Lp61;

    .line 21
    .line 22
    const/4 v2, 0x4

    .line 23
    invoke-direct {v1, v2}, Lp61;-><init>(I)V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lh90;->f:Laa0;

    .line 27
    .line 28
    invoke-virtual {p0}, Lh90;->c()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lh90;->b()Li90;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    const-class v1, Lz61;

    .line 36
    .line 37
    invoke-static {v1}, Li90;->b(Ljava/lang/Class;)Lh90;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const-string v2, "fire-sessions-component"

    .line 42
    .line 43
    iput-object v2, v1, Lh90;->a:Ljava/lang/String;

    .line 44
    .line 45
    sget-object v2, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->appContext:Lz03;

    .line 46
    .line 47
    invoke-static {v2}, Lfs0;->a(Lz03;)Lfs0;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v1, v2}, Lh90;->a(Lfs0;)V

    .line 52
    .line 53
    .line 54
    sget-object v2, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->backgroundDispatcher:Lz03;

    .line 55
    .line 56
    invoke-static {v2}, Lfs0;->a(Lz03;)Lfs0;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v1, v2}, Lh90;->a(Lfs0;)V

    .line 61
    .line 62
    .line 63
    sget-object v2, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->blockingDispatcher:Lz03;

    .line 64
    .line 65
    invoke-static {v2}, Lfs0;->a(Lz03;)Lfs0;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v1, v2}, Lh90;->a(Lfs0;)V

    .line 70
    .line 71
    .line 72
    sget-object v2, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseApp:Lz03;

    .line 73
    .line 74
    invoke-static {v2}, Lfs0;->a(Lz03;)Lfs0;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v1, v2}, Lh90;->a(Lfs0;)V

    .line 79
    .line 80
    .line 81
    sget-object v2, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseInstallationsApi:Lz03;

    .line 82
    .line 83
    invoke-static {v2}, Lfs0;->a(Lz03;)Lfs0;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v1, v2}, Lh90;->a(Lfs0;)V

    .line 88
    .line 89
    .line 90
    sget-object v2, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->transportFactory:Lz03;

    .line 91
    .line 92
    new-instance v3, Lfs0;

    .line 93
    .line 94
    const/4 v4, 0x1

    .line 95
    invoke-direct {v3, v2, v4, v4}, Lfs0;-><init>(Lz03;II)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, v3}, Lh90;->a(Lfs0;)V

    .line 99
    .line 100
    .line 101
    new-instance v2, Lp61;

    .line 102
    .line 103
    const/4 v3, 0x5

    .line 104
    invoke-direct {v2, v3}, Lp61;-><init>(I)V

    .line 105
    .line 106
    .line 107
    iput-object v2, v1, Lh90;->f:Laa0;

    .line 108
    .line 109
    invoke-virtual {v1}, Lh90;->b()Li90;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    const-string v2, "3.0.6"

    .line 114
    .line 115
    invoke-static {v0, v2}, Lht4;->l(Ljava/lang/String;Ljava/lang/String;)Li90;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    filled-new-array {p0, v1, v0}, [Li90;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    invoke-static {p0}, Ltv4;->F([Ljava/lang/Object;)Ljava/util/List;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    return-object p0
.end method
