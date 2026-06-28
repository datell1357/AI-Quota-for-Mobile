.class public final Ldj0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final r:Lzi0;

.field public static final s:Ljava/nio/charset/Charset;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lbm0;

.field public final c:Lgw4;

.field public final d:Lq51;

.field public final e:Leh;

.field public final f:Lsn1;

.field public final g:Lq51;

.field public final h:Ldh;

.field public final i:Lgw4;

.field public final j:Ljj0;

.field public final k:Lk8;

.field public final l:Laj0;

.field public final m:Lga0;

.field public n:Lpk0;

.field public final o:Lpw3;

.field public final p:Lpw3;

.field public final q:Lpw3;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lzi0;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lzi0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Ldj0;->r:Lzi0;

    .line 8
    .line 9
    const-string v0, "UTF-8"

    .line 10
    .line 11
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Ldj0;->s:Ljava/nio/charset/Charset;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lsn1;Lbm0;Lq51;Lgw4;Ldh;Lq51;Lgw4;Lga0;Ljj0;Lk8;Laj0;Leh;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lpw3;

    .line 5
    .line 6
    invoke-direct {v0}, Lpw3;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Ldj0;->o:Lpw3;

    .line 10
    .line 11
    new-instance v0, Lpw3;

    .line 12
    .line 13
    invoke-direct {v0}, Lpw3;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Ldj0;->p:Lpw3;

    .line 17
    .line 18
    new-instance v0, Lpw3;

    .line 19
    .line 20
    invoke-direct {v0}, Lpw3;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Ldj0;->q:Lpw3;

    .line 24
    .line 25
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Ldj0;->a:Landroid/content/Context;

    .line 32
    .line 33
    iput-object p2, p0, Ldj0;->f:Lsn1;

    .line 34
    .line 35
    iput-object p3, p0, Ldj0;->b:Lbm0;

    .line 36
    .line 37
    iput-object p4, p0, Ldj0;->g:Lq51;

    .line 38
    .line 39
    iput-object p5, p0, Ldj0;->c:Lgw4;

    .line 40
    .line 41
    iput-object p6, p0, Ldj0;->h:Ldh;

    .line 42
    .line 43
    iput-object p7, p0, Ldj0;->d:Lq51;

    .line 44
    .line 45
    iput-object p8, p0, Ldj0;->i:Lgw4;

    .line 46
    .line 47
    iput-object p10, p0, Ldj0;->j:Ljj0;

    .line 48
    .line 49
    iput-object p11, p0, Ldj0;->k:Lk8;

    .line 50
    .line 51
    iput-object p12, p0, Ldj0;->l:Laj0;

    .line 52
    .line 53
    iput-object p9, p0, Ldj0;->m:Lga0;

    .line 54
    .line 55
    iput-object p13, p0, Ldj0;->e:Leh;

    .line 56
    .line 57
    return-void
.end method

.method public static a(Ldj0;)Lef5;
    .locals 9

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "FirebaseCrashlytics"

    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Ldj0;->g:Lq51;

    .line 12
    .line 13
    iget-object v2, v2, Lq51;->c:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v2, Ljava/io/File;

    .line 16
    .line 17
    sget-object v3, Ldj0;->r:Lzi0;

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-static {v2}, Lq51;->e([Ljava/lang/Object;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Ljava/io/File;

    .line 42
    .line 43
    const/4 v4, 0x0

    .line 44
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    const/4 v6, 0x3

    .line 49
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 54
    .line 55
    .line 56
    move-result-wide v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 57
    :try_start_1
    const-string v5, "com.google.firebase.crash.FirebaseCrash"

    .line 58
    .line 59
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 60
    .line 61
    .line 62
    :try_start_2
    const-string v5, "Skipping logging Crashlytics event to Firebase, FirebaseCrash exists"

    .line 63
    .line 64
    invoke-static {v0, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    .line 66
    .line 67
    invoke-static {v4}, Lmt1;->t(Ljava/lang/Object;)Lef5;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    goto :goto_1

    .line 72
    :catch_0
    const-string v5, "Logging app exception event to Firebase Analytics"

    .line 73
    .line 74
    invoke-static {v0, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    if-eqz v6, :cond_0

    .line 79
    .line 80
    invoke-static {v0, v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    .line 82
    .line 83
    :cond_0
    new-instance v5, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 84
    .line 85
    const/4 v6, 0x1

    .line 86
    invoke-direct {v5, v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    .line 87
    .line 88
    .line 89
    new-instance v6, Lcj0;

    .line 90
    .line 91
    invoke-direct {v6, p0, v7, v8}, Lcj0;-><init>(Ldj0;J)V

    .line 92
    .line 93
    .line 94
    invoke-static {v5, v6}, Lmt1;->m(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lef5;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    :goto_1
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    .line 99
    .line 100
    .line 101
    goto :goto_2

    .line 102
    :catch_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    const-string v6, "Could not parse app exception timestamp from file "

    .line 105
    .line 106
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    invoke-static {v0, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    .line 122
    .line 123
    :goto_2
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 124
    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_1
    invoke-static {v1}, Lmt1;->Y(Ljava/util/List;)Lef5;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    return-object p0
.end method


# virtual methods
.method public final b(ZLed0;Z)V
    .locals 32

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v2, p1

    .line 4
    .line 5
    iget-object v3, v1, Ldj0;->j:Ljj0;

    .line 6
    .line 7
    const-string v4, "FirebaseCrashlytics"

    .line 8
    .line 9
    invoke-static {}, Leh;->l()V

    .line 10
    .line 11
    .line 12
    new-instance v5, Ljava/util/ArrayList;

    .line 13
    .line 14
    iget-object v6, v1, Ldj0;->m:Lga0;

    .line 15
    .line 16
    iget-object v0, v6, Lga0;->b:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Lok0;

    .line 19
    .line 20
    invoke-virtual {v0}, Lok0;->c()Ljava/util/NavigableSet;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const/4 v7, 0x2

    .line 32
    const/4 v8, 0x0

    .line 33
    if-gt v0, v2, :cond_0

    .line 34
    .line 35
    const-string v0, "No open sessions to be closed."

    .line 36
    .line 37
    invoke-static {v4, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_34

    .line 42
    .line 43
    invoke-static {v4, v0, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_0
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    move-object v9, v0

    .line 52
    check-cast v9, Ljava/lang/String;

    .line 53
    .line 54
    const/4 v13, 0x1

    .line 55
    const/4 v14, 0x0

    .line 56
    if-eqz p3, :cond_18

    .line 57
    .line 58
    invoke-virtual/range {p2 .. p2}, Led0;->e()Lmk3;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iget-object v0, v0, Lmk3;->b:Lkk3;

    .line 63
    .line 64
    iget-boolean v0, v0, Lkk3;->b:Z

    .line 65
    .line 66
    if-eqz v0, :cond_18

    .line 67
    .line 68
    iget-object v0, v1, Ldj0;->g:Lq51;

    .line 69
    .line 70
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 71
    .line 72
    const/16 v16, 0x4

    .line 73
    .line 74
    const/16 v12, 0x1e

    .line 75
    .line 76
    if-lt v15, v12, :cond_17

    .line 77
    .line 78
    iget-object v12, v1, Ldj0;->a:Landroid/content/Context;

    .line 79
    .line 80
    const-string v15, "activity"

    .line 81
    .line 82
    invoke-virtual {v12, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v12

    .line 86
    check-cast v12, Landroid/app/ActivityManager;

    .line 87
    .line 88
    invoke-static {v12}, La3;->k(Landroid/app/ActivityManager;)Ljava/util/List;

    .line 89
    .line 90
    .line 91
    move-result-object v12

    .line 92
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 93
    .line 94
    .line 95
    move-result v15

    .line 96
    if-eqz v15, :cond_15

    .line 97
    .line 98
    new-instance v15, Lgw4;

    .line 99
    .line 100
    invoke-direct {v15, v0}, Lgw4;-><init>(Lq51;)V

    .line 101
    .line 102
    .line 103
    const/16 v17, 0x8

    .line 104
    .line 105
    sget-object v10, Lgw4;->r:Lb21;

    .line 106
    .line 107
    iput-object v10, v15, Lgw4;->p:Ljava/lang/Object;

    .line 108
    .line 109
    if-nez v9, :cond_1

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_1
    const-string v10, "userlog"

    .line 113
    .line 114
    invoke-virtual {v0, v9, v10}, Lq51;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 115
    .line 116
    .line 117
    move-result-object v10

    .line 118
    new-instance v7, Le13;

    .line 119
    .line 120
    invoke-direct {v7, v10}, Le13;-><init>(Ljava/io/File;)V

    .line 121
    .line 122
    .line 123
    iput-object v7, v15, Lgw4;->p:Ljava/lang/Object;

    .line 124
    .line 125
    :goto_0
    iget-object v7, v1, Ldj0;->e:Leh;

    .line 126
    .line 127
    new-instance v10, Luc2;

    .line 128
    .line 129
    invoke-direct {v10, v0}, Luc2;-><init>(Lq51;)V

    .line 130
    .line 131
    .line 132
    new-instance v8, Lq51;

    .line 133
    .line 134
    invoke-direct {v8, v9, v0, v7}, Lq51;-><init>(Ljava/lang/String;Lq51;Leh;)V

    .line 135
    .line 136
    .line 137
    iget-object v7, v8, Lq51;->d:Ljava/lang/Object;

    .line 138
    .line 139
    check-cast v7, Lmu0;

    .line 140
    .line 141
    iget-object v7, v7, Lmu0;->b:Ljava/lang/Object;

    .line 142
    .line 143
    check-cast v7, Ljava/util/concurrent/atomic/AtomicMarkableReference;

    .line 144
    .line 145
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->getReference()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v7

    .line 149
    check-cast v7, Ltx1;

    .line 150
    .line 151
    invoke-virtual {v10, v9, v14}, Luc2;->c(Ljava/lang/String;Z)Ljava/util/Map;

    .line 152
    .line 153
    .line 154
    move-result-object v11

    .line 155
    invoke-virtual {v7, v11}, Ltx1;->c(Ljava/util/Map;)V

    .line 156
    .line 157
    .line 158
    iget-object v7, v8, Lq51;->e:Ljava/lang/Object;

    .line 159
    .line 160
    check-cast v7, Lmu0;

    .line 161
    .line 162
    iget-object v7, v7, Lmu0;->b:Ljava/lang/Object;

    .line 163
    .line 164
    check-cast v7, Ljava/util/concurrent/atomic/AtomicMarkableReference;

    .line 165
    .line 166
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->getReference()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v7

    .line 170
    check-cast v7, Ltx1;

    .line 171
    .line 172
    invoke-virtual {v10, v9, v13}, Luc2;->c(Ljava/lang/String;Z)Ljava/util/Map;

    .line 173
    .line 174
    .line 175
    move-result-object v11

    .line 176
    invoke-virtual {v7, v11}, Ltx1;->c(Ljava/util/Map;)V

    .line 177
    .line 178
    .line 179
    iget-object v7, v8, Lq51;->g:Ljava/lang/Object;

    .line 180
    .line 181
    check-cast v7, Ljava/util/concurrent/atomic/AtomicMarkableReference;

    .line 182
    .line 183
    invoke-virtual {v10, v9}, Luc2;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v10

    .line 187
    invoke-virtual {v7, v10, v14}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->set(Ljava/lang/Object;Z)V

    .line 188
    .line 189
    .line 190
    iget-object v7, v8, Lq51;->f:Ljava/lang/Object;

    .line 191
    .line 192
    check-cast v7, Laa3;

    .line 193
    .line 194
    const-string v10, "Failed to close rollouts state file."

    .line 195
    .line 196
    const-string v11, "Loaded rollouts state:\n"

    .line 197
    .line 198
    move/from16 v20, v13

    .line 199
    .line 200
    const-string v13, "rollouts-state"

    .line 201
    .line 202
    invoke-virtual {v0, v9, v13}, Lq51;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 203
    .line 204
    .line 205
    move-result-object v13

    .line 206
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    if-eqz v0, :cond_4

    .line 211
    .line 212
    invoke-virtual {v13}, Ljava/io/File;->length()J

    .line 213
    .line 214
    .line 215
    move-result-wide v21

    .line 216
    const-wide/16 v23, 0x0

    .line 217
    .line 218
    cmp-long v0, v21, v23

    .line 219
    .line 220
    if-nez v0, :cond_2

    .line 221
    .line 222
    goto :goto_4

    .line 223
    :cond_2
    :try_start_0
    new-instance v14, Ljava/io/FileInputStream;

    .line 224
    .line 225
    invoke-direct {v14, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 226
    .line 227
    .line 228
    :try_start_1
    invoke-static {v14}, Lw80;->W(Ljava/io/FileInputStream;)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    invoke-static {v0}, Luc2;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    new-instance v2, Ljava/lang/StringBuilder;

    .line 237
    .line 238
    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    const-string v11, "\nfor session "

    .line 245
    .line 246
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    const/4 v11, 0x3

    .line 257
    invoke-static {v4, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 258
    .line 259
    .line 260
    move-result v22

    .line 261
    if-eqz v22, :cond_3

    .line 262
    .line 263
    const/4 v11, 0x0

    .line 264
    invoke-static {v4, v2, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 265
    .line 266
    .line 267
    :cond_3
    invoke-static {v14, v10}, Lw80;->n(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    goto :goto_5

    .line 271
    :goto_1
    move-object v8, v14

    .line 272
    goto :goto_3

    .line 273
    :catchall_0
    move-exception v0

    .line 274
    goto :goto_1

    .line 275
    :catch_0
    move-exception v0

    .line 276
    goto :goto_2

    .line 277
    :catchall_1
    move-exception v0

    .line 278
    const/4 v8, 0x0

    .line 279
    goto :goto_3

    .line 280
    :catch_1
    move-exception v0

    .line 281
    const/4 v14, 0x0

    .line 282
    :goto_2
    :try_start_2
    const-string v2, "Error deserializing rollouts state."

    .line 283
    .line 284
    invoke-static {v4, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 285
    .line 286
    .line 287
    invoke-static {v13}, Luc2;->f(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 288
    .line 289
    .line 290
    invoke-static {v14, v10}, Lw80;->n(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 294
    .line 295
    goto :goto_5

    .line 296
    :goto_3
    invoke-static {v8, v10}, Lw80;->n(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    throw v0

    .line 300
    :cond_4
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 301
    .line 302
    const-string v2, "The file has a length of zero for session: "

    .line 303
    .line 304
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    invoke-static {v13, v0}, Luc2;->g(Ljava/io/File;Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 318
    .line 319
    :goto_5
    invoke-virtual {v7, v0}, Laa3;->b(Ljava/util/List;)Z

    .line 320
    .line 321
    .line 322
    iget-object v0, v6, Lga0;->b:Ljava/lang/Object;

    .line 323
    .line 324
    move-object v2, v0

    .line 325
    check-cast v2, Lok0;

    .line 326
    .line 327
    iget-object v0, v2, Lok0;->b:Lq51;

    .line 328
    .line 329
    const-string v7, "start-time"

    .line 330
    .line 331
    invoke-virtual {v0, v9, v7}, Lq51;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    .line 336
    .line 337
    .line 338
    move-result-wide v10

    .line 339
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 344
    .line 345
    .line 346
    move-result v7

    .line 347
    if-eqz v7, :cond_5

    .line 348
    .line 349
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    move-result-object v7

    .line 353
    invoke-static {v7}, La3;->d(Ljava/lang/Object;)Landroid/app/ApplicationExitInfo;

    .line 354
    .line 355
    .line 356
    move-result-object v7

    .line 357
    invoke-static {v7}, La3;->u(Landroid/app/ApplicationExitInfo;)J

    .line 358
    .line 359
    .line 360
    move-result-wide v12

    .line 361
    cmp-long v12, v12, v10

    .line 362
    .line 363
    if-gez v12, :cond_6

    .line 364
    .line 365
    :cond_5
    const/4 v7, 0x0

    .line 366
    goto :goto_7

    .line 367
    :cond_6
    invoke-static {v7}, La3;->t(Landroid/app/ApplicationExitInfo;)I

    .line 368
    .line 369
    .line 370
    move-result v12

    .line 371
    const/4 v13, 0x6

    .line 372
    if-eq v12, v13, :cond_7

    .line 373
    .line 374
    goto :goto_6

    .line 375
    :cond_7
    :goto_7
    if-nez v7, :cond_9

    .line 376
    .line 377
    const-string v0, "No relevant ApplicationExitInfo occurred during session: "

    .line 378
    .line 379
    invoke-static {v0, v9}, Ldi0;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v0

    .line 383
    const/4 v2, 0x2

    .line 384
    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 385
    .line 386
    .line 387
    move-result v7

    .line 388
    if-eqz v7, :cond_8

    .line 389
    .line 390
    const/4 v11, 0x0

    .line 391
    invoke-static {v4, v0, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 392
    .line 393
    .line 394
    :cond_8
    move-object/from16 v30, v3

    .line 395
    .line 396
    move-object/from16 v31, v6

    .line 397
    .line 398
    move/from16 v6, v20

    .line 399
    .line 400
    goto/16 :goto_c

    .line 401
    .line 402
    :cond_9
    iget-object v0, v6, Lga0;->a:Ljava/lang/Object;

    .line 403
    .line 404
    move-object v10, v0

    .line 405
    check-cast v10, Llk0;

    .line 406
    .line 407
    :try_start_3
    invoke-static {v7}, La3;->h(Landroid/app/ApplicationExitInfo;)Ljava/io/InputStream;

    .line 408
    .line 409
    .line 410
    move-result-object v0

    .line 411
    if-eqz v0, :cond_a

    .line 412
    .line 413
    invoke-static {v0}, Lga0;->f(Ljava/io/InputStream;)Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 417
    goto :goto_8

    .line 418
    :catch_2
    move-exception v0

    .line 419
    new-instance v11, Ljava/lang/StringBuilder;

    .line 420
    .line 421
    const-string v12, "Could not get input trace in application exit info: "

    .line 422
    .line 423
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    invoke-static {v7}, La3;->w(Landroid/app/ApplicationExitInfo;)Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v12

    .line 430
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    .line 432
    .line 433
    const-string v12, " Error: "

    .line 434
    .line 435
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v0

    .line 445
    const/4 v11, 0x0

    .line 446
    invoke-static {v4, v0, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 447
    .line 448
    .line 449
    :cond_a
    const/4 v0, 0x0

    .line 450
    :goto_8
    new-instance v11, Lqm;

    .line 451
    .line 452
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 453
    .line 454
    .line 455
    invoke-static {v7}, La3;->y(Landroid/app/ApplicationExitInfo;)I

    .line 456
    .line 457
    .line 458
    move-result v12

    .line 459
    iput v12, v11, Lqm;->d:I

    .line 460
    .line 461
    iget-byte v12, v11, Lqm;->j:B

    .line 462
    .line 463
    or-int/lit8 v12, v12, 0x4

    .line 464
    .line 465
    int-to-byte v12, v12

    .line 466
    iput-byte v12, v11, Lqm;->j:B

    .line 467
    .line 468
    invoke-static {v7}, La3;->A(Landroid/app/ApplicationExitInfo;)Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object v12

    .line 472
    if-eqz v12, :cond_14

    .line 473
    .line 474
    iput-object v12, v11, Lqm;->b:Ljava/lang/String;

    .line 475
    .line 476
    invoke-static {v7}, La3;->t(Landroid/app/ApplicationExitInfo;)I

    .line 477
    .line 478
    .line 479
    move-result v12

    .line 480
    iput v12, v11, Lqm;->c:I

    .line 481
    .line 482
    iget-byte v12, v11, Lqm;->j:B

    .line 483
    .line 484
    const/16 v18, 0x2

    .line 485
    .line 486
    or-int/lit8 v12, v12, 0x2

    .line 487
    .line 488
    int-to-byte v12, v12

    .line 489
    iput-byte v12, v11, Lqm;->j:B

    .line 490
    .line 491
    invoke-static {v7}, La3;->c(Landroid/app/ApplicationExitInfo;)J

    .line 492
    .line 493
    .line 494
    move-result-wide v12

    .line 495
    iput-wide v12, v11, Lqm;->g:J

    .line 496
    .line 497
    iget-byte v12, v11, Lqm;->j:B

    .line 498
    .line 499
    or-int/lit8 v12, v12, 0x20

    .line 500
    .line 501
    int-to-byte v12, v12

    .line 502
    iput-byte v12, v11, Lqm;->j:B

    .line 503
    .line 504
    invoke-static {v7}, La3;->B(Landroid/app/ApplicationExitInfo;)I

    .line 505
    .line 506
    .line 507
    move-result v12

    .line 508
    iput v12, v11, Lqm;->a:I

    .line 509
    .line 510
    iget-byte v12, v11, Lqm;->j:B

    .line 511
    .line 512
    or-int/lit8 v12, v12, 0x1

    .line 513
    .line 514
    int-to-byte v12, v12

    .line 515
    iput-byte v12, v11, Lqm;->j:B

    .line 516
    .line 517
    invoke-static {v7}, La3;->z(Landroid/app/ApplicationExitInfo;)J

    .line 518
    .line 519
    .line 520
    move-result-wide v12

    .line 521
    iput-wide v12, v11, Lqm;->e:J

    .line 522
    .line 523
    iget-byte v12, v11, Lqm;->j:B

    .line 524
    .line 525
    or-int/lit8 v12, v12, 0x8

    .line 526
    .line 527
    int-to-byte v12, v12

    .line 528
    iput-byte v12, v11, Lqm;->j:B

    .line 529
    .line 530
    invoke-static {v7}, La3;->C(Landroid/app/ApplicationExitInfo;)J

    .line 531
    .line 532
    .line 533
    move-result-wide v12

    .line 534
    iput-wide v12, v11, Lqm;->f:J

    .line 535
    .line 536
    iget-byte v7, v11, Lqm;->j:B

    .line 537
    .line 538
    or-int/lit8 v7, v7, 0x10

    .line 539
    .line 540
    int-to-byte v7, v7

    .line 541
    iput-byte v7, v11, Lqm;->j:B

    .line 542
    .line 543
    iput-object v0, v11, Lqm;->h:Ljava/lang/String;

    .line 544
    .line 545
    invoke-virtual {v11}, Lqm;->a()Lrm;

    .line 546
    .line 547
    .line 548
    move-result-object v0

    .line 549
    iget-object v7, v10, Llk0;->a:Landroid/content/Context;

    .line 550
    .line 551
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 552
    .line 553
    .line 554
    move-result-object v7

    .line 555
    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 556
    .line 557
    .line 558
    move-result-object v7

    .line 559
    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    .line 560
    .line 561
    new-instance v11, Lcn;

    .line 562
    .line 563
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 564
    .line 565
    .line 566
    const-string v12, "anr"

    .line 567
    .line 568
    iput-object v12, v11, Lcn;->b:Ljava/lang/String;

    .line 569
    .line 570
    iget-wide v12, v0, Lrm;->g:J

    .line 571
    .line 572
    iput-wide v12, v11, Lcn;->a:J

    .line 573
    .line 574
    iget-byte v14, v11, Lcn;->g:B

    .line 575
    .line 576
    or-int/lit8 v14, v14, 0x1

    .line 577
    .line 578
    int-to-byte v14, v14

    .line 579
    iput-byte v14, v11, Lcn;->g:B

    .line 580
    .line 581
    iget-object v14, v10, Llk0;->c:Ldh;

    .line 582
    .line 583
    move-object/from16 v30, v3

    .line 584
    .line 585
    iget-object v3, v10, Llk0;->e:Led0;

    .line 586
    .line 587
    invoke-virtual {v3}, Led0;->e()Lmk3;

    .line 588
    .line 589
    .line 590
    move-result-object v3

    .line 591
    iget-object v3, v3, Lmk3;->b:Lkk3;

    .line 592
    .line 593
    iget-boolean v3, v3, Lkk3;->c:Z

    .line 594
    .line 595
    if-eqz v3, :cond_f

    .line 596
    .line 597
    iget-object v3, v14, Ldh;->g:Ljava/lang/Object;

    .line 598
    .line 599
    check-cast v3, Ljava/util/ArrayList;

    .line 600
    .line 601
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 602
    .line 603
    .line 604
    move-result v3

    .line 605
    if-lez v3, :cond_f

    .line 606
    .line 607
    new-instance v3, Ljava/util/ArrayList;

    .line 608
    .line 609
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 610
    .line 611
    .line 612
    iget-object v14, v14, Ldh;->g:Ljava/lang/Object;

    .line 613
    .line 614
    check-cast v14, Ljava/util/ArrayList;

    .line 615
    .line 616
    move/from16 v29, v7

    .line 617
    .line 618
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 619
    .line 620
    .line 621
    move-result v7

    .line 622
    move-object/from16 v31, v6

    .line 623
    .line 624
    const/4 v6, 0x0

    .line 625
    :goto_9
    if-ge v6, v7, :cond_e

    .line 626
    .line 627
    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 628
    .line 629
    .line 630
    move-result-object v22

    .line 631
    add-int/lit8 v6, v6, 0x1

    .line 632
    .line 633
    move/from16 p2, v6

    .line 634
    .line 635
    move-object/from16 v6, v22

    .line 636
    .line 637
    check-cast v6, Ljz;

    .line 638
    .line 639
    move/from16 v22, v7

    .line 640
    .line 641
    iget-object v7, v6, Ljz;->a:Ljava/lang/String;

    .line 642
    .line 643
    if-eqz v7, :cond_d

    .line 644
    .line 645
    move-object/from16 v23, v14

    .line 646
    .line 647
    iget-object v14, v6, Ljz;->b:Ljava/lang/String;

    .line 648
    .line 649
    if-eqz v14, :cond_c

    .line 650
    .line 651
    iget-object v6, v6, Ljz;->c:Ljava/lang/String;

    .line 652
    .line 653
    if-eqz v6, :cond_b

    .line 654
    .line 655
    new-instance v1, Lsm;

    .line 656
    .line 657
    invoke-direct {v1, v14, v7, v6}, Lsm;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    .line 659
    .line 660
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 661
    .line 662
    .line 663
    move-object/from16 v1, p0

    .line 664
    .line 665
    move/from16 v6, p2

    .line 666
    .line 667
    move/from16 v7, v22

    .line 668
    .line 669
    move-object/from16 v14, v23

    .line 670
    .line 671
    goto :goto_9

    .line 672
    :cond_b
    const-string v0, "Null buildId"

    .line 673
    .line 674
    invoke-static {v0}, Lq73;->r(Ljava/lang/String;)V

    .line 675
    .line 676
    .line 677
    return-void

    .line 678
    :cond_c
    const-string v0, "Null arch"

    .line 679
    .line 680
    invoke-static {v0}, Lq73;->r(Ljava/lang/String;)V

    .line 681
    .line 682
    .line 683
    return-void

    .line 684
    :cond_d
    const-string v0, "Null libraryName"

    .line 685
    .line 686
    invoke-static {v0}, Lq73;->r(Ljava/lang/String;)V

    .line 687
    .line 688
    .line 689
    return-void

    .line 690
    :cond_e
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 691
    .line 692
    .line 693
    move-result-object v1

    .line 694
    goto :goto_a

    .line 695
    :cond_f
    move-object/from16 v31, v6

    .line 696
    .line 697
    move/from16 v29, v7

    .line 698
    .line 699
    const/4 v1, 0x0

    .line 700
    :goto_a
    new-instance v3, Lqm;

    .line 701
    .line 702
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 703
    .line 704
    .line 705
    iget v6, v0, Lrm;->d:I

    .line 706
    .line 707
    iput v6, v3, Lqm;->d:I

    .line 708
    .line 709
    iget-byte v6, v3, Lqm;->j:B

    .line 710
    .line 711
    or-int/lit8 v6, v6, 0x4

    .line 712
    .line 713
    int-to-byte v6, v6

    .line 714
    iput-byte v6, v3, Lqm;->j:B

    .line 715
    .line 716
    iget-object v7, v0, Lrm;->b:Ljava/lang/String;

    .line 717
    .line 718
    if-eqz v7, :cond_13

    .line 719
    .line 720
    iput-object v7, v3, Lqm;->b:Ljava/lang/String;

    .line 721
    .line 722
    iget v7, v0, Lrm;->c:I

    .line 723
    .line 724
    iput v7, v3, Lqm;->c:I

    .line 725
    .line 726
    const/16 v18, 0x2

    .line 727
    .line 728
    or-int/lit8 v6, v6, 0x2

    .line 729
    .line 730
    int-to-byte v6, v6

    .line 731
    iput-wide v12, v3, Lqm;->g:J

    .line 732
    .line 733
    or-int/lit8 v6, v6, 0x20

    .line 734
    .line 735
    int-to-byte v6, v6

    .line 736
    iget v7, v0, Lrm;->a:I

    .line 737
    .line 738
    iput v7, v3, Lqm;->a:I

    .line 739
    .line 740
    or-int/lit8 v6, v6, 0x1

    .line 741
    .line 742
    int-to-byte v6, v6

    .line 743
    iget-wide v12, v0, Lrm;->e:J

    .line 744
    .line 745
    iput-wide v12, v3, Lqm;->e:J

    .line 746
    .line 747
    or-int/lit8 v6, v6, 0x8

    .line 748
    .line 749
    int-to-byte v6, v6

    .line 750
    iget-wide v12, v0, Lrm;->f:J

    .line 751
    .line 752
    iput-wide v12, v3, Lqm;->f:J

    .line 753
    .line 754
    or-int/lit8 v6, v6, 0x10

    .line 755
    .line 756
    int-to-byte v6, v6

    .line 757
    iput-byte v6, v3, Lqm;->j:B

    .line 758
    .line 759
    iget-object v0, v0, Lrm;->h:Ljava/lang/String;

    .line 760
    .line 761
    iput-object v0, v3, Lqm;->h:Ljava/lang/String;

    .line 762
    .line 763
    iput-object v1, v3, Lqm;->i:Ljava/util/List;

    .line 764
    .line 765
    invoke-virtual {v3}, Lqm;->a()Lrm;

    .line 766
    .line 767
    .line 768
    move-result-object v0

    .line 769
    iget v1, v0, Lrm;->d:I

    .line 770
    .line 771
    const/16 v3, 0x64

    .line 772
    .line 773
    if-eq v1, v3, :cond_10

    .line 774
    .line 775
    move/from16 v3, v20

    .line 776
    .line 777
    goto :goto_b

    .line 778
    :cond_10
    const/4 v3, 0x0

    .line 779
    :goto_b
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 780
    .line 781
    .line 782
    move-result-object v3

    .line 783
    iget-object v6, v0, Lrm;->b:Ljava/lang/String;

    .line 784
    .line 785
    iget v7, v0, Lrm;->a:I

    .line 786
    .line 787
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 788
    .line 789
    .line 790
    new-instance v12, Lmn;

    .line 791
    .line 792
    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    .line 793
    .line 794
    .line 795
    iput-object v6, v12, Lmn;->a:Ljava/lang/String;

    .line 796
    .line 797
    iput v7, v12, Lmn;->b:I

    .line 798
    .line 799
    iget-byte v6, v12, Lmn;->e:B

    .line 800
    .line 801
    or-int/lit8 v6, v6, 0x1

    .line 802
    .line 803
    int-to-byte v6, v6

    .line 804
    iput v1, v12, Lmn;->c:I

    .line 805
    .line 806
    const/16 v18, 0x2

    .line 807
    .line 808
    or-int/lit8 v1, v6, 0x2

    .line 809
    .line 810
    int-to-byte v1, v1

    .line 811
    const/4 v6, 0x0

    .line 812
    iput-boolean v6, v12, Lmn;->d:Z

    .line 813
    .line 814
    or-int/lit8 v1, v1, 0x4

    .line 815
    .line 816
    int-to-byte v1, v1

    .line 817
    iput-byte v1, v12, Lmn;->e:B

    .line 818
    .line 819
    invoke-virtual {v12}, Lmn;->a()Lnn;

    .line 820
    .line 821
    .line 822
    move-result-object v1

    .line 823
    invoke-static {}, Llk0;->e()Lin;

    .line 824
    .line 825
    .line 826
    move-result-object v26

    .line 827
    invoke-virtual {v10}, Llk0;->a()Ljava/util/List;

    .line 828
    .line 829
    .line 830
    move-result-object v27

    .line 831
    if-eqz v27, :cond_12

    .line 832
    .line 833
    new-instance v22, Lfn;

    .line 834
    .line 835
    const/16 v23, 0x0

    .line 836
    .line 837
    const/16 v24, 0x0

    .line 838
    .line 839
    move-object/from16 v25, v0

    .line 840
    .line 841
    invoke-direct/range {v22 .. v27}, Lfn;-><init>(Ljava/util/List;Lhn;Lmj0;Lin;Ljava/util/List;)V

    .line 842
    .line 843
    .line 844
    new-instance v0, Len;

    .line 845
    .line 846
    const/16 v25, 0x0

    .line 847
    .line 848
    const/16 v28, 0x0

    .line 849
    .line 850
    move-object/from16 v27, v1

    .line 851
    .line 852
    move-object/from16 v26, v3

    .line 853
    .line 854
    move-object/from16 v23, v22

    .line 855
    .line 856
    move-object/from16 v22, v0

    .line 857
    .line 858
    invoke-direct/range {v22 .. v29}, Len;-><init>(Lfn;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Lzj0;Ljava/util/List;I)V

    .line 859
    .line 860
    .line 861
    move-object/from16 v1, v22

    .line 862
    .line 863
    move/from16 v0, v29

    .line 864
    .line 865
    iput-object v1, v11, Lcn;->c:Lak0;

    .line 866
    .line 867
    invoke-virtual {v10, v0}, Llk0;->b(I)Lpn;

    .line 868
    .line 869
    .line 870
    move-result-object v0

    .line 871
    iput-object v0, v11, Lcn;->d:Lbk0;

    .line 872
    .line 873
    invoke-virtual {v11}, Lcn;->a()Ldn;

    .line 874
    .line 875
    .line 876
    move-result-object v0

    .line 877
    const-string v1, "Persisting anr for session "

    .line 878
    .line 879
    invoke-static {v1, v9}, Ldi0;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 880
    .line 881
    .line 882
    move-result-object v1

    .line 883
    const/4 v11, 0x3

    .line 884
    invoke-static {v4, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 885
    .line 886
    .line 887
    move-result v3

    .line 888
    if-eqz v3, :cond_11

    .line 889
    .line 890
    const/4 v11, 0x0

    .line 891
    invoke-static {v4, v1, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 892
    .line 893
    .line 894
    :cond_11
    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 895
    .line 896
    invoke-static {v0, v15, v8, v1}, Lga0;->c(Ldn;Lgw4;Lq51;Ljava/util/Map;)Ldn;

    .line 897
    .line 898
    .line 899
    move-result-object v0

    .line 900
    invoke-static {v0, v8}, Lga0;->e(Ldn;Lq51;)Lgk0;

    .line 901
    .line 902
    .line 903
    move-result-object v0

    .line 904
    move/from16 v6, v20

    .line 905
    .line 906
    invoke-virtual {v2, v0, v9, v6}, Lok0;->d(Lgk0;Ljava/lang/String;Z)V

    .line 907
    .line 908
    .line 909
    :goto_c
    const/4 v2, 0x2

    .line 910
    goto :goto_d

    .line 911
    :cond_12
    const-string v0, "Null binaries"

    .line 912
    .line 913
    invoke-static {v0}, Lq73;->r(Ljava/lang/String;)V

    .line 914
    .line 915
    .line 916
    return-void

    .line 917
    :cond_13
    const-string v0, "Null processName"

    .line 918
    .line 919
    invoke-static {v0}, Lq73;->r(Ljava/lang/String;)V

    .line 920
    .line 921
    .line 922
    return-void

    .line 923
    :cond_14
    const-string v0, "Null processName"

    .line 924
    .line 925
    invoke-static {v0}, Lq73;->r(Ljava/lang/String;)V

    .line 926
    .line 927
    .line 928
    return-void

    .line 929
    :cond_15
    move-object/from16 v30, v3

    .line 930
    .line 931
    move-object/from16 v31, v6

    .line 932
    .line 933
    move v6, v13

    .line 934
    const/16 v17, 0x8

    .line 935
    .line 936
    const-string v0, "No ApplicationExitInfo available. Session: "

    .line 937
    .line 938
    invoke-static {v0, v9}, Ldi0;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 939
    .line 940
    .line 941
    move-result-object v0

    .line 942
    const/4 v2, 0x2

    .line 943
    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 944
    .line 945
    .line 946
    move-result v1

    .line 947
    if-eqz v1, :cond_16

    .line 948
    .line 949
    const/4 v11, 0x0

    .line 950
    invoke-static {v4, v0, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 951
    .line 952
    .line 953
    goto :goto_e

    .line 954
    :cond_16
    :goto_d
    const/4 v11, 0x0

    .line 955
    goto :goto_e

    .line 956
    :cond_17
    move-object/from16 v30, v3

    .line 957
    .line 958
    move-object/from16 v31, v6

    .line 959
    .line 960
    move v2, v7

    .line 961
    move-object v11, v8

    .line 962
    move v6, v13

    .line 963
    const/16 v17, 0x8

    .line 964
    .line 965
    const-string v0, "ANR feature enabled, but device is API "

    .line 966
    .line 967
    invoke-static {v15, v0}, Ldi0;->q(ILjava/lang/String;)Ljava/lang/String;

    .line 968
    .line 969
    .line 970
    move-result-object v0

    .line 971
    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 972
    .line 973
    .line 974
    move-result v1

    .line 975
    if-eqz v1, :cond_19

    .line 976
    .line 977
    invoke-static {v4, v0, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 978
    .line 979
    .line 980
    goto :goto_e

    .line 981
    :cond_18
    move-object/from16 v30, v3

    .line 982
    .line 983
    move-object/from16 v31, v6

    .line 984
    .line 985
    move v2, v7

    .line 986
    move-object v11, v8

    .line 987
    move v6, v13

    .line 988
    const/16 v16, 0x4

    .line 989
    .line 990
    const/16 v17, 0x8

    .line 991
    .line 992
    const-string v0, "ANR feature disabled."

    .line 993
    .line 994
    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 995
    .line 996
    .line 997
    move-result v1

    .line 998
    if-eqz v1, :cond_19

    .line 999
    .line 1000
    invoke-static {v4, v0, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1001
    .line 1002
    .line 1003
    :cond_19
    :goto_e
    if-eqz p3, :cond_1b

    .line 1004
    .line 1005
    invoke-virtual/range {v30 .. v30}, Ljj0;->c()Z

    .line 1006
    .line 1007
    .line 1008
    move-result v0

    .line 1009
    if-eqz v0, :cond_1b

    .line 1010
    .line 1011
    const-string v0, "Finalizing native report for session "

    .line 1012
    .line 1013
    invoke-static {v0, v9}, Ldi0;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1014
    .line 1015
    .line 1016
    move-result-object v0

    .line 1017
    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 1018
    .line 1019
    .line 1020
    move-result v1

    .line 1021
    if-eqz v1, :cond_1a

    .line 1022
    .line 1023
    invoke-static {v4, v0, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1024
    .line 1025
    .line 1026
    :cond_1a
    invoke-virtual/range {v30 .. v30}, Ljj0;->a()Lqv3;

    .line 1027
    .line 1028
    .line 1029
    move-result-object v0

    .line 1030
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1031
    .line 1032
    .line 1033
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1034
    .line 1035
    const-string v1, "No minidump data found for session "

    .line 1036
    .line 1037
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1038
    .line 1039
    .line 1040
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1041
    .line 1042
    .line 1043
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1044
    .line 1045
    .line 1046
    move-result-object v0

    .line 1047
    invoke-static {v4, v0, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1048
    .line 1049
    .line 1050
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1051
    .line 1052
    const-string v1, "No Tombstones data found for session "

    .line 1053
    .line 1054
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1055
    .line 1056
    .line 1057
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1058
    .line 1059
    .line 1060
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1061
    .line 1062
    .line 1063
    move-result-object v0

    .line 1064
    invoke-static {v4, v0, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1065
    .line 1066
    .line 1067
    const-string v0, "No native core present"

    .line 1068
    .line 1069
    invoke-static {v4, v0, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1070
    .line 1071
    .line 1072
    :cond_1b
    if-eqz p1, :cond_1c

    .line 1073
    .line 1074
    const/4 v1, 0x0

    .line 1075
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1076
    .line 1077
    .line 1078
    move-result-object v0

    .line 1079
    move-object/from16 v19, v0

    .line 1080
    .line 1081
    check-cast v19, Ljava/lang/String;

    .line 1082
    .line 1083
    move-object/from16 v0, v19

    .line 1084
    .line 1085
    goto :goto_f

    .line 1086
    :cond_1c
    move-object/from16 v2, p0

    .line 1087
    .line 1088
    const/4 v1, 0x0

    .line 1089
    iget-object v0, v2, Ldj0;->l:Laj0;

    .line 1090
    .line 1091
    invoke-virtual {v0, v11}, Laj0;->a(Ljava/lang/String;)V

    .line 1092
    .line 1093
    .line 1094
    const/4 v0, 0x0

    .line 1095
    :goto_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1096
    .line 1097
    .line 1098
    move-result-wide v2

    .line 1099
    const-wide/16 v7, 0x3e8

    .line 1100
    .line 1101
    div-long/2addr v2, v7

    .line 1102
    move-object/from16 v5, v31

    .line 1103
    .line 1104
    iget-object v5, v5, Lga0;->b:Ljava/lang/Object;

    .line 1105
    .line 1106
    check-cast v5, Lok0;

    .line 1107
    .line 1108
    iget-object v7, v5, Lok0;->b:Lq51;

    .line 1109
    .line 1110
    const-string v8, ".com.google.firebase.crashlytics"

    .line 1111
    .line 1112
    invoke-virtual {v7, v8}, Lq51;->a(Ljava/lang/String;)V

    .line 1113
    .line 1114
    .line 1115
    const-string v8, ".com.google.firebase.crashlytics-ndk"

    .line 1116
    .line 1117
    invoke-virtual {v7, v8}, Lq51;->a(Ljava/lang/String;)V

    .line 1118
    .line 1119
    .line 1120
    iget-object v8, v7, Lq51;->a:Ljava/lang/String;

    .line 1121
    .line 1122
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 1123
    .line 1124
    .line 1125
    move-result v8

    .line 1126
    if-nez v8, :cond_1d

    .line 1127
    .line 1128
    const-string v8, ".com.google.firebase.crashlytics.files.v1"

    .line 1129
    .line 1130
    invoke-virtual {v7, v8}, Lq51;->a(Ljava/lang/String;)V

    .line 1131
    .line 1132
    .line 1133
    new-instance v8, Ljava/lang/StringBuilder;

    .line 1134
    .line 1135
    const-string v9, ".com.google.firebase.crashlytics.files.v2"

    .line 1136
    .line 1137
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1138
    .line 1139
    .line 1140
    sget-object v9, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    .line 1141
    .line 1142
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1143
    .line 1144
    .line 1145
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1146
    .line 1147
    .line 1148
    move-result-object v8

    .line 1149
    iget-object v9, v7, Lq51;->b:Ljava/lang/Object;

    .line 1150
    .line 1151
    check-cast v9, Ljava/io/File;

    .line 1152
    .line 1153
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    .line 1154
    .line 1155
    .line 1156
    move-result v10

    .line 1157
    if-eqz v10, :cond_1d

    .line 1158
    .line 1159
    new-instance v10, Lp51;

    .line 1160
    .line 1161
    invoke-direct {v10, v8}, Lp51;-><init>(Ljava/lang/String;)V

    .line 1162
    .line 1163
    .line 1164
    invoke-virtual {v9, v10}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    .line 1165
    .line 1166
    .line 1167
    move-result-object v8

    .line 1168
    if-eqz v8, :cond_1d

    .line 1169
    .line 1170
    array-length v9, v8

    .line 1171
    move v10, v1

    .line 1172
    :goto_10
    if-ge v10, v9, :cond_1d

    .line 1173
    .line 1174
    aget-object v11, v8, v10

    .line 1175
    .line 1176
    invoke-virtual {v7, v11}, Lq51;->a(Ljava/lang/String;)V

    .line 1177
    .line 1178
    .line 1179
    add-int/lit8 v10, v10, 0x1

    .line 1180
    .line 1181
    goto :goto_10

    .line 1182
    :cond_1d
    invoke-virtual {v5}, Lok0;->c()Ljava/util/NavigableSet;

    .line 1183
    .line 1184
    .line 1185
    move-result-object v8

    .line 1186
    if-eqz v0, :cond_1e

    .line 1187
    .line 1188
    invoke-interface {v8, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1189
    .line 1190
    .line 1191
    :cond_1e
    invoke-interface {v8}, Ljava/util/Set;->size()I

    .line 1192
    .line 1193
    .line 1194
    move-result v0

    .line 1195
    move/from16 v9, v17

    .line 1196
    .line 1197
    if-gt v0, v9, :cond_1f

    .line 1198
    .line 1199
    goto :goto_12

    .line 1200
    :cond_1f
    :goto_11
    invoke-interface {v8}, Ljava/util/Set;->size()I

    .line 1201
    .line 1202
    .line 1203
    move-result v0

    .line 1204
    if-le v0, v9, :cond_21

    .line 1205
    .line 1206
    invoke-interface {v8}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    .line 1207
    .line 1208
    .line 1209
    move-result-object v0

    .line 1210
    check-cast v0, Ljava/lang/String;

    .line 1211
    .line 1212
    const-string v10, "Removing session over cap: "

    .line 1213
    .line 1214
    invoke-static {v10, v0}, Ldi0;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1215
    .line 1216
    .line 1217
    move-result-object v10

    .line 1218
    const/4 v11, 0x3

    .line 1219
    invoke-static {v4, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 1220
    .line 1221
    .line 1222
    move-result v12

    .line 1223
    if-eqz v12, :cond_20

    .line 1224
    .line 1225
    const/4 v11, 0x0

    .line 1226
    invoke-static {v4, v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1227
    .line 1228
    .line 1229
    :cond_20
    new-instance v10, Ljava/io/File;

    .line 1230
    .line 1231
    iget-object v11, v7, Lq51;->d:Ljava/lang/Object;

    .line 1232
    .line 1233
    check-cast v11, Ljava/io/File;

    .line 1234
    .line 1235
    invoke-direct {v10, v11, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1236
    .line 1237
    .line 1238
    invoke-static {v10}, Lq51;->d(Ljava/io/File;)Z

    .line 1239
    .line 1240
    .line 1241
    invoke-interface {v8, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1242
    .line 1243
    .line 1244
    goto :goto_11

    .line 1245
    :cond_21
    :goto_12
    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 1246
    .line 1247
    .line 1248
    move-result-object v8

    .line 1249
    :goto_13
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 1250
    .line 1251
    .line 1252
    move-result v0

    .line 1253
    if-eqz v0, :cond_32

    .line 1254
    .line 1255
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1256
    .line 1257
    .line 1258
    move-result-object v0

    .line 1259
    move-object v9, v0

    .line 1260
    check-cast v9, Ljava/lang/String;

    .line 1261
    .line 1262
    const-string v0, "Finalizing report for session "

    .line 1263
    .line 1264
    invoke-static {v0, v9}, Ldi0;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1265
    .line 1266
    .line 1267
    move-result-object v0

    .line 1268
    const/4 v10, 0x2

    .line 1269
    invoke-static {v4, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 1270
    .line 1271
    .line 1272
    move-result v11

    .line 1273
    if-eqz v11, :cond_22

    .line 1274
    .line 1275
    const/4 v11, 0x0

    .line 1276
    invoke-static {v4, v0, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1277
    .line 1278
    .line 1279
    :cond_22
    sget-object v10, Lok0;->g:Lnk0;

    .line 1280
    .line 1281
    sget-object v0, Lok0;->i:Lzi0;

    .line 1282
    .line 1283
    new-instance v11, Ljava/io/File;

    .line 1284
    .line 1285
    iget-object v12, v7, Lq51;->d:Ljava/lang/Object;

    .line 1286
    .line 1287
    check-cast v12, Ljava/io/File;

    .line 1288
    .line 1289
    invoke-direct {v11, v12, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1290
    .line 1291
    .line 1292
    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    .line 1293
    .line 1294
    .line 1295
    invoke-virtual {v11, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 1296
    .line 1297
    .line 1298
    move-result-object v0

    .line 1299
    invoke-static {v0}, Lq51;->e([Ljava/lang/Object;)Ljava/util/List;

    .line 1300
    .line 1301
    .line 1302
    move-result-object v0

    .line 1303
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 1304
    .line 1305
    .line 1306
    move-result v11

    .line 1307
    if-eqz v11, :cond_24

    .line 1308
    .line 1309
    const-string v0, "Session "

    .line 1310
    .line 1311
    const-string v10, " has no events."

    .line 1312
    .line 1313
    invoke-static {v0, v9, v10}, Ldi0;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1314
    .line 1315
    .line 1316
    move-result-object v0

    .line 1317
    const/4 v10, 0x2

    .line 1318
    invoke-static {v4, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 1319
    .line 1320
    .line 1321
    move-result v11

    .line 1322
    if-eqz v11, :cond_23

    .line 1323
    .line 1324
    const/4 v11, 0x0

    .line 1325
    invoke-static {v4, v0, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1326
    .line 1327
    .line 1328
    :cond_23
    const/4 v11, 0x3

    .line 1329
    const/4 v15, 0x0

    .line 1330
    :goto_14
    const/16 v18, 0x2

    .line 1331
    .line 1332
    goto/16 :goto_24

    .line 1333
    .line 1334
    :cond_24
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1335
    .line 1336
    .line 1337
    new-instance v11, Ljava/util/ArrayList;

    .line 1338
    .line 1339
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1340
    .line 1341
    .line 1342
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1343
    .line 1344
    .line 1345
    move-result-object v12

    .line 1346
    move v13, v1

    .line 1347
    :goto_15
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 1348
    .line 1349
    .line 1350
    move-result v0

    .line 1351
    if-eqz v0, :cond_27

    .line 1352
    .line 1353
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1354
    .line 1355
    .line 1356
    move-result-object v0

    .line 1357
    move-object v14, v0

    .line 1358
    check-cast v14, Ljava/io/File;

    .line 1359
    .line 1360
    :try_start_4
    invoke-static {v14}, Lok0;->e(Ljava/io/File;)Ljava/lang/String;

    .line 1361
    .line 1362
    .line 1363
    move-result-object v0

    .line 1364
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1365
    .line 1366
    .line 1367
    :try_start_5
    new-instance v15, Landroid/util/JsonReader;

    .line 1368
    .line 1369
    new-instance v1, Ljava/io/StringReader;

    .line 1370
    .line 1371
    invoke-direct {v1, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 1372
    .line 1373
    .line 1374
    invoke-direct {v15, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1375
    .line 1376
    .line 1377
    :try_start_6
    invoke-static {v15}, Lnk0;->e(Landroid/util/JsonReader;)Ldn;

    .line 1378
    .line 1379
    .line 1380
    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1381
    :try_start_7
    invoke-virtual {v15}, Landroid/util/JsonReader;->close()V
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 1382
    .line 1383
    .line 1384
    :try_start_8
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1385
    .line 1386
    .line 1387
    if-nez v13, :cond_26

    .line 1388
    .line 1389
    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 1390
    .line 1391
    .line 1392
    move-result-object v0

    .line 1393
    const-string v1, "event"

    .line 1394
    .line 1395
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1396
    .line 1397
    .line 1398
    move-result v1

    .line 1399
    if-eqz v1, :cond_25

    .line 1400
    .line 1401
    const-string v1, "_"

    .line 1402
    .line 1403
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 1404
    .line 1405
    .line 1406
    move-result v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 1407
    if-eqz v0, :cond_25

    .line 1408
    .line 1409
    goto :goto_16

    .line 1410
    :cond_25
    const/4 v0, 0x0

    .line 1411
    goto :goto_17

    .line 1412
    :catch_3
    move-exception v0

    .line 1413
    goto :goto_1a

    .line 1414
    :cond_26
    :goto_16
    move v0, v6

    .line 1415
    :goto_17
    move v13, v0

    .line 1416
    goto :goto_1b

    .line 1417
    :catch_4
    move-exception v0

    .line 1418
    goto :goto_19

    .line 1419
    :catchall_2
    move-exception v0

    .line 1420
    move-object v1, v0

    .line 1421
    :try_start_9
    invoke-virtual {v15}, Landroid/util/JsonReader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 1422
    .line 1423
    .line 1424
    goto :goto_18

    .line 1425
    :catchall_3
    move-exception v0

    .line 1426
    :try_start_a
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 1427
    .line 1428
    .line 1429
    :goto_18
    throw v1
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 1430
    :goto_19
    :try_start_b
    new-instance v1, Ljava/io/IOException;

    .line 1431
    .line 1432
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 1433
    .line 1434
    .line 1435
    throw v1
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    .line 1436
    :goto_1a
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1437
    .line 1438
    const-string v15, "Could not add event to report for "

    .line 1439
    .line 1440
    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1441
    .line 1442
    .line 1443
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1444
    .line 1445
    .line 1446
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1447
    .line 1448
    .line 1449
    move-result-object v1

    .line 1450
    invoke-static {v4, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1451
    .line 1452
    .line 1453
    :goto_1b
    const/4 v1, 0x0

    .line 1454
    goto :goto_15

    .line 1455
    :cond_27
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1456
    .line 1457
    .line 1458
    move-result v0

    .line 1459
    if-eqz v0, :cond_28

    .line 1460
    .line 1461
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1462
    .line 1463
    const-string v1, "Could not parse event files for session "

    .line 1464
    .line 1465
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1466
    .line 1467
    .line 1468
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1469
    .line 1470
    .line 1471
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1472
    .line 1473
    .line 1474
    move-result-object v0

    .line 1475
    const/4 v11, 0x0

    .line 1476
    invoke-static {v4, v0, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1477
    .line 1478
    .line 1479
    move-object v15, v11

    .line 1480
    const/4 v11, 0x3

    .line 1481
    goto/16 :goto_14

    .line 1482
    .line 1483
    :cond_28
    new-instance v0, Luc2;

    .line 1484
    .line 1485
    invoke-direct {v0, v7}, Luc2;-><init>(Lq51;)V

    .line 1486
    .line 1487
    .line 1488
    invoke-virtual {v0, v9}, Luc2;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 1489
    .line 1490
    .line 1491
    move-result-object v0

    .line 1492
    iget-object v1, v5, Lok0;->d:Laj0;

    .line 1493
    .line 1494
    iget-object v1, v1, Laj0;->b:Leh;

    .line 1495
    .line 1496
    monitor-enter v1

    .line 1497
    :try_start_c
    iget-object v12, v1, Leh;->p:Ljava/lang/Object;

    .line 1498
    .line 1499
    check-cast v12, Ljava/lang/String;

    .line 1500
    .line 1501
    invoke-static {v12, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1502
    .line 1503
    .line 1504
    move-result v12

    .line 1505
    if-eqz v12, :cond_29

    .line 1506
    .line 1507
    iget-object v12, v1, Leh;->q:Ljava/lang/Object;

    .line 1508
    .line 1509
    check-cast v12, Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 1510
    .line 1511
    monitor-exit v1

    .line 1512
    goto :goto_1d

    .line 1513
    :cond_29
    :try_start_d
    iget-object v12, v1, Leh;->o:Ljava/lang/Object;

    .line 1514
    .line 1515
    check-cast v12, Lq51;

    .line 1516
    .line 1517
    sget-object v14, Leh;->t:Lzi0;

    .line 1518
    .line 1519
    new-instance v15, Ljava/io/File;

    .line 1520
    .line 1521
    iget-object v12, v12, Lq51;->d:Ljava/lang/Object;

    .line 1522
    .line 1523
    check-cast v12, Ljava/io/File;

    .line 1524
    .line 1525
    invoke-direct {v15, v12, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1526
    .line 1527
    .line 1528
    invoke-virtual {v15}, Ljava/io/File;->mkdirs()Z

    .line 1529
    .line 1530
    .line 1531
    invoke-virtual {v15, v14}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 1532
    .line 1533
    .line 1534
    move-result-object v12

    .line 1535
    invoke-static {v12}, Lq51;->e([Ljava/lang/Object;)Ljava/util/List;

    .line 1536
    .line 1537
    .line 1538
    move-result-object v12

    .line 1539
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    .line 1540
    .line 1541
    .line 1542
    move-result v14

    .line 1543
    if-eqz v14, :cond_2a

    .line 1544
    .line 1545
    const-string v12, "Unable to read App Quality Sessions session id."

    .line 1546
    .line 1547
    const-string v14, "FirebaseCrashlytics"

    .line 1548
    .line 1549
    const/4 v15, 0x0

    .line 1550
    invoke-static {v14, v12, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1551
    .line 1552
    .line 1553
    const/4 v12, 0x0

    .line 1554
    goto :goto_1c

    .line 1555
    :cond_2a
    sget-object v14, Leh;->u:Lyb;

    .line 1556
    .line 1557
    invoke-static {v12, v14}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    .line 1558
    .line 1559
    .line 1560
    move-result-object v12

    .line 1561
    check-cast v12, Ljava/io/File;

    .line 1562
    .line 1563
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 1564
    .line 1565
    .line 1566
    move-result-object v12

    .line 1567
    move/from16 v14, v16

    .line 1568
    .line 1569
    invoke-virtual {v12, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1570
    .line 1571
    .line 1572
    move-result-object v12
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 1573
    :goto_1c
    monitor-exit v1

    .line 1574
    :goto_1d
    const-string v1, "report"

    .line 1575
    .line 1576
    invoke-virtual {v7, v9, v1}, Lq51;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 1577
    .line 1578
    .line 1579
    move-result-object v1

    .line 1580
    const-string v14, "appQualitySessionId: "

    .line 1581
    .line 1582
    :try_start_e
    invoke-static {v1}, Lok0;->e(Ljava/io/File;)Ljava/lang/String;

    .line 1583
    .line 1584
    .line 1585
    move-result-object v15

    .line 1586
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1587
    .line 1588
    .line 1589
    invoke-static {v15}, Lnk0;->i(Ljava/lang/String;)Lom;

    .line 1590
    .line 1591
    .line 1592
    move-result-object v10

    .line 1593
    invoke-virtual {v10}, Lom;->a()Lnm;

    .line 1594
    .line 1595
    .line 1596
    move-result-object v15

    .line 1597
    iget-object v10, v10, Lom;->k:Ljk0;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9

    .line 1598
    .line 1599
    if-eqz v10, :cond_2c

    .line 1600
    .line 1601
    :try_start_f
    invoke-virtual {v10}, Ljk0;->a()Lwm;

    .line 1602
    .line 1603
    .line 1604
    move-result-object v10

    .line 1605
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1606
    .line 1607
    .line 1608
    move-result-object v6

    .line 1609
    iput-object v6, v10, Lwm;->e:Ljava/lang/Long;

    .line 1610
    .line 1611
    iput-boolean v13, v10, Lwm;->f:Z

    .line 1612
    .line 1613
    iget-byte v6, v10, Lwm;->m:B
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5

    .line 1614
    .line 1615
    const/16 v18, 0x2

    .line 1616
    .line 1617
    or-int/lit8 v6, v6, 0x2

    .line 1618
    .line 1619
    int-to-byte v6, v6

    .line 1620
    :try_start_10
    iput-byte v6, v10, Lwm;->m:B

    .line 1621
    .line 1622
    if-eqz v0, :cond_2b

    .line 1623
    .line 1624
    new-instance v6, Lxn;

    .line 1625
    .line 1626
    invoke-direct {v6, v0}, Lxn;-><init>(Ljava/lang/String;)V

    .line 1627
    .line 1628
    .line 1629
    iput-object v6, v10, Lwm;->h:Lik0;

    .line 1630
    .line 1631
    :cond_2b
    invoke-virtual {v10}, Lwm;->a()Lxm;

    .line 1632
    .line 1633
    .line 1634
    move-result-object v0

    .line 1635
    iput-object v0, v15, Lnm;->j:Ljk0;

    .line 1636
    .line 1637
    goto :goto_1e

    .line 1638
    :catch_5
    move-exception v0

    .line 1639
    const/16 v18, 0x2

    .line 1640
    .line 1641
    goto/16 :goto_21

    .line 1642
    .line 1643
    :cond_2c
    const/16 v18, 0x2

    .line 1644
    .line 1645
    :goto_1e
    invoke-virtual {v15}, Lnm;->a()Lom;

    .line 1646
    .line 1647
    .line 1648
    move-result-object v0

    .line 1649
    invoke-virtual {v0}, Lom;->a()Lnm;

    .line 1650
    .line 1651
    .line 1652
    move-result-object v6

    .line 1653
    iput-object v12, v6, Lnm;->g:Ljava/lang/String;

    .line 1654
    .line 1655
    iget-object v0, v0, Lom;->k:Ljk0;

    .line 1656
    .line 1657
    if-eqz v0, :cond_2d

    .line 1658
    .line 1659
    invoke-virtual {v0}, Ljk0;->a()Lwm;

    .line 1660
    .line 1661
    .line 1662
    move-result-object v0

    .line 1663
    iput-object v12, v0, Lwm;->c:Ljava/lang/String;

    .line 1664
    .line 1665
    invoke-virtual {v0}, Lwm;->a()Lxm;

    .line 1666
    .line 1667
    .line 1668
    move-result-object v0

    .line 1669
    iput-object v0, v6, Lnm;->j:Ljk0;

    .line 1670
    .line 1671
    :cond_2d
    invoke-virtual {v6}, Lnm;->a()Lom;

    .line 1672
    .line 1673
    .line 1674
    move-result-object v0

    .line 1675
    iget-object v6, v0, Lom;->k:Ljk0;

    .line 1676
    .line 1677
    if-eqz v6, :cond_31

    .line 1678
    .line 1679
    invoke-virtual {v0}, Lom;->a()Lnm;

    .line 1680
    .line 1681
    .line 1682
    move-result-object v0

    .line 1683
    invoke-virtual {v6}, Ljk0;->a()Lwm;

    .line 1684
    .line 1685
    .line 1686
    move-result-object v6

    .line 1687
    iput-object v11, v6, Lwm;->k:Ljava/util/List;

    .line 1688
    .line 1689
    invoke-virtual {v6}, Lwm;->a()Lxm;

    .line 1690
    .line 1691
    .line 1692
    move-result-object v6

    .line 1693
    iput-object v6, v0, Lnm;->j:Ljk0;

    .line 1694
    .line 1695
    invoke-virtual {v0}, Lnm;->a()Lom;

    .line 1696
    .line 1697
    .line 1698
    move-result-object v0

    .line 1699
    iget-object v6, v0, Lom;->k:Ljk0;

    .line 1700
    .line 1701
    if-nez v6, :cond_2e

    .line 1702
    .line 1703
    const/4 v11, 0x3

    .line 1704
    const/4 v15, 0x0

    .line 1705
    goto :goto_24

    .line 1706
    :cond_2e
    new-instance v10, Ljava/lang/StringBuilder;

    .line 1707
    .line 1708
    invoke-direct {v10, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1709
    .line 1710
    .line 1711
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1712
    .line 1713
    .line 1714
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1715
    .line 1716
    .line 1717
    move-result-object v10
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_8

    .line 1718
    const/4 v11, 0x3

    .line 1719
    :try_start_11
    invoke-static {v4, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 1720
    .line 1721
    .line 1722
    move-result v12
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_7

    .line 1723
    if-eqz v12, :cond_2f

    .line 1724
    .line 1725
    const/4 v15, 0x0

    .line 1726
    :try_start_12
    invoke-static {v4, v10, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1727
    .line 1728
    .line 1729
    goto :goto_1f

    .line 1730
    :cond_2f
    const/4 v15, 0x0

    .line 1731
    :goto_1f
    if-eqz v13, :cond_30

    .line 1732
    .line 1733
    check-cast v6, Lxm;

    .line 1734
    .line 1735
    iget-object v6, v6, Lxm;->b:Ljava/lang/String;

    .line 1736
    .line 1737
    new-instance v10, Ljava/io/File;

    .line 1738
    .line 1739
    iget-object v12, v7, Lq51;->f:Ljava/lang/Object;

    .line 1740
    .line 1741
    check-cast v12, Ljava/io/File;

    .line 1742
    .line 1743
    invoke-direct {v10, v12, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1744
    .line 1745
    .line 1746
    goto :goto_20

    .line 1747
    :cond_30
    check-cast v6, Lxm;

    .line 1748
    .line 1749
    iget-object v6, v6, Lxm;->b:Ljava/lang/String;

    .line 1750
    .line 1751
    new-instance v10, Ljava/io/File;

    .line 1752
    .line 1753
    iget-object v12, v7, Lq51;->e:Ljava/lang/Object;

    .line 1754
    .line 1755
    check-cast v12, Ljava/io/File;

    .line 1756
    .line 1757
    invoke-direct {v10, v12, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1758
    .line 1759
    .line 1760
    :goto_20
    sget-object v6, Lnk0;->a:Ldd1;

    .line 1761
    .line 1762
    invoke-virtual {v6, v0}, Ldd1;->i(Ljava/lang/Object;)Ljava/lang/String;

    .line 1763
    .line 1764
    .line 1765
    move-result-object v0

    .line 1766
    invoke-static {v10, v0}, Lok0;->f(Ljava/io/File;Ljava/lang/String;)V

    .line 1767
    .line 1768
    .line 1769
    goto :goto_24

    .line 1770
    :catch_6
    move-exception v0

    .line 1771
    goto :goto_23

    .line 1772
    :catch_7
    move-exception v0

    .line 1773
    goto :goto_22

    .line 1774
    :catch_8
    move-exception v0

    .line 1775
    :goto_21
    const/4 v11, 0x3

    .line 1776
    :goto_22
    const/4 v15, 0x0

    .line 1777
    goto :goto_23

    .line 1778
    :cond_31
    const/4 v11, 0x3

    .line 1779
    const/4 v15, 0x0

    .line 1780
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1781
    .line 1782
    const-string v6, "Reports without sessions cannot have events added to them."

    .line 1783
    .line 1784
    invoke-direct {v0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1785
    .line 1786
    .line 1787
    throw v0
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_6

    .line 1788
    :catch_9
    move-exception v0

    .line 1789
    const/4 v11, 0x3

    .line 1790
    const/4 v15, 0x0

    .line 1791
    const/16 v18, 0x2

    .line 1792
    .line 1793
    :goto_23
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1794
    .line 1795
    const-string v10, "Could not synthesize final report file for "

    .line 1796
    .line 1797
    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1798
    .line 1799
    .line 1800
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1801
    .line 1802
    .line 1803
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1804
    .line 1805
    .line 1806
    move-result-object v1

    .line 1807
    invoke-static {v4, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1808
    .line 1809
    .line 1810
    :goto_24
    new-instance v0, Ljava/io/File;

    .line 1811
    .line 1812
    iget-object v1, v7, Lq51;->d:Ljava/lang/Object;

    .line 1813
    .line 1814
    check-cast v1, Ljava/io/File;

    .line 1815
    .line 1816
    invoke-direct {v0, v1, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1817
    .line 1818
    .line 1819
    invoke-static {v0}, Lq51;->d(Ljava/io/File;)Z

    .line 1820
    .line 1821
    .line 1822
    const/4 v1, 0x0

    .line 1823
    const/4 v6, 0x1

    .line 1824
    const/16 v16, 0x4

    .line 1825
    .line 1826
    goto/16 :goto_13

    .line 1827
    .line 1828
    :catchall_4
    move-exception v0

    .line 1829
    :try_start_13
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    .line 1830
    throw v0

    .line 1831
    :cond_32
    iget-object v0, v5, Lok0;->c:Led0;

    .line 1832
    .line 1833
    invoke-virtual {v0}, Led0;->e()Lmk3;

    .line 1834
    .line 1835
    .line 1836
    move-result-object v0

    .line 1837
    iget-object v0, v0, Lmk3;->a:Lt72;

    .line 1838
    .line 1839
    invoke-virtual {v5}, Lok0;->b()Ljava/util/ArrayList;

    .line 1840
    .line 1841
    .line 1842
    move-result-object v0

    .line 1843
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1844
    .line 1845
    .line 1846
    move-result v1

    .line 1847
    const/4 v14, 0x4

    .line 1848
    if-gt v1, v14, :cond_33

    .line 1849
    .line 1850
    goto :goto_26

    .line 1851
    :cond_33
    invoke-virtual {v0, v14, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 1852
    .line 1853
    .line 1854
    move-result-object v0

    .line 1855
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1856
    .line 1857
    .line 1858
    move-result-object v0

    .line 1859
    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1860
    .line 1861
    .line 1862
    move-result v1

    .line 1863
    if-eqz v1, :cond_34

    .line 1864
    .line 1865
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1866
    .line 1867
    .line 1868
    move-result-object v1

    .line 1869
    check-cast v1, Ljava/io/File;

    .line 1870
    .line 1871
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1872
    .line 1873
    .line 1874
    goto :goto_25

    .line 1875
    :cond_34
    :goto_26
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 33

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v3, p1

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    const-wide/16 v7, 0x3e8

    .line 10
    .line 11
    div-long v9, v1, v7

    .line 12
    .line 13
    const-string v1, "Opening a new session with ID "

    .line 14
    .line 15
    invoke-static {v1, v3}, Ldi0;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "FirebaseCrashlytics"

    .line 20
    .line 21
    const/4 v11, 0x3

    .line 22
    invoke-static {v2, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/4 v12, 0x0

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    const-string v2, "FirebaseCrashlytics"

    .line 30
    .line 31
    invoke-static {v2, v1, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 32
    .line 33
    .line 34
    :cond_0
    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 35
    .line 36
    iget-object v1, v0, Ldj0;->f:Lsn1;

    .line 37
    .line 38
    iget-object v2, v0, Ldj0;->h:Ldh;

    .line 39
    .line 40
    iget-object v15, v1, Lsn1;->c:Ljava/lang/String;

    .line 41
    .line 42
    iget-object v4, v2, Ldh;->e:Ljava/lang/Object;

    .line 43
    .line 44
    move-object/from16 v16, v4

    .line 45
    .line 46
    check-cast v16, Ljava/lang/String;

    .line 47
    .line 48
    iget-object v4, v2, Ldh;->f:Ljava/lang/Object;

    .line 49
    .line 50
    move-object/from16 v17, v4

    .line 51
    .line 52
    check-cast v17, Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v1}, Lsn1;->c()Ljo;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    iget-object v1, v1, Ljo;->a:Ljava/lang/String;

    .line 59
    .line 60
    iget-object v4, v2, Ldh;->c:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v4, Ljava/lang/String;

    .line 63
    .line 64
    const/16 v21, 0x1

    .line 65
    .line 66
    if-eqz v4, :cond_1

    .line 67
    .line 68
    const/4 v4, 0x4

    .line 69
    goto :goto_0

    .line 70
    :cond_1
    move/from16 v4, v21

    .line 71
    .line 72
    :goto_0
    invoke-static {v4}, Ldi0;->j(I)I

    .line 73
    .line 74
    .line 75
    move-result v19

    .line 76
    iget-object v2, v2, Ldh;->h:Ljava/lang/Object;

    .line 77
    .line 78
    move-object/from16 v20, v2

    .line 79
    .line 80
    check-cast v20, Lgw4;

    .line 81
    .line 82
    new-instance v14, Lcp;

    .line 83
    .line 84
    move-object/from16 v18, v1

    .line 85
    .line 86
    invoke-direct/range {v14 .. v20}, Lcp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILgw4;)V

    .line 87
    .line 88
    .line 89
    sget-object v15, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 90
    .line 91
    sget-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    .line 92
    .line 93
    invoke-static {}, Lw80;->C()Z

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    new-instance v4, Lep;

    .line 98
    .line 99
    invoke-direct {v4, v2}, Lep;-><init>(Z)V

    .line 100
    .line 101
    .line 102
    iget-object v2, v0, Ldj0;->a:Landroid/content/Context;

    .line 103
    .line 104
    new-instance v6, Landroid/os/StatFs;

    .line 105
    .line 106
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 107
    .line 108
    .line 109
    move-result-object v16

    .line 110
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    invoke-direct {v6, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockCount()I

    .line 118
    .line 119
    .line 120
    move-result v5

    .line 121
    move-wide/from16 v18, v7

    .line 122
    .line 123
    int-to-long v7, v5

    .line 124
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    .line 125
    .line 126
    .line 127
    move-result v5

    .line 128
    int-to-long v5, v5

    .line 129
    mul-long v27, v7, v5

    .line 130
    .line 131
    sget-object v5, Lv80;->n:Lv80;

    .line 132
    .line 133
    const-string v6, "FirebaseCrashlytics"

    .line 134
    .line 135
    sget-object v7, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 136
    .line 137
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 138
    .line 139
    .line 140
    move-result v8

    .line 141
    const/4 v11, 0x2

    .line 142
    if-eqz v8, :cond_2

    .line 143
    .line 144
    const-string v8, "Architecture#getValue()::Build.CPU_ABI returned null or empty"

    .line 145
    .line 146
    invoke-static {v6, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 147
    .line 148
    .line 149
    move-result v20

    .line 150
    if-eqz v20, :cond_4

    .line 151
    .line 152
    invoke-static {v6, v8, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 153
    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_2
    invoke-virtual {v7, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v6

    .line 160
    sget-object v8, Lv80;->o:Ljava/util/HashMap;

    .line 161
    .line 162
    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v6

    .line 166
    check-cast v6, Lv80;

    .line 167
    .line 168
    if-nez v6, :cond_3

    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_3
    move-object v5, v6

    .line 172
    :cond_4
    :goto_1
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 173
    .line 174
    .line 175
    move-result v23

    .line 176
    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 177
    .line 178
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 179
    .line 180
    .line 181
    move-result-object v5

    .line 182
    invoke-virtual {v5}, Ljava/lang/Runtime;->availableProcessors()I

    .line 183
    .line 184
    .line 185
    move-result v24

    .line 186
    invoke-static {v2}, Lw80;->k(Landroid/content/Context;)J

    .line 187
    .line 188
    .line 189
    move-result-wide v25

    .line 190
    invoke-static {}, Lw80;->B()Z

    .line 191
    .line 192
    .line 193
    move-result v29

    .line 194
    invoke-static {}, Lw80;->w()I

    .line 195
    .line 196
    .line 197
    move-result v30

    .line 198
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 199
    .line 200
    sget-object v5, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 201
    .line 202
    new-instance v22, Ldp;

    .line 203
    .line 204
    invoke-direct/range {v22 .. v30}, Ldp;-><init>(IIJJZI)V

    .line 205
    .line 206
    .line 207
    move/from16 v20, v11

    .line 208
    .line 209
    move-object/from16 v6, v22

    .line 210
    .line 211
    iget-object v11, v0, Ldj0;->j:Ljj0;

    .line 212
    .line 213
    new-instance v12, Lbp;

    .line 214
    .line 215
    invoke-direct {v12, v14, v4, v6}, Lbp;-><init>(Lcp;Lep;Ldp;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v11, v3, v9, v10, v12}, Ljj0;->d(Ljava/lang/String;JLbp;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 222
    .line 223
    .line 224
    move-result v4

    .line 225
    if-eqz v4, :cond_5

    .line 226
    .line 227
    if-eqz v3, :cond_5

    .line 228
    .line 229
    move-object v4, v2

    .line 230
    iget-object v2, v0, Ldj0;->d:Lq51;

    .line 231
    .line 232
    iget-object v11, v2, Lq51;->a:Ljava/lang/String;

    .line 233
    .line 234
    monitor-enter v11

    .line 235
    :try_start_0
    iput-object v3, v2, Lq51;->a:Ljava/lang/String;

    .line 236
    .line 237
    iget-object v6, v2, Lq51;->d:Ljava/lang/Object;

    .line 238
    .line 239
    check-cast v6, Lmu0;

    .line 240
    .line 241
    iget-object v6, v6, Lmu0;->b:Ljava/lang/Object;

    .line 242
    .line 243
    check-cast v6, Ljava/util/concurrent/atomic/AtomicMarkableReference;

    .line 244
    .line 245
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->getReference()Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v6

    .line 249
    check-cast v6, Ltx1;

    .line 250
    .line 251
    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    :try_start_1
    new-instance v12, Ljava/util/HashMap;

    .line 253
    .line 254
    iget-object v14, v6, Ltx1;->a:Ljava/util/HashMap;

    .line 255
    .line 256
    invoke-direct {v12, v14}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 257
    .line 258
    .line 259
    invoke-static {v12}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 260
    .line 261
    .line 262
    move-result-object v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 263
    :try_start_2
    monitor-exit v6

    .line 264
    iget-object v6, v2, Lq51;->f:Ljava/lang/Object;

    .line 265
    .line 266
    check-cast v6, Laa3;

    .line 267
    .line 268
    invoke-virtual {v6}, Laa3;->a()Ljava/util/List;

    .line 269
    .line 270
    .line 271
    move-result-object v6

    .line 272
    iget-object v14, v2, Lq51;->c:Ljava/lang/Object;

    .line 273
    .line 274
    check-cast v14, Leh;

    .line 275
    .line 276
    iget-object v14, v14, Leh;->p:Ljava/lang/Object;

    .line 277
    .line 278
    check-cast v14, Lqk0;

    .line 279
    .line 280
    move-object/from16 v23, v1

    .line 281
    .line 282
    new-instance v1, Lyp0;

    .line 283
    .line 284
    move-object/from16 v24, v5

    .line 285
    .line 286
    move-object v5, v6

    .line 287
    const/4 v6, 0x2

    .line 288
    move-object/from16 v31, v4

    .line 289
    .line 290
    move-object/from16 v17, v8

    .line 291
    .line 292
    move-object v4, v12

    .line 293
    move-object/from16 v12, v23

    .line 294
    .line 295
    move-object/from16 v32, v24

    .line 296
    .line 297
    const/4 v8, 0x4

    .line 298
    invoke-direct/range {v1 .. v6}, Lyp0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v14, v1}, Lqk0;->a(Ljava/lang/Runnable;)Lef5;

    .line 302
    .line 303
    .line 304
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 305
    goto :goto_3

    .line 306
    :catchall_0
    move-exception v0

    .line 307
    goto :goto_2

    .line 308
    :catchall_1
    move-exception v0

    .line 309
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 310
    :try_start_4
    throw v0

    .line 311
    :goto_2
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 312
    throw v0

    .line 313
    :cond_5
    move-object v12, v1

    .line 314
    move-object/from16 v31, v2

    .line 315
    .line 316
    move-object/from16 v32, v5

    .line 317
    .line 318
    move-object/from16 v17, v8

    .line 319
    .line 320
    const/4 v8, 0x4

    .line 321
    :goto_3
    iget-object v1, v0, Ldj0;->i:Lgw4;

    .line 322
    .line 323
    iget-object v2, v1, Lgw4;->p:Ljava/lang/Object;

    .line 324
    .line 325
    check-cast v2, Lh51;

    .line 326
    .line 327
    invoke-interface {v2}, Lh51;->a()V

    .line 328
    .line 329
    .line 330
    sget-object v2, Lgw4;->r:Lb21;

    .line 331
    .line 332
    iput-object v2, v1, Lgw4;->p:Ljava/lang/Object;

    .line 333
    .line 334
    if-nez v3, :cond_6

    .line 335
    .line 336
    goto :goto_4

    .line 337
    :cond_6
    iget-object v2, v1, Lgw4;->o:Ljava/lang/Object;

    .line 338
    .line 339
    check-cast v2, Lq51;

    .line 340
    .line 341
    const-string v4, "userlog"

    .line 342
    .line 343
    invoke-virtual {v2, v3, v4}, Lq51;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 344
    .line 345
    .line 346
    move-result-object v2

    .line 347
    new-instance v4, Le13;

    .line 348
    .line 349
    invoke-direct {v4, v2}, Le13;-><init>(Ljava/io/File;)V

    .line 350
    .line 351
    .line 352
    iput-object v4, v1, Lgw4;->p:Ljava/lang/Object;

    .line 353
    .line 354
    :goto_4
    iget-object v1, v0, Ldj0;->l:Laj0;

    .line 355
    .line 356
    invoke-virtual {v1, v3}, Laj0;->a(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    iget-object v0, v0, Ldj0;->m:Lga0;

    .line 360
    .line 361
    iget-object v1, v0, Lga0;->a:Ljava/lang/Object;

    .line 362
    .line 363
    check-cast v1, Llk0;

    .line 364
    .line 365
    sget-object v2, Lkk0;->a:Ljava/nio/charset/Charset;

    .line 366
    .line 367
    new-instance v2, Lnm;

    .line 368
    .line 369
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 370
    .line 371
    .line 372
    const-string v4, "20.0.6"

    .line 373
    .line 374
    iput-object v4, v2, Lnm;->a:Ljava/lang/String;

    .line 375
    .line 376
    iget-object v4, v1, Llk0;->c:Ldh;

    .line 377
    .line 378
    iget-object v5, v4, Ldh;->a:Ljava/lang/Object;

    .line 379
    .line 380
    check-cast v5, Ljava/lang/String;

    .line 381
    .line 382
    if-eqz v5, :cond_18

    .line 383
    .line 384
    iput-object v5, v2, Lnm;->b:Ljava/lang/String;

    .line 385
    .line 386
    iget-object v5, v1, Llk0;->b:Lsn1;

    .line 387
    .line 388
    invoke-virtual {v5}, Lsn1;->c()Ljo;

    .line 389
    .line 390
    .line 391
    move-result-object v6

    .line 392
    iget-object v6, v6, Ljo;->a:Ljava/lang/String;

    .line 393
    .line 394
    if-eqz v6, :cond_17

    .line 395
    .line 396
    iput-object v6, v2, Lnm;->d:Ljava/lang/String;

    .line 397
    .line 398
    invoke-virtual {v5}, Lsn1;->c()Ljo;

    .line 399
    .line 400
    .line 401
    move-result-object v6

    .line 402
    iget-object v6, v6, Ljo;->b:Ljava/lang/String;

    .line 403
    .line 404
    iput-object v6, v2, Lnm;->e:Ljava/lang/String;

    .line 405
    .line 406
    invoke-virtual {v5}, Lsn1;->c()Ljo;

    .line 407
    .line 408
    .line 409
    move-result-object v6

    .line 410
    iget-object v6, v6, Ljo;->c:Ljava/lang/String;

    .line 411
    .line 412
    iput-object v6, v2, Lnm;->f:Ljava/lang/String;

    .line 413
    .line 414
    iget-object v6, v4, Ldh;->e:Ljava/lang/Object;

    .line 415
    .line 416
    check-cast v6, Ljava/lang/String;

    .line 417
    .line 418
    if-eqz v6, :cond_16

    .line 419
    .line 420
    iput-object v6, v2, Lnm;->h:Ljava/lang/String;

    .line 421
    .line 422
    iget-object v11, v4, Ldh;->f:Ljava/lang/Object;

    .line 423
    .line 424
    check-cast v11, Ljava/lang/String;

    .line 425
    .line 426
    if-eqz v11, :cond_15

    .line 427
    .line 428
    iput-object v11, v2, Lnm;->i:Ljava/lang/String;

    .line 429
    .line 430
    iput v8, v2, Lnm;->c:I

    .line 431
    .line 432
    iget-byte v14, v2, Lnm;->m:B

    .line 433
    .line 434
    or-int/lit8 v14, v14, 0x1

    .line 435
    .line 436
    int-to-byte v14, v14

    .line 437
    iput-byte v14, v2, Lnm;->m:B

    .line 438
    .line 439
    new-instance v14, Lwm;

    .line 440
    .line 441
    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    .line 442
    .line 443
    .line 444
    move/from16 v30, v8

    .line 445
    .line 446
    const/4 v8, 0x0

    .line 447
    iput-boolean v8, v14, Lwm;->f:Z

    .line 448
    .line 449
    iget-byte v8, v14, Lwm;->m:B

    .line 450
    .line 451
    or-int/lit8 v8, v8, 0x2

    .line 452
    .line 453
    int-to-byte v8, v8

    .line 454
    iput-wide v9, v14, Lwm;->d:J

    .line 455
    .line 456
    or-int/lit8 v8, v8, 0x1

    .line 457
    .line 458
    int-to-byte v8, v8

    .line 459
    iput-byte v8, v14, Lwm;->m:B

    .line 460
    .line 461
    if-eqz v3, :cond_14

    .line 462
    .line 463
    iput-object v3, v14, Lwm;->b:Ljava/lang/String;

    .line 464
    .line 465
    sget-object v3, Llk0;->g:Ljava/lang/String;

    .line 466
    .line 467
    if-eqz v3, :cond_13

    .line 468
    .line 469
    iput-object v3, v14, Lwm;->a:Ljava/lang/String;

    .line 470
    .line 471
    iget-object v3, v5, Lsn1;->c:Ljava/lang/String;

    .line 472
    .line 473
    if-eqz v3, :cond_12

    .line 474
    .line 475
    invoke-virtual {v5}, Lsn1;->c()Ljo;

    .line 476
    .line 477
    .line 478
    move-result-object v5

    .line 479
    iget-object v5, v5, Ljo;->a:Ljava/lang/String;

    .line 480
    .line 481
    iget-object v4, v4, Ldh;->h:Ljava/lang/Object;

    .line 482
    .line 483
    check-cast v4, Lgw4;

    .line 484
    .line 485
    iget-object v8, v4, Lgw4;->p:Ljava/lang/Object;

    .line 486
    .line 487
    check-cast v8, Lgw4;

    .line 488
    .line 489
    if-nez v8, :cond_7

    .line 490
    .line 491
    new-instance v8, Lgw4;

    .line 492
    .line 493
    invoke-direct {v8, v4}, Lgw4;-><init>(Lgw4;)V

    .line 494
    .line 495
    .line 496
    iput-object v8, v4, Lgw4;->p:Ljava/lang/Object;

    .line 497
    .line 498
    :cond_7
    iget-object v8, v4, Lgw4;->p:Ljava/lang/Object;

    .line 499
    .line 500
    check-cast v8, Lgw4;

    .line 501
    .line 502
    iget-object v9, v8, Lgw4;->o:Ljava/lang/Object;

    .line 503
    .line 504
    move-object/from16 v28, v9

    .line 505
    .line 506
    check-cast v28, Ljava/lang/String;

    .line 507
    .line 508
    if-nez v8, :cond_8

    .line 509
    .line 510
    new-instance v8, Lgw4;

    .line 511
    .line 512
    invoke-direct {v8, v4}, Lgw4;-><init>(Lgw4;)V

    .line 513
    .line 514
    .line 515
    iput-object v8, v4, Lgw4;->p:Ljava/lang/Object;

    .line 516
    .line 517
    :cond_8
    iget-object v4, v4, Lgw4;->p:Ljava/lang/Object;

    .line 518
    .line 519
    check-cast v4, Lgw4;

    .line 520
    .line 521
    iget-object v4, v4, Lgw4;->p:Ljava/lang/Object;

    .line 522
    .line 523
    move-object/from16 v29, v4

    .line 524
    .line 525
    check-cast v29, Ljava/lang/String;

    .line 526
    .line 527
    new-instance v23, Lym;

    .line 528
    .line 529
    move-object/from16 v24, v3

    .line 530
    .line 531
    move-object/from16 v27, v5

    .line 532
    .line 533
    move-object/from16 v25, v6

    .line 534
    .line 535
    move-object/from16 v26, v11

    .line 536
    .line 537
    invoke-direct/range {v23 .. v29}, Lym;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    .line 539
    .line 540
    move-object/from16 v3, v23

    .line 541
    .line 542
    iput-object v3, v14, Lwm;->g:Lrj0;

    .line 543
    .line 544
    new-instance v3, Lvn;

    .line 545
    .line 546
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 547
    .line 548
    .line 549
    const/4 v4, 0x3

    .line 550
    iput v4, v3, Lvn;->a:I

    .line 551
    .line 552
    iget-byte v4, v3, Lvn;->e:B

    .line 553
    .line 554
    or-int/lit8 v4, v4, 0x1

    .line 555
    .line 556
    int-to-byte v4, v4

    .line 557
    iput-byte v4, v3, Lvn;->e:B

    .line 558
    .line 559
    if-eqz v15, :cond_11

    .line 560
    .line 561
    iput-object v15, v3, Lvn;->b:Ljava/lang/String;

    .line 562
    .line 563
    if-eqz v12, :cond_10

    .line 564
    .line 565
    iput-object v12, v3, Lvn;->c:Ljava/lang/String;

    .line 566
    .line 567
    invoke-static {}, Lw80;->C()Z

    .line 568
    .line 569
    .line 570
    move-result v4

    .line 571
    iput-boolean v4, v3, Lvn;->d:Z

    .line 572
    .line 573
    iget-byte v4, v3, Lvn;->e:B

    .line 574
    .line 575
    or-int/lit8 v4, v4, 0x2

    .line 576
    .line 577
    int-to-byte v4, v4

    .line 578
    iput-byte v4, v3, Lvn;->e:B

    .line 579
    .line 580
    invoke-virtual {v3}, Lvn;->a()Lwn;

    .line 581
    .line 582
    .line 583
    move-result-object v3

    .line 584
    iput-object v3, v14, Lwm;->i:Lhk0;

    .line 585
    .line 586
    new-instance v3, Landroid/os/StatFs;

    .line 587
    .line 588
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 589
    .line 590
    .line 591
    move-result-object v4

    .line 592
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 593
    .line 594
    .line 595
    move-result-object v4

    .line 596
    invoke-direct {v3, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 597
    .line 598
    .line 599
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 600
    .line 601
    .line 602
    move-result v4

    .line 603
    const/4 v5, 0x7

    .line 604
    if-eqz v4, :cond_9

    .line 605
    .line 606
    goto :goto_5

    .line 607
    :cond_9
    sget-object v4, Llk0;->f:Ljava/util/HashMap;

    .line 608
    .line 609
    invoke-virtual {v7, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 610
    .line 611
    .line 612
    move-result-object v6

    .line 613
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    .line 615
    .line 616
    move-result-object v4

    .line 617
    check-cast v4, Ljava/lang/Integer;

    .line 618
    .line 619
    if-nez v4, :cond_a

    .line 620
    .line 621
    goto :goto_5

    .line 622
    :cond_a
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 623
    .line 624
    .line 625
    move-result v5

    .line 626
    :goto_5
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 627
    .line 628
    .line 629
    move-result-object v4

    .line 630
    invoke-virtual {v4}, Ljava/lang/Runtime;->availableProcessors()I

    .line 631
    .line 632
    .line 633
    move-result v4

    .line 634
    iget-object v1, v1, Llk0;->a:Landroid/content/Context;

    .line 635
    .line 636
    invoke-static {v1}, Lw80;->k(Landroid/content/Context;)J

    .line 637
    .line 638
    .line 639
    move-result-wide v6

    .line 640
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockCount()I

    .line 641
    .line 642
    .line 643
    move-result v1

    .line 644
    int-to-long v8, v1

    .line 645
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    .line 646
    .line 647
    .line 648
    move-result v1

    .line 649
    int-to-long v10, v1

    .line 650
    mul-long/2addr v8, v10

    .line 651
    invoke-static {}, Lw80;->B()Z

    .line 652
    .line 653
    .line 654
    move-result v1

    .line 655
    invoke-static {}, Lw80;->w()I

    .line 656
    .line 657
    .line 658
    move-result v3

    .line 659
    new-instance v10, Lan;

    .line 660
    .line 661
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 662
    .line 663
    .line 664
    iput v5, v10, Lan;->a:I

    .line 665
    .line 666
    iget-byte v5, v10, Lan;->j:B

    .line 667
    .line 668
    or-int/lit8 v5, v5, 0x1

    .line 669
    .line 670
    int-to-byte v5, v5

    .line 671
    iput-byte v5, v10, Lan;->j:B

    .line 672
    .line 673
    if-eqz v17, :cond_f

    .line 674
    .line 675
    move-object/from16 v11, v17

    .line 676
    .line 677
    iput-object v11, v10, Lan;->b:Ljava/lang/String;

    .line 678
    .line 679
    iput v4, v10, Lan;->c:I

    .line 680
    .line 681
    or-int/lit8 v4, v5, 0x2

    .line 682
    .line 683
    int-to-byte v4, v4

    .line 684
    iput-wide v6, v10, Lan;->d:J

    .line 685
    .line 686
    or-int/lit8 v4, v4, 0x4

    .line 687
    .line 688
    int-to-byte v4, v4

    .line 689
    iput-wide v8, v10, Lan;->e:J

    .line 690
    .line 691
    or-int/lit8 v4, v4, 0x8

    .line 692
    .line 693
    int-to-byte v4, v4

    .line 694
    iput-boolean v1, v10, Lan;->f:Z

    .line 695
    .line 696
    or-int/lit8 v1, v4, 0x10

    .line 697
    .line 698
    int-to-byte v1, v1

    .line 699
    iput v3, v10, Lan;->g:I

    .line 700
    .line 701
    or-int/lit8 v1, v1, 0x20

    .line 702
    .line 703
    int-to-byte v1, v1

    .line 704
    iput-byte v1, v10, Lan;->j:B

    .line 705
    .line 706
    move-object/from16 v4, v31

    .line 707
    .line 708
    if-eqz v4, :cond_e

    .line 709
    .line 710
    iput-object v4, v10, Lan;->h:Ljava/lang/String;

    .line 711
    .line 712
    move-object/from16 v1, v32

    .line 713
    .line 714
    if-eqz v1, :cond_d

    .line 715
    .line 716
    iput-object v1, v10, Lan;->i:Ljava/lang/String;

    .line 717
    .line 718
    invoke-virtual {v10}, Lan;->a()Lbn;

    .line 719
    .line 720
    .line 721
    move-result-object v1

    .line 722
    iput-object v1, v14, Lwm;->j:Lsj0;

    .line 723
    .line 724
    const/4 v4, 0x3

    .line 725
    iput v4, v14, Lwm;->l:I

    .line 726
    .line 727
    iget-byte v1, v14, Lwm;->m:B

    .line 728
    .line 729
    or-int/lit8 v1, v1, 0x4

    .line 730
    .line 731
    int-to-byte v1, v1

    .line 732
    iput-byte v1, v14, Lwm;->m:B

    .line 733
    .line 734
    invoke-virtual {v14}, Lwm;->a()Lxm;

    .line 735
    .line 736
    .line 737
    move-result-object v1

    .line 738
    iput-object v1, v2, Lnm;->j:Ljk0;

    .line 739
    .line 740
    invoke-virtual {v2}, Lnm;->a()Lom;

    .line 741
    .line 742
    .line 743
    move-result-object v1

    .line 744
    iget-object v0, v0, Lga0;->b:Ljava/lang/Object;

    .line 745
    .line 746
    check-cast v0, Lok0;

    .line 747
    .line 748
    iget-object v0, v0, Lok0;->b:Lq51;

    .line 749
    .line 750
    const-string v2, "FirebaseCrashlytics"

    .line 751
    .line 752
    iget-object v3, v1, Lom;->k:Ljk0;

    .line 753
    .line 754
    if-nez v3, :cond_b

    .line 755
    .line 756
    const-string v0, "Could not get session for report"

    .line 757
    .line 758
    const/4 v4, 0x3

    .line 759
    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 760
    .line 761
    .line 762
    move-result v1

    .line 763
    if-eqz v1, :cond_c

    .line 764
    .line 765
    const/4 v1, 0x0

    .line 766
    invoke-static {v2, v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 767
    .line 768
    .line 769
    return-void

    .line 770
    :cond_b
    move-object v4, v3

    .line 771
    check-cast v4, Lxm;

    .line 772
    .line 773
    iget-object v4, v4, Lxm;->b:Ljava/lang/String;

    .line 774
    .line 775
    :try_start_5
    sget-object v5, Lok0;->g:Lnk0;

    .line 776
    .line 777
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 778
    .line 779
    .line 780
    sget-object v5, Lnk0;->a:Ldd1;

    .line 781
    .line 782
    invoke-virtual {v5, v1}, Ldd1;->i(Ljava/lang/Object;)Ljava/lang/String;

    .line 783
    .line 784
    .line 785
    move-result-object v1

    .line 786
    const-string v5, "report"

    .line 787
    .line 788
    invoke-virtual {v0, v4, v5}, Lq51;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 789
    .line 790
    .line 791
    move-result-object v5

    .line 792
    invoke-static {v5, v1}, Lok0;->f(Ljava/io/File;Ljava/lang/String;)V

    .line 793
    .line 794
    .line 795
    const-string v1, "start-time"

    .line 796
    .line 797
    invoke-virtual {v0, v4, v1}, Lq51;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 798
    .line 799
    .line 800
    move-result-object v0

    .line 801
    const-string v1, ""

    .line 802
    .line 803
    check-cast v3, Lxm;

    .line 804
    .line 805
    iget-wide v5, v3, Lxm;->d:J

    .line 806
    .line 807
    new-instance v3, Ljava/io/OutputStreamWriter;

    .line 808
    .line 809
    new-instance v7, Ljava/io/FileOutputStream;

    .line 810
    .line 811
    invoke-direct {v7, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 812
    .line 813
    .line 814
    sget-object v8, Lok0;->e:Ljava/nio/charset/Charset;

    .line 815
    .line 816
    invoke-direct {v3, v7, v8}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 817
    .line 818
    .line 819
    :try_start_6
    invoke-virtual {v3, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 820
    .line 821
    .line 822
    mul-long v5, v5, v18

    .line 823
    .line 824
    invoke-virtual {v0, v5, v6}, Ljava/io/File;->setLastModified(J)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 825
    .line 826
    .line 827
    :try_start_7
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 828
    .line 829
    .line 830
    return-void

    .line 831
    :catchall_2
    move-exception v0

    .line 832
    move-object v1, v0

    .line 833
    :try_start_8
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 834
    .line 835
    .line 836
    goto :goto_6

    .line 837
    :catchall_3
    move-exception v0

    .line 838
    :try_start_9
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 839
    .line 840
    .line 841
    :goto_6
    throw v1
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    .line 842
    :catch_0
    move-exception v0

    .line 843
    const-string v1, "Could not persist report for session "

    .line 844
    .line 845
    invoke-static {v1, v4}, Ldi0;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 846
    .line 847
    .line 848
    move-result-object v1

    .line 849
    const/4 v4, 0x3

    .line 850
    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 851
    .line 852
    .line 853
    move-result v3

    .line 854
    if-eqz v3, :cond_c

    .line 855
    .line 856
    invoke-static {v2, v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 857
    .line 858
    .line 859
    :cond_c
    return-void

    .line 860
    :cond_d
    const-string v0, "Null modelClass"

    .line 861
    .line 862
    invoke-static {v0}, Lq73;->r(Ljava/lang/String;)V

    .line 863
    .line 864
    .line 865
    return-void

    .line 866
    :cond_e
    const-string v0, "Null manufacturer"

    .line 867
    .line 868
    invoke-static {v0}, Lq73;->r(Ljava/lang/String;)V

    .line 869
    .line 870
    .line 871
    return-void

    .line 872
    :cond_f
    const-string v0, "Null model"

    .line 873
    .line 874
    invoke-static {v0}, Lq73;->r(Ljava/lang/String;)V

    .line 875
    .line 876
    .line 877
    return-void

    .line 878
    :cond_10
    const-string v0, "Null buildVersion"

    .line 879
    .line 880
    invoke-static {v0}, Lq73;->r(Ljava/lang/String;)V

    .line 881
    .line 882
    .line 883
    return-void

    .line 884
    :cond_11
    const-string v0, "Null version"

    .line 885
    .line 886
    invoke-static {v0}, Lq73;->r(Ljava/lang/String;)V

    .line 887
    .line 888
    .line 889
    return-void

    .line 890
    :cond_12
    const-string v0, "Null identifier"

    .line 891
    .line 892
    invoke-static {v0}, Lq73;->r(Ljava/lang/String;)V

    .line 893
    .line 894
    .line 895
    return-void

    .line 896
    :cond_13
    const-string v0, "Null generator"

    .line 897
    .line 898
    invoke-static {v0}, Lq73;->r(Ljava/lang/String;)V

    .line 899
    .line 900
    .line 901
    return-void

    .line 902
    :cond_14
    const-string v0, "Null identifier"

    .line 903
    .line 904
    invoke-static {v0}, Lq73;->r(Ljava/lang/String;)V

    .line 905
    .line 906
    .line 907
    return-void

    .line 908
    :cond_15
    const-string v0, "Null displayVersion"

    .line 909
    .line 910
    invoke-static {v0}, Lq73;->r(Ljava/lang/String;)V

    .line 911
    .line 912
    .line 913
    return-void

    .line 914
    :cond_16
    const-string v0, "Null buildVersion"

    .line 915
    .line 916
    invoke-static {v0}, Lq73;->r(Ljava/lang/String;)V

    .line 917
    .line 918
    .line 919
    return-void

    .line 920
    :cond_17
    const-string v0, "Null installationUuid"

    .line 921
    .line 922
    invoke-static {v0}, Lq73;->r(Ljava/lang/String;)V

    .line 923
    .line 924
    .line 925
    return-void

    .line 926
    :cond_18
    const-string v0, "Null gmpAppId"

    .line 927
    .line 928
    invoke-static {v0}, Lq73;->r(Ljava/lang/String;)V

    .line 929
    .line 930
    .line 931
    return-void
.end method

.method public final d(Led0;)Z
    .locals 5

    .line 1
    invoke-static {}, Leh;->l()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ldj0;->n:Lpk0;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    const-string v3, "FirebaseCrashlytics"

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, v0, Lpk0;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const-string p0, "Skipping session finalization because a crash has already occurred."

    .line 21
    .line 22
    invoke-static {v3, p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 23
    .line 24
    .line 25
    return v2

    .line 26
    :cond_0
    const/4 v0, 0x2

    .line 27
    invoke-static {v3, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-eqz v4, :cond_1

    .line 32
    .line 33
    const-string v4, "Finalizing previously open sessions."

    .line 34
    .line 35
    invoke-static {v3, v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    .line 37
    .line 38
    :cond_1
    const/4 v4, 0x1

    .line 39
    :try_start_0
    invoke-virtual {p0, v4, p1, v4}, Ldj0;->b(ZLed0;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    invoke-static {v3, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-eqz p0, :cond_2

    .line 47
    .line 48
    const-string p0, "Closed all previously open sessions."

    .line 49
    .line 50
    invoke-static {v3, p0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    .line 52
    .line 53
    :cond_2
    return v4

    .line 54
    :catch_0
    move-exception p0

    .line 55
    const-string p1, "Unable to finalize previously open sessions."

    .line 56
    .line 57
    invoke-static {v3, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    .line 59
    .line 60
    return v2
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Ldj0;->m:Lga0;

    .line 2
    .line 3
    iget-object p0, p0, Lga0;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p0, Lok0;

    .line 6
    .line 7
    invoke-virtual {p0}, Lok0;->c()Ljava/util/NavigableSet;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-interface {p0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Ljava/lang/String;

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    return-object p0
.end method

.method public final f()Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, "com.google.firebase.crashlytics.version_control_info"

    .line 2
    .line 3
    const-string v1, "string"

    .line 4
    .line 5
    iget-object p0, p0, Ldj0;->a:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {p0, v0, v1}, Lw80;->x(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    move-object p0, v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    :goto_0
    const/4 v0, 0x3

    .line 25
    const/4 v2, 0x0

    .line 26
    const-string v3, "FirebaseCrashlytics"

    .line 27
    .line 28
    if-eqz p0, :cond_2

    .line 29
    .line 30
    invoke-static {v3, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    const-string v0, "Read version control info from string resource"

    .line 37
    .line 38
    invoke-static {v3, v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    .line 40
    .line 41
    :cond_1
    sget-object v0, Ldj0;->s:Ljava/nio/charset/Charset;

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-static {p0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    return-object p0

    .line 52
    :cond_2
    const-class p0, Ldj0;

    .line 53
    .line 54
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    if-nez p0, :cond_3

    .line 59
    .line 60
    const-string p0, "Couldn\'t get Class Loader"

    .line 61
    .line 62
    invoke-static {v3, p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    .line 64
    .line 65
    move-object p0, v1

    .line 66
    goto :goto_1

    .line 67
    :cond_3
    const-string v4, "META-INF/version-control-info.textproto"

    .line 68
    .line 69
    invoke-virtual {p0, v4}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    :goto_1
    if-eqz p0, :cond_6

    .line 74
    .line 75
    :try_start_0
    const-string v4, "Read version control info from file"

    .line 76
    .line 77
    invoke-static {v3, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_4

    .line 82
    .line 83
    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    .line 85
    .line 86
    :cond_4
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 87
    .line 88
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 89
    .line 90
    .line 91
    const/16 v1, 0x400

    .line 92
    .line 93
    :try_start_1
    new-array v1, v1, [B

    .line 94
    .line 95
    :goto_2
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    const/4 v4, -0x1

    .line 100
    if-eq v3, v4, :cond_5

    .line 101
    .line 102
    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 103
    .line 104
    .line 105
    goto :goto_2

    .line 106
    :catchall_0
    move-exception v1

    .line 107
    goto :goto_3

    .line 108
    :cond_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 109
    .line 110
    .line 111
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 113
    .line 114
    .line 115
    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 119
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 120
    .line 121
    .line 122
    return-object v0

    .line 123
    :catchall_1
    move-exception v0

    .line 124
    goto :goto_5

    .line 125
    :goto_3
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 126
    .line 127
    .line 128
    goto :goto_4

    .line 129
    :catchall_2
    move-exception v0

    .line 130
    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 131
    .line 132
    .line 133
    :goto_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 134
    :goto_5
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 135
    .line 136
    .line 137
    goto :goto_6

    .line 138
    :catchall_3
    move-exception p0

    .line 139
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 140
    .line 141
    .line 142
    :goto_6
    throw v0

    .line 143
    :cond_6
    if-eqz p0, :cond_7

    .line 144
    .line 145
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 146
    .line 147
    .line 148
    :cond_7
    const-string p0, "No version control information found"

    .line 149
    .line 150
    invoke-static {v3, p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    .line 152
    .line 153
    return-object v1
.end method

.method public final g()V
    .locals 4

    .line 1
    const-string v0, "FirebaseCrashlytics"

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Ldj0;->f()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    :try_start_1
    iget-object v3, p0, Ldj0;->d:Lq51;

    .line 11
    .line 12
    invoke-virtual {v3, v1}, Lq51;->f(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 13
    .line 14
    .line 15
    goto :goto_1

    .line 16
    :catch_0
    move-exception v1

    .line 17
    :try_start_2
    iget-object p0, p0, Ldj0;->a:Landroid/content/Context;

    .line 18
    .line 19
    if-eqz p0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 26
    .line 27
    and-int/lit8 p0, p0, 0x2

    .line 28
    .line 29
    if-nez p0, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    throw v1

    .line 33
    :cond_1
    :goto_0
    const-string p0, "Attempting to set custom attribute with null key, ignoring."

    .line 34
    .line 35
    invoke-static {v0, p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    .line 37
    .line 38
    :goto_1
    const-string p0, "Saved version control info"

    .line 39
    .line 40
    invoke-static {v0, p0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 41
    .line 42
    .line 43
    goto :goto_2

    .line 44
    :catch_1
    move-exception p0

    .line 45
    const-string v1, "Unable to save version control info"

    .line 46
    .line 47
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    .line 49
    .line 50
    :cond_2
    :goto_2
    return-void
.end method

.method public final h(Lef5;)V
    .locals 6

    .line 1
    iget-object v0, p0, Ldj0;->o:Lpw3;

    .line 2
    .line 3
    const-string v1, "FirebaseCrashlytics"

    .line 4
    .line 5
    iget-object v2, p0, Ldj0;->m:Lga0;

    .line 6
    .line 7
    iget-object v2, v2, Lga0;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, Lok0;

    .line 10
    .line 11
    iget-object v2, v2, Lok0;->b:Lq51;

    .line 12
    .line 13
    iget-object v3, v2, Lq51;->e:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v3, Ljava/io/File;

    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-static {v3}, Lq51;->e([Ljava/lang/Object;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    const/4 v4, 0x0

    .line 30
    if-eqz v3, :cond_2

    .line 31
    .line 32
    iget-object v3, v2, Lq51;->f:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v3, Ljava/io/File;

    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-static {v3}, Lq51;->e([Ljava/lang/Object;)Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_2

    .line 49
    .line 50
    iget-object v2, v2, Lq51;->g:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v2, Ljava/io/File;

    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-static {v2}, Lq51;->e([Ljava/lang/Object;)Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-nez v2, :cond_0

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    const-string p0, "No crash reports are available to be sent."

    .line 70
    .line 71
    const/4 p1, 0x2

    .line 72
    invoke-static {v1, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-eqz p1, :cond_1

    .line 77
    .line 78
    invoke-static {v1, p0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    .line 80
    .line 81
    :cond_1
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 82
    .line 83
    invoke-virtual {v0, p0}, Lpw3;->d(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_2
    :goto_0
    sget-object v2, Lw13;->H:Lw13;

    .line 88
    .line 89
    const-string v3, "Crash reports are available to be sent."

    .line 90
    .line 91
    invoke-virtual {v2, v3}, Lw13;->m(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget-object v3, p0, Ldj0;->b:Lbm0;

    .line 95
    .line 96
    invoke-virtual {v3}, Lbm0;->a()Z

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    if-eqz v5, :cond_4

    .line 101
    .line 102
    const-string v2, "Automatic data collection is enabled. Allowing upload."

    .line 103
    .line 104
    const/4 v3, 0x3

    .line 105
    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    if-eqz v3, :cond_3

    .line 110
    .line 111
    invoke-static {v1, v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    .line 113
    .line 114
    :cond_3
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Lpw3;->d(Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 120
    .line 121
    invoke-static {v0}, Lmt1;->t(Ljava/lang/Object;)Lef5;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    goto :goto_1

    .line 126
    :cond_4
    const-string v1, "Automatic data collection is disabled."

    .line 127
    .line 128
    invoke-virtual {v2, v1}, Lw13;->e(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    const-string v1, "Notifying that unsent reports are available."

    .line 132
    .line 133
    invoke-virtual {v2, v1}, Lw13;->m(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Lpw3;->d(Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    iget-object v0, v3, Lbm0;->b:Ljava/lang/Object;

    .line 142
    .line 143
    monitor-enter v0

    .line 144
    :try_start_0
    iget-object v1, v3, Lbm0;->c:Lpw3;

    .line 145
    .line 146
    iget-object v1, v1, Lpw3;->a:Lef5;

    .line 147
    .line 148
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    new-instance v0, Lbx3;

    .line 150
    .line 151
    const/16 v3, 0x17

    .line 152
    .line 153
    invoke-direct {v0, v3}, Lbx3;-><init>(I)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1, v0}, Lef5;->k(Lwt3;)Lef5;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    const-string v1, "Waiting for send/deleteUnsentReports to be called."

    .line 161
    .line 162
    invoke-virtual {v2, v1}, Lw13;->e(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    iget-object v1, p0, Ldj0;->p:Lpw3;

    .line 166
    .line 167
    iget-object v1, v1, Lpw3;->a:Lef5;

    .line 168
    .line 169
    invoke-static {v0, v1}, Ln44;->G0(Low3;Low3;)Lef5;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    :goto_1
    iget-object v1, p0, Ldj0;->e:Leh;

    .line 174
    .line 175
    iget-object v1, v1, Leh;->o:Ljava/lang/Object;

    .line 176
    .line 177
    check-cast v1, Lqk0;

    .line 178
    .line 179
    new-instance v2, Lgw4;

    .line 180
    .line 181
    invoke-direct {v2, p0, p1}, Lgw4;-><init>(Ldj0;Low3;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, v1, v2}, Lef5;->l(Ljava/util/concurrent/Executor;Lwt3;)Lef5;

    .line 185
    .line 186
    .line 187
    return-void

    .line 188
    :catchall_0
    move-exception p0

    .line 189
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    throw p0
.end method
