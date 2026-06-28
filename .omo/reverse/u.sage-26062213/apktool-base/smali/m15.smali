.class public final Lm15;
.super Lj05;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final e:[Ljava/lang/String;


# instance fields
.field public final c:Lys4;

.field public d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "app_version_int"

    .line 2
    .line 3
    const-string v1, "ALTER TABLE messages ADD COLUMN app_version_int INTEGER;"

    .line 4
    .line 5
    const-string v2, "app_version"

    .line 6
    .line 7
    const-string v3, "ALTER TABLE messages ADD COLUMN app_version TEXT;"

    .line 8
    .line 9
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lm15;->e:[Ljava/lang/String;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Lr45;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lj05;-><init>(Lr45;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lys4;

    .line 5
    .line 6
    iget-object v0, p0, Lib0;->a:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lr45;

    .line 9
    .line 10
    iget-object v0, v0, Lr45;->a:Landroid/content/Context;

    .line 11
    .line 12
    invoke-direct {p1, p0, v0}, Lys4;-><init>(Lm15;Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lm15;->c:Lys4;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final A()V
    .locals 10

    .line 1
    const-string v0, "Error deleting app launch break from local database"

    .line 2
    .line 3
    iget-object v1, p0, Lib0;->a:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lr45;

    .line 6
    .line 7
    invoke-virtual {p0}, Laz4;->v()V

    .line 8
    .line 9
    .line 10
    iget-boolean v2, p0, Lm15;->d:Z

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    goto/16 :goto_4

    .line 15
    .line 16
    :cond_0
    iget-object v2, v1, Lr45;->a:Landroid/content/Context;

    .line 17
    .line 18
    const-string v3, "google_app_measurement_local.db"

    .line 19
    .line 20
    invoke-virtual {v2, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_6

    .line 29
    .line 30
    const/4 v2, 0x5

    .line 31
    const/4 v3, 0x0

    .line 32
    move v4, v2

    .line 33
    :goto_0
    if-ge v3, v2, :cond_5

    .line 34
    .line 35
    const/4 v5, 0x0

    .line 36
    const/4 v6, 0x1

    .line 37
    :try_start_0
    invoke-virtual {p0}, Lm15;->B()Landroid/database/sqlite/SQLiteDatabase;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    if-nez v5, :cond_1

    .line 42
    .line 43
    iput-boolean v6, p0, Lm15;->d:Z

    .line 44
    .line 45
    goto :goto_4

    .line 46
    :cond_1
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 47
    .line 48
    .line 49
    const-string v7, "messages"

    .line 50
    .line 51
    const-string v8, "type == ?"

    .line 52
    .line 53
    const/4 v9, 0x3

    .line 54
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v9

    .line 58
    filled-new-array {v9}, [Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v9

    .line 62
    invoke-virtual {v5, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .line 70
    .line 71
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :catchall_0
    move-exception p0

    .line 76
    goto :goto_3

    .line 77
    :catch_0
    move-exception v7

    .line 78
    if-eqz v5, :cond_2

    .line 79
    .line 80
    :try_start_1
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    .line 81
    .line 82
    .line 83
    move-result v8

    .line 84
    if-eqz v8, :cond_2

    .line 85
    .line 86
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 87
    .line 88
    .line 89
    :cond_2
    iget-object v8, v1, Lr45;->f:La25;

    .line 90
    .line 91
    invoke-static {v8}, Lr45;->l(Lq55;)V

    .line 92
    .line 93
    .line 94
    iget-object v8, v8, La25;->f:Lx15;

    .line 95
    .line 96
    invoke-virtual {v8, v7, v0}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    iput-boolean v6, p0, Lm15;->d:Z

    .line 100
    .line 101
    if-eqz v5, :cond_3

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :catch_1
    int-to-long v6, v4

    .line 105
    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    .line 107
    .line 108
    add-int/lit8 v4, v4, 0x14

    .line 109
    .line 110
    if-eqz v5, :cond_3

    .line 111
    .line 112
    :goto_1
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 113
    .line 114
    .line 115
    goto :goto_2

    .line 116
    :catch_2
    move-exception v7

    .line 117
    :try_start_2
    iget-object v8, v1, Lr45;->f:La25;

    .line 118
    .line 119
    invoke-static {v8}, Lr45;->l(Lq55;)V

    .line 120
    .line 121
    .line 122
    iget-object v8, v8, La25;->f:Lx15;

    .line 123
    .line 124
    invoke-virtual {v8, v7, v0}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    iput-boolean v6, p0, Lm15;->d:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 128
    .line 129
    if-eqz v5, :cond_3

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 133
    .line 134
    goto :goto_0

    .line 135
    :goto_3
    if-eqz v5, :cond_4

    .line 136
    .line 137
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 138
    .line 139
    .line 140
    :cond_4
    throw p0

    .line 141
    :cond_5
    iget-object p0, v1, Lr45;->f:La25;

    .line 142
    .line 143
    invoke-static {p0}, Lr45;->l(Lq55;)V

    .line 144
    .line 145
    .line 146
    iget-object p0, p0, La25;->i:Lx15;

    .line 147
    .line 148
    const-string v0, "Error deleting app launch break from local database in reasonable time"

    .line 149
    .line 150
    invoke-virtual {p0, v0}, Lx15;->a(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    :cond_6
    :goto_4
    return-void
.end method

.method public final B()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lm15;->d:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    iget-object v0, p0, Lm15;->c:Lys4;

    .line 8
    .line 9
    invoke-virtual {v0}, Lys4;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lm15;->d:Z

    .line 17
    .line 18
    return-object v1

    .line 19
    :cond_1
    return-object v0
.end method

.method public final C(I[B)Z
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lib0;->a:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lr45;

    .line 6
    .line 7
    invoke-virtual {v1}, Laz4;->v()V

    .line 8
    .line 9
    .line 10
    iget-boolean v2, v1, Lm15;->d:Z

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    goto :goto_2

    .line 16
    :cond_0
    iget-object v2, v0, Lr45;->d:Lds4;

    .line 17
    .line 18
    iget-object v4, v0, Lr45;->f:La25;

    .line 19
    .line 20
    sget-object v5, Le05;->W0:Ld05;

    .line 21
    .line 22
    const/4 v6, 0x0

    .line 23
    invoke-virtual {v2, v6, v5}, Lds4;->G(Ljava/lang/String;Ld05;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0}, Lr45;->q()Lg15;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v2, v6}, Lg15;->z(Ljava/lang/String;)Lvc5;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move-object v2, v6

    .line 39
    :goto_0
    new-instance v7, Landroid/content/ContentValues;

    .line 40
    .line 41
    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v8

    .line 48
    const-string v9, "type"

    .line 49
    .line 50
    invoke-virtual {v7, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 51
    .line 52
    .line 53
    const-string v8, "entry"

    .line 54
    .line 55
    move-object/from16 v9, p2

    .line 56
    .line 57
    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 58
    .line 59
    .line 60
    iget-object v0, v0, Lr45;->d:Lds4;

    .line 61
    .line 62
    invoke-virtual {v0, v6, v5}, Lds4;->G(Ljava/lang/String;Ld05;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_2

    .line 67
    .line 68
    if-eqz v2, :cond_2

    .line 69
    .line 70
    const-string v0, "app_version"

    .line 71
    .line 72
    iget-object v5, v2, Lvc5;->p:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v7, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-wide v8, v2, Lvc5;->w:J

    .line 78
    .line 79
    const-string v0, "app_version_int"

    .line 80
    .line 81
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 86
    .line 87
    .line 88
    :cond_2
    const/4 v2, 0x5

    .line 89
    move v8, v2

    .line 90
    move v5, v3

    .line 91
    :goto_1
    if-ge v5, v2, :cond_e

    .line 92
    .line 93
    const/4 v9, 0x1

    .line 94
    :try_start_0
    invoke-virtual {v1}, Lm15;->B()Landroid/database/sqlite/SQLiteDatabase;

    .line 95
    .line 96
    .line 97
    move-result-object v10
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 98
    if-nez v10, :cond_3

    .line 99
    .line 100
    :try_start_1
    iput-boolean v9, v1, Lm15;->d:Z

    .line 101
    .line 102
    :goto_2
    return v3

    .line 103
    :catchall_0
    move-exception v0

    .line 104
    goto/16 :goto_10

    .line 105
    .line 106
    :catch_0
    move-exception v0

    .line 107
    move/from16 v17, v3

    .line 108
    .line 109
    move/from16 p2, v9

    .line 110
    .line 111
    goto/16 :goto_8

    .line 112
    .line 113
    :catch_1
    move/from16 v17, v3

    .line 114
    .line 115
    goto/16 :goto_9

    .line 116
    .line 117
    :catch_2
    move-exception v0

    .line 118
    move/from16 v17, v3

    .line 119
    .line 120
    move/from16 p2, v9

    .line 121
    .line 122
    goto/16 :goto_a

    .line 123
    .line 124
    :cond_3
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 125
    .line 126
    .line 127
    const-string v0, "select count(1) from messages"

    .line 128
    .line 129
    invoke-virtual {v10, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 130
    .line 131
    .line 132
    move-result-object v11
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    const-wide/16 v12, 0x0

    .line 134
    .line 135
    if-eqz v11, :cond_4

    .line 136
    .line 137
    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    if-eqz v0, :cond_4

    .line 142
    .line 143
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 144
    .line 145
    .line 146
    move-result-wide v12
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 147
    goto :goto_5

    .line 148
    :catch_3
    move-exception v0

    .line 149
    move/from16 v17, v3

    .line 150
    .line 151
    :goto_3
    move/from16 p2, v9

    .line 152
    .line 153
    goto/16 :goto_b

    .line 154
    .line 155
    :catch_4
    move/from16 v17, v3

    .line 156
    .line 157
    goto/16 :goto_c

    .line 158
    .line 159
    :catch_5
    move-exception v0

    .line 160
    move/from16 v17, v3

    .line 161
    .line 162
    :goto_4
    move/from16 p2, v9

    .line 163
    .line 164
    goto/16 :goto_e

    .line 165
    .line 166
    :cond_4
    :goto_5
    const-wide/32 v14, 0x186a0

    .line 167
    .line 168
    .line 169
    cmp-long v0, v12, v14

    .line 170
    .line 171
    const-string v14, "messages"

    .line 172
    .line 173
    if-ltz v0, :cond_5

    .line 174
    .line 175
    :try_start_3
    invoke-static {v4}, Lr45;->l(Lq55;)V

    .line 176
    .line 177
    .line 178
    iget-object v0, v4, La25;->f:Lx15;

    .line 179
    .line 180
    const-string v15, "Data loss, local db full"

    .line 181
    .line 182
    invoke-virtual {v0, v15}, Lx15;->a(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    const-string v0, "rowid in (select rowid from messages order by rowid asc limit ?)"

    .line 186
    .line 187
    const-wide/32 v15, 0x186a1

    .line 188
    .line 189
    .line 190
    sub-long/2addr v15, v12

    .line 191
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v12

    .line 195
    filled-new-array {v12}, [Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v12

    .line 199
    invoke-virtual {v10, v14, v0, v12}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    int-to-long v12, v0

    .line 204
    cmp-long v0, v12, v15

    .line 205
    .line 206
    if-eqz v0, :cond_5

    .line 207
    .line 208
    invoke-static {v4}, Lr45;->l(Lq55;)V

    .line 209
    .line 210
    .line 211
    iget-object v0, v4, La25;->f:Lx15;

    .line 212
    .line 213
    const-string v2, "Different delete count than expected in local db. expected, received, difference"
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 214
    .line 215
    move/from16 v17, v3

    .line 216
    .line 217
    :try_start_4
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 218
    .line 219
    .line 220
    move-result-object v3
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 221
    move/from16 p2, v9

    .line 222
    .line 223
    :try_start_5
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 224
    .line 225
    .line 226
    move-result-object v9

    .line 227
    sub-long/2addr v15, v12

    .line 228
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 229
    .line 230
    .line 231
    move-result-object v12

    .line 232
    invoke-virtual {v0, v2, v3, v9, v12}, Lx15;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 233
    .line 234
    .line 235
    goto :goto_6

    .line 236
    :catch_6
    move-exception v0

    .line 237
    goto :goto_b

    .line 238
    :catch_7
    move-exception v0

    .line 239
    goto/16 :goto_e

    .line 240
    .line 241
    :catch_8
    move-exception v0

    .line 242
    goto :goto_3

    .line 243
    :catch_9
    move-exception v0

    .line 244
    goto :goto_4

    .line 245
    :cond_5
    move/from16 v17, v3

    .line 246
    .line 247
    move/from16 p2, v9

    .line 248
    .line 249
    :goto_6
    invoke-virtual {v10, v14, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 250
    .line 251
    .line 252
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_5 .. :try_end_5} :catch_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 256
    .line 257
    .line 258
    if-eqz v11, :cond_6

    .line 259
    .line 260
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 261
    .line 262
    .line 263
    :cond_6
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 264
    .line 265
    .line 266
    return p2

    .line 267
    :goto_7
    move-object v6, v11

    .line 268
    goto/16 :goto_10

    .line 269
    .line 270
    :goto_8
    move-object v11, v6

    .line 271
    goto :goto_b

    .line 272
    :goto_9
    move-object v11, v6

    .line 273
    goto :goto_c

    .line 274
    :goto_a
    move-object v11, v6

    .line 275
    goto :goto_e

    .line 276
    :catchall_1
    move-exception v0

    .line 277
    move-object v10, v6

    .line 278
    goto/16 :goto_10

    .line 279
    .line 280
    :catch_a
    move-exception v0

    .line 281
    move/from16 v17, v3

    .line 282
    .line 283
    move/from16 p2, v9

    .line 284
    .line 285
    move-object v10, v6

    .line 286
    move-object v11, v10

    .line 287
    :goto_b
    if-eqz v10, :cond_7

    .line 288
    .line 289
    :try_start_6
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    .line 290
    .line 291
    .line 292
    move-result v2

    .line 293
    if-eqz v2, :cond_7

    .line 294
    .line 295
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 296
    .line 297
    .line 298
    :cond_7
    invoke-static {v4}, Lr45;->l(Lq55;)V

    .line 299
    .line 300
    .line 301
    iget-object v2, v4, La25;->f:Lx15;

    .line 302
    .line 303
    const-string v3, "Error writing entry to local database"

    .line 304
    .line 305
    invoke-virtual {v2, v0, v3}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    move/from16 v2, p2

    .line 309
    .line 310
    iput-boolean v2, v1, Lm15;->d:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 311
    .line 312
    if-eqz v11, :cond_8

    .line 313
    .line 314
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 315
    .line 316
    .line 317
    :cond_8
    if-eqz v10, :cond_b

    .line 318
    .line 319
    goto :goto_d

    .line 320
    :catch_b
    move/from16 v17, v3

    .line 321
    .line 322
    move-object v10, v6

    .line 323
    move-object v11, v10

    .line 324
    :catch_c
    :goto_c
    int-to-long v2, v8

    .line 325
    :try_start_7
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 326
    .line 327
    .line 328
    add-int/lit8 v8, v8, 0x14

    .line 329
    .line 330
    if-eqz v11, :cond_9

    .line 331
    .line 332
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 333
    .line 334
    .line 335
    :cond_9
    if-eqz v10, :cond_b

    .line 336
    .line 337
    :goto_d
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 338
    .line 339
    .line 340
    goto :goto_f

    .line 341
    :catchall_2
    move-exception v0

    .line 342
    goto :goto_7

    .line 343
    :catch_d
    move-exception v0

    .line 344
    move/from16 v17, v3

    .line 345
    .line 346
    move-object v10, v6

    .line 347
    move-object v11, v10

    .line 348
    :goto_e
    :try_start_8
    invoke-static {v4}, Lr45;->l(Lq55;)V

    .line 349
    .line 350
    .line 351
    iget-object v2, v4, La25;->f:Lx15;

    .line 352
    .line 353
    const-string v3, "Error writing entry; local database full"

    .line 354
    .line 355
    invoke-virtual {v2, v0, v3}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    const/4 v2, 0x1

    .line 359
    iput-boolean v2, v1, Lm15;->d:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 360
    .line 361
    if-eqz v11, :cond_a

    .line 362
    .line 363
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 364
    .line 365
    .line 366
    :cond_a
    if-eqz v10, :cond_b

    .line 367
    .line 368
    goto :goto_d

    .line 369
    :cond_b
    :goto_f
    add-int/lit8 v5, v5, 0x1

    .line 370
    .line 371
    move/from16 v3, v17

    .line 372
    .line 373
    const/4 v2, 0x5

    .line 374
    goto/16 :goto_1

    .line 375
    .line 376
    :goto_10
    if-eqz v6, :cond_c

    .line 377
    .line 378
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 379
    .line 380
    .line 381
    :cond_c
    if-eqz v10, :cond_d

    .line 382
    .line 383
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 384
    .line 385
    .line 386
    :cond_d
    throw v0

    .line 387
    :cond_e
    move/from16 v17, v3

    .line 388
    .line 389
    invoke-static {v4}, Lr45;->l(Lq55;)V

    .line 390
    .line 391
    .line 392
    iget-object v0, v4, La25;->n:Lx15;

    .line 393
    .line 394
    const-string v1, "Failed to write entry to local database"

    .line 395
    .line 396
    invoke-virtual {v0, v1}, Lx15;->a(Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    return v17
.end method

.method public final y()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final z()V
    .locals 3

    .line 1
    iget-object v0, p0, Lib0;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lr45;

    .line 4
    .line 5
    invoke-virtual {p0}, Laz4;->v()V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p0}, Lm15;->B()Landroid/database/sqlite/SQLiteDatabase;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    const-string v1, "messages"

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {p0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-lez p0, :cond_0

    .line 22
    .line 23
    iget-object v1, v0, Lr45;->f:La25;

    .line 24
    .line 25
    invoke-static {v1}, Lr45;->l(Lq55;)V

    .line 26
    .line 27
    .line 28
    iget-object v1, v1, La25;->n:Lx15;

    .line 29
    .line 30
    const-string v2, "Reset local analytics data. records"

    .line 31
    .line 32
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {v1, p0, v2}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :catch_0
    move-exception p0

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    return-void

    .line 43
    :goto_0
    iget-object v0, v0, Lr45;->f:La25;

    .line 44
    .line 45
    invoke-static {v0}, Lr45;->l(Lq55;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, v0, La25;->f:Lx15;

    .line 49
    .line 50
    const-string v1, "Error resetting local analytics data. error"

    .line 51
    .line 52
    invoke-virtual {v0, p0, v1}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method
