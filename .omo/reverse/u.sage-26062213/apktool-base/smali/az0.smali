.class public final Laz0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final e:[J


# instance fields
.field public a:J

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [J

    .line 3
    .line 4
    sput-object v0, Laz0;->e:[J

    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>(Lgi3;Lha1;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Laz0;->b:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Laz0;->c:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-interface {p1}, Lgi3;->d()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const-wide/16 v0, -0x1

    .line 16
    .line 17
    const-wide/16 v2, 0x0

    .line 18
    .line 19
    const/16 p2, 0x40

    .line 20
    .line 21
    if-gt p1, p2, :cond_1

    .line 22
    .line 23
    if-ne p1, p2, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    shl-long v2, v0, p1

    .line 27
    .line 28
    :goto_0
    iput-wide v2, p0, Laz0;->a:J

    .line 29
    .line 30
    sget-object p1, Laz0;->e:[J

    .line 31
    .line 32
    iput-object p1, p0, Laz0;->d:Ljava/lang/Object;

    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    iput-wide v2, p0, Laz0;->a:J

    .line 36
    .line 37
    add-int/lit8 p2, p1, -0x1

    .line 38
    .line 39
    ushr-int/lit8 p2, p2, 0x6

    .line 40
    .line 41
    and-int/lit8 v2, p1, 0x3f

    .line 42
    .line 43
    new-array v3, p2, [J

    .line 44
    .line 45
    if-eqz v2, :cond_2

    .line 46
    .line 47
    add-int/lit8 p2, p2, -0x1

    .line 48
    .line 49
    shl-long/2addr v0, p1

    .line 50
    aput-wide v0, v3, p2

    .line 51
    .line 52
    :cond_2
    iput-object v3, p0, Laz0;->d:Ljava/lang/Object;

    .line 53
    .line 54
    return-void
.end method

.method public synthetic constructor <init>(Lgn4;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laz0;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ltw3;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x45d964b800L

    .line 57
    iput-wide v0, p0, Laz0;->a:J

    .line 58
    invoke-virtual {p1}, Ltw3;->d()Lsw3;

    move-result-object p1

    iput-object p1, p0, Laz0;->b:Ljava/lang/Object;

    .line 59
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lhi4;->b:Ljava/lang/String;

    const-string v1, " ConnectionPool connection closer"

    .line 60
    invoke-static {p1, v0, v1}, Lxw1;->s(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 61
    new-instance v0, Lj23;

    invoke-direct {v0, p0, p1}, Lj23;-><init>(Laz0;Ljava/lang/String;)V

    iput-object v0, p0, Laz0;->c:Ljava/lang/Object;

    .line 62
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Laz0;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Li23;J)I
    .locals 6

    .line 1
    sget-object v0, Lhi4;->a:Ljava/util/TimeZone;

    .line 2
    .line 3
    iget-object v0, p1, Li23;->p:Ljava/util/ArrayList;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-ge v2, v3, :cond_2

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Ljava/lang/ref/Reference;

    .line 18
    .line 19
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    if-eqz v4, :cond_1

    .line 24
    .line 25
    add-int/lit8 v2, v2, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    check-cast v3, Lf23;

    .line 29
    .line 30
    new-instance v4, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v5, "A connection to "

    .line 33
    .line 34
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v5, p1, Li23;->c:Lqa3;

    .line 38
    .line 39
    iget-object v5, v5, Lqa3;->a:Le7;

    .line 40
    .line 41
    iget-object v5, v5, Le7;->h:Lcn1;

    .line 42
    .line 43
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v5, " was leaked. Did you forget to close a response body?"

    .line 47
    .line 48
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    sget-object v5, Liv2;->a:Liv2;

    .line 56
    .line 57
    sget-object v5, Liv2;->a:Liv2;

    .line 58
    .line 59
    iget-object v3, v3, Lf23;->a:Ljava/lang/Object;

    .line 60
    .line 61
    invoke-virtual {v5, v3, v4}, Liv2;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-eqz v3, :cond_0

    .line 72
    .line 73
    iget-wide v2, p0, Laz0;->a:J

    .line 74
    .line 75
    sub-long/2addr p2, v2

    .line 76
    iput-wide p2, p1, Li23;->q:J

    .line 77
    .line 78
    return v1

    .line 79
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    return p0
.end method

.method public b(Ljava/lang/String;Lu35;)Lu35;
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v3, p1

    .line 4
    .line 5
    move-object/from16 v8, p2

    .line 6
    .line 7
    invoke-virtual {v8}, Lu35;->y()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v6

    .line 11
    invoke-virtual {v8}, Lu35;->v()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v9

    .line 15
    iget-object v0, v1, Laz0;->d:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lgn4;

    .line 18
    .line 19
    iget-object v2, v0, Lta5;->b:Lpb5;

    .line 20
    .line 21
    iget-object v10, v0, Lta5;->b:Lpb5;

    .line 22
    .line 23
    iget-object v0, v0, Lib0;->a:Ljava/lang/Object;

    .line 24
    .line 25
    move-object v11, v0

    .line 26
    check-cast v11, Lr45;

    .line 27
    .line 28
    invoke-virtual {v2}, Lpb5;->j0()Lub5;

    .line 29
    .line 30
    .line 31
    const-string v4, "_eid"

    .line 32
    .line 33
    invoke-static {v4, v8}, Lub5;->F(Ljava/lang/String;Lu35;)Lc45;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const/4 v5, 0x0

    .line 38
    if-nez v0, :cond_0

    .line 39
    .line 40
    move-object v0, v5

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-static {v0}, Lub5;->N(Lc45;)Ljava/io/Serializable;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    :goto_0
    move-object v7, v0

    .line 47
    check-cast v7, Ljava/lang/Long;

    .line 48
    .line 49
    if-eqz v7, :cond_12

    .line 50
    .line 51
    const-string v0, "_ep"

    .line 52
    .line 53
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_e

    .line 58
    .line 59
    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Lpb5;->j0()Lub5;

    .line 63
    .line 64
    .line 65
    const-string v0, "_en"

    .line 66
    .line 67
    invoke-static {v0, v8}, Lub5;->F(Ljava/lang/String;Lu35;)Lc45;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    if-nez v0, :cond_1

    .line 72
    .line 73
    move-object v0, v5

    .line 74
    goto :goto_1

    .line 75
    :cond_1
    invoke-static {v0}, Lub5;->N(Lc45;)Ljava/io/Serializable;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    :goto_1
    move-object v14, v0

    .line 80
    check-cast v14, Ljava/lang/String;

    .line 81
    .line 82
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_2

    .line 87
    .line 88
    iget-object v0, v11, Lr45;->f:La25;

    .line 89
    .line 90
    invoke-static {v0}, Lr45;->l(Lq55;)V

    .line 91
    .line 92
    .line 93
    iget-object v0, v0, La25;->g:Lx15;

    .line 94
    .line 95
    const-string v1, "Extra parameter without an event name. eventId"

    .line 96
    .line 97
    invoke-virtual {v0, v7, v1}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    return-object v5

    .line 101
    :cond_2
    iget-object v0, v1, Laz0;->b:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v0, Lu35;

    .line 104
    .line 105
    if-eqz v0, :cond_4

    .line 106
    .line 107
    iget-object v0, v1, Laz0;->c:Ljava/lang/Object;

    .line 108
    .line 109
    check-cast v0, Ljava/lang/Long;

    .line 110
    .line 111
    if-eqz v0, :cond_4

    .line 112
    .line 113
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 114
    .line 115
    .line 116
    move-result-wide v15

    .line 117
    iget-object v0, v1, Laz0;->c:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast v0, Ljava/lang/Long;

    .line 120
    .line 121
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 122
    .line 123
    .line 124
    move-result-wide v17

    .line 125
    cmp-long v0, v15, v17

    .line 126
    .line 127
    if-eqz v0, :cond_3

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_3
    const-wide/16 v17, 0x0

    .line 131
    .line 132
    goto/16 :goto_b

    .line 133
    .line 134
    :cond_4
    :goto_2
    iget-object v0, v2, Lpb5;->c:Lat4;

    .line 135
    .line 136
    invoke-static {v0}, Lpb5;->T(Lab5;)V

    .line 137
    .line 138
    .line 139
    iget-object v2, v0, Lib0;->a:Ljava/lang/Object;

    .line 140
    .line 141
    check-cast v2, Lr45;

    .line 142
    .line 143
    invoke-virtual {v0}, Lib0;->v()V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0}, Lab5;->w()V

    .line 147
    .line 148
    .line 149
    :try_start_0
    invoke-virtual {v0}, Lat4;->m0()Landroid/database/sqlite/SQLiteDatabase;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    const-string v6, "select main_event, children_to_process from main_event_params where app_id=? and event_id=?"

    .line 154
    .line 155
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v15

    .line 159
    filled-new-array {v3, v15}, [Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v15

    .line 163
    invoke-virtual {v0, v6, v15}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 164
    .line 165
    .line 166
    move-result-object v6
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 167
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    if-nez v0, :cond_5

    .line 172
    .line 173
    iget-object v0, v2, Lr45;->f:La25;

    .line 174
    .line 175
    invoke-static {v0}, Lr45;->l(Lq55;)V

    .line 176
    .line 177
    .line 178
    iget-object v0, v0, La25;->n:Lx15;

    .line 179
    .line 180
    const-string v15, "Main event not found"

    .line 181
    .line 182
    invoke-virtual {v0, v15}, Lx15;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    .line 184
    .line 185
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 186
    .line 187
    .line 188
    move-object v0, v5

    .line 189
    move-object/from16 v16, v0

    .line 190
    .line 191
    :goto_3
    const-wide/16 v17, 0x0

    .line 192
    .line 193
    goto/16 :goto_a

    .line 194
    .line 195
    :catchall_0
    move-exception v0

    .line 196
    goto :goto_6

    .line 197
    :catch_0
    move-exception v0

    .line 198
    move-object/from16 v16, v5

    .line 199
    .line 200
    goto :goto_5

    .line 201
    :cond_5
    const/4 v0, 0x0

    .line 202
    :try_start_2
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getBlob(I)[B

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    const/4 v15, 0x1

    .line 207
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getLong(I)J

    .line 208
    .line 209
    .line 210
    move-result-wide v15

    .line 211
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 212
    .line 213
    .line 214
    move-result-object v15
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 215
    move-object/from16 v16, v5

    .line 216
    .line 217
    :try_start_3
    invoke-static {}, Lu35;->J()Ls35;

    .line 218
    .line 219
    .line 220
    move-result-object v5

    .line 221
    invoke-static {v5, v0}, Lub5;->g0(Lpn4;[B)Lpn4;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    check-cast v0, Ls35;

    .line 226
    .line 227
    invoke-virtual {v0}, Lpn4;->d()Lrn4;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    check-cast v0, Lu35;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 232
    .line 233
    :try_start_4
    invoke-static {v0, v15}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 234
    .line 235
    .line 236
    move-result-object v0
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 237
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 238
    .line 239
    .line 240
    goto :goto_3

    .line 241
    :catch_1
    move-exception v0

    .line 242
    :try_start_5
    iget-object v5, v2, Lr45;->f:La25;

    .line 243
    .line 244
    invoke-static {v5}, Lr45;->l(Lq55;)V

    .line 245
    .line 246
    .line 247
    iget-object v5, v5, La25;->f:Lx15;

    .line 248
    .line 249
    const-string v15, "Failed to merge main event. appId, eventId"
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 250
    .line 251
    const-wide/16 v17, 0x0

    .line 252
    .line 253
    :try_start_6
    invoke-static {v3}, La25;->D(Ljava/lang/String;)Ly15;

    .line 254
    .line 255
    .line 256
    move-result-object v12

    .line 257
    invoke-virtual {v5, v15, v12, v7, v0}, Lx15;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 258
    .line 259
    .line 260
    :goto_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 261
    .line 262
    .line 263
    :cond_6
    move-object/from16 v0, v16

    .line 264
    .line 265
    goto :goto_a

    .line 266
    :catch_2
    move-exception v0

    .line 267
    goto :goto_9

    .line 268
    :catch_3
    move-exception v0

    .line 269
    :goto_5
    const-wide/16 v17, 0x0

    .line 270
    .line 271
    goto :goto_9

    .line 272
    :goto_6
    move-object v5, v6

    .line 273
    goto/16 :goto_10

    .line 274
    .line 275
    :catchall_1
    move-exception v0

    .line 276
    move-object/from16 v16, v5

    .line 277
    .line 278
    goto :goto_7

    .line 279
    :catch_4
    move-exception v0

    .line 280
    move-object/from16 v16, v5

    .line 281
    .line 282
    const-wide/16 v17, 0x0

    .line 283
    .line 284
    goto :goto_8

    .line 285
    :goto_7
    move-object/from16 v5, v16

    .line 286
    .line 287
    goto/16 :goto_10

    .line 288
    .line 289
    :goto_8
    move-object/from16 v6, v16

    .line 290
    .line 291
    :goto_9
    :try_start_7
    iget-object v2, v2, Lr45;->f:La25;

    .line 292
    .line 293
    invoke-static {v2}, Lr45;->l(Lq55;)V

    .line 294
    .line 295
    .line 296
    iget-object v2, v2, La25;->f:Lx15;

    .line 297
    .line 298
    const-string v5, "Error selecting main event"

    .line 299
    .line 300
    invoke-virtual {v2, v0, v5}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 301
    .line 302
    .line 303
    if-eqz v6, :cond_6

    .line 304
    .line 305
    goto :goto_4

    .line 306
    :goto_a
    if-eqz v0, :cond_7

    .line 307
    .line 308
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 309
    .line 310
    if-nez v2, :cond_8

    .line 311
    .line 312
    :cond_7
    move-object v4, v7

    .line 313
    goto/16 :goto_f

    .line 314
    .line 315
    :cond_8
    check-cast v2, Lu35;

    .line 316
    .line 317
    iput-object v2, v1, Laz0;->b:Ljava/lang/Object;

    .line 318
    .line 319
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 320
    .line 321
    check-cast v0, Ljava/lang/Long;

    .line 322
    .line 323
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 324
    .line 325
    .line 326
    move-result-wide v5

    .line 327
    iput-wide v5, v1, Laz0;->a:J

    .line 328
    .line 329
    invoke-virtual {v10}, Lpb5;->j0()Lub5;

    .line 330
    .line 331
    .line 332
    iget-object v0, v1, Laz0;->b:Ljava/lang/Object;

    .line 333
    .line 334
    check-cast v0, Lu35;

    .line 335
    .line 336
    invoke-static {v4, v0}, Lub5;->H(Ljava/lang/String;Lu35;)Ljava/io/Serializable;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    check-cast v0, Ljava/lang/Long;

    .line 341
    .line 342
    iput-object v0, v1, Laz0;->c:Ljava/lang/Object;

    .line 343
    .line 344
    :goto_b
    iget-wide v4, v1, Laz0;->a:J

    .line 345
    .line 346
    const-wide/16 v12, -0x1

    .line 347
    .line 348
    add-long/2addr v4, v12

    .line 349
    iput-wide v4, v1, Laz0;->a:J

    .line 350
    .line 351
    cmp-long v0, v4, v17

    .line 352
    .line 353
    if-gtz v0, :cond_9

    .line 354
    .line 355
    iget-object v0, v10, Lpb5;->c:Lat4;

    .line 356
    .line 357
    invoke-static {v0}, Lpb5;->T(Lab5;)V

    .line 358
    .line 359
    .line 360
    iget-object v2, v0, Lib0;->a:Ljava/lang/Object;

    .line 361
    .line 362
    check-cast v2, Lr45;

    .line 363
    .line 364
    invoke-virtual {v0}, Lib0;->v()V

    .line 365
    .line 366
    .line 367
    iget-object v4, v2, Lr45;->f:La25;

    .line 368
    .line 369
    invoke-static {v4}, Lr45;->l(Lq55;)V

    .line 370
    .line 371
    .line 372
    iget-object v4, v4, La25;->n:Lx15;

    .line 373
    .line 374
    const-string v5, "Clearing complex main event info. appId"

    .line 375
    .line 376
    invoke-virtual {v4, v3, v5}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    :try_start_8
    invoke-virtual {v0}, Lat4;->m0()Landroid/database/sqlite/SQLiteDatabase;

    .line 380
    .line 381
    .line 382
    move-result-object v0

    .line 383
    const-string v4, "delete from main_event_params where app_id=?"

    .line 384
    .line 385
    filled-new-array {v3}, [Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v3

    .line 389
    invoke-virtual {v0, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_5

    .line 390
    .line 391
    .line 392
    goto :goto_c

    .line 393
    :catch_5
    move-exception v0

    .line 394
    iget-object v2, v2, Lr45;->f:La25;

    .line 395
    .line 396
    invoke-static {v2}, Lr45;->l(Lq55;)V

    .line 397
    .line 398
    .line 399
    iget-object v2, v2, La25;->f:Lx15;

    .line 400
    .line 401
    const-string v3, "Error clearing complex main event"

    .line 402
    .line 403
    invoke-virtual {v2, v0, v3}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    goto :goto_c

    .line 407
    :cond_9
    iget-object v2, v10, Lpb5;->c:Lat4;

    .line 408
    .line 409
    invoke-static {v2}, Lpb5;->T(Lab5;)V

    .line 410
    .line 411
    .line 412
    iget-wide v5, v1, Laz0;->a:J

    .line 413
    .line 414
    iget-object v0, v1, Laz0;->b:Ljava/lang/Object;

    .line 415
    .line 416
    check-cast v0, Lu35;

    .line 417
    .line 418
    move-object v4, v7

    .line 419
    move-object v7, v0

    .line 420
    invoke-virtual/range {v2 .. v7}, Lat4;->N(Ljava/lang/String;Ljava/lang/Long;JLu35;)V

    .line 421
    .line 422
    .line 423
    :goto_c
    new-instance v0, Ljava/util/ArrayList;

    .line 424
    .line 425
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 426
    .line 427
    .line 428
    iget-object v1, v1, Laz0;->b:Ljava/lang/Object;

    .line 429
    .line 430
    check-cast v1, Lu35;

    .line 431
    .line 432
    invoke-virtual {v1}, Lu35;->v()Ljava/util/List;

    .line 433
    .line 434
    .line 435
    move-result-object v1

    .line 436
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 437
    .line 438
    .line 439
    move-result-object v1

    .line 440
    :cond_a
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 441
    .line 442
    .line 443
    move-result v2

    .line 444
    if-eqz v2, :cond_b

    .line 445
    .line 446
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 447
    .line 448
    .line 449
    move-result-object v2

    .line 450
    check-cast v2, Lc45;

    .line 451
    .line 452
    invoke-virtual {v10}, Lpb5;->j0()Lub5;

    .line 453
    .line 454
    .line 455
    invoke-virtual {v2}, Lc45;->u()Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v3

    .line 459
    invoke-static {v3, v8}, Lub5;->F(Ljava/lang/String;Lu35;)Lc45;

    .line 460
    .line 461
    .line 462
    move-result-object v3

    .line 463
    if-nez v3, :cond_a

    .line 464
    .line 465
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    .line 467
    .line 468
    goto :goto_d

    .line 469
    :cond_b
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 470
    .line 471
    .line 472
    move-result v1

    .line 473
    if-nez v1, :cond_c

    .line 474
    .line 475
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 476
    .line 477
    .line 478
    move-object v9, v0

    .line 479
    goto :goto_e

    .line 480
    :cond_c
    iget-object v0, v11, Lr45;->f:La25;

    .line 481
    .line 482
    invoke-static {v0}, Lr45;->l(Lq55;)V

    .line 483
    .line 484
    .line 485
    iget-object v0, v0, La25;->g:Lx15;

    .line 486
    .line 487
    const-string v1, "No unique parameters in main event. eventName"

    .line 488
    .line 489
    invoke-virtual {v0, v14, v1}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 490
    .line 491
    .line 492
    :goto_e
    move-object v6, v14

    .line 493
    goto :goto_13

    .line 494
    :goto_f
    iget-object v0, v11, Lr45;->f:La25;

    .line 495
    .line 496
    invoke-static {v0}, Lr45;->l(Lq55;)V

    .line 497
    .line 498
    .line 499
    iget-object v0, v0, La25;->g:Lx15;

    .line 500
    .line 501
    const-string v1, "Extra parameter without existing main event. eventName, eventId"

    .line 502
    .line 503
    invoke-virtual {v0, v14, v4, v1}, Lx15;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 504
    .line 505
    .line 506
    return-object v16

    .line 507
    :goto_10
    if-eqz v5, :cond_d

    .line 508
    .line 509
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 510
    .line 511
    .line 512
    :cond_d
    throw v0

    .line 513
    :cond_e
    move-object/from16 v16, v5

    .line 514
    .line 515
    move-object v4, v7

    .line 516
    const-wide/16 v17, 0x0

    .line 517
    .line 518
    iput-object v4, v1, Laz0;->c:Ljava/lang/Object;

    .line 519
    .line 520
    iput-object v8, v1, Laz0;->b:Ljava/lang/Object;

    .line 521
    .line 522
    invoke-virtual {v2}, Lpb5;->j0()Lub5;

    .line 523
    .line 524
    .line 525
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 526
    .line 527
    .line 528
    move-result-object v0

    .line 529
    const-string v3, "_epc"

    .line 530
    .line 531
    invoke-static {v3, v8}, Lub5;->F(Ljava/lang/String;Lu35;)Lc45;

    .line 532
    .line 533
    .line 534
    move-result-object v3

    .line 535
    if-nez v3, :cond_f

    .line 536
    .line 537
    move-object/from16 v5, v16

    .line 538
    .line 539
    goto :goto_11

    .line 540
    :cond_f
    invoke-static {v3}, Lub5;->N(Lc45;)Ljava/io/Serializable;

    .line 541
    .line 542
    .line 543
    move-result-object v5

    .line 544
    :goto_11
    if-nez v5, :cond_10

    .line 545
    .line 546
    goto :goto_12

    .line 547
    :cond_10
    move-object v0, v5

    .line 548
    :goto_12
    check-cast v0, Ljava/lang/Long;

    .line 549
    .line 550
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 551
    .line 552
    .line 553
    move-result-wide v12

    .line 554
    iput-wide v12, v1, Laz0;->a:J

    .line 555
    .line 556
    cmp-long v0, v12, v17

    .line 557
    .line 558
    if-gtz v0, :cond_11

    .line 559
    .line 560
    iget-object v0, v11, Lr45;->f:La25;

    .line 561
    .line 562
    invoke-static {v0}, Lr45;->l(Lq55;)V

    .line 563
    .line 564
    .line 565
    iget-object v0, v0, La25;->g:Lx15;

    .line 566
    .line 567
    const-string v1, "Complex event with zero extra param count. eventName"

    .line 568
    .line 569
    invoke-virtual {v0, v6, v1}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 570
    .line 571
    .line 572
    goto :goto_13

    .line 573
    :cond_11
    iget-object v0, v2, Lpb5;->c:Lat4;

    .line 574
    .line 575
    invoke-static {v0}, Lpb5;->T(Lab5;)V

    .line 576
    .line 577
    .line 578
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    .line 580
    .line 581
    move-result-object v2

    .line 582
    check-cast v2, Ljava/lang/Long;

    .line 583
    .line 584
    iget-wide v3, v1, Laz0;->a:J

    .line 585
    .line 586
    move-object/from16 v1, p1

    .line 587
    .line 588
    move-object v5, v8

    .line 589
    invoke-virtual/range {v0 .. v5}, Lat4;->N(Ljava/lang/String;Ljava/lang/Long;JLu35;)V

    .line 590
    .line 591
    .line 592
    :cond_12
    :goto_13
    invoke-virtual/range {p2 .. p2}, Lrn4;->k()Lpn4;

    .line 593
    .line 594
    .line 595
    move-result-object v0

    .line 596
    check-cast v0, Ls35;

    .line 597
    .line 598
    invoke-virtual {v0, v6}, Ls35;->n(Ljava/lang/String;)V

    .line 599
    .line 600
    .line 601
    invoke-virtual {v0}, Lpn4;->b()V

    .line 602
    .line 603
    .line 604
    iget-object v1, v0, Lpn4;->o:Lrn4;

    .line 605
    .line 606
    check-cast v1, Lu35;

    .line 607
    .line 608
    invoke-virtual {v1}, Lu35;->N()V

    .line 609
    .line 610
    .line 611
    invoke-virtual {v0}, Lpn4;->b()V

    .line 612
    .line 613
    .line 614
    iget-object v1, v0, Lpn4;->o:Lrn4;

    .line 615
    .line 616
    check-cast v1, Lu35;

    .line 617
    .line 618
    invoke-virtual {v1, v9}, Lu35;->M(Ljava/lang/Iterable;)V

    .line 619
    .line 620
    .line 621
    invoke-virtual {v0}, Lpn4;->d()Lrn4;

    .line 622
    .line 623
    .line 624
    move-result-object v0

    .line 625
    check-cast v0, Lu35;

    .line 626
    .line 627
    return-object v0
.end method
