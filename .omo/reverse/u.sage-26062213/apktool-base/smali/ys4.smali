.class public final Lys4;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Lib0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-ne v2, v0, :cond_0

    .line 10
    .line 11
    move-object p2, v1

    .line 12
    :cond_0
    invoke-direct {p0, p1, p2, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Lat4;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lys4;->n:I

    .line 18
    iput-object p1, p0, Lys4;->o:Lib0;

    const-string p1, "google_app_measurement.db"

    .line 19
    invoke-direct {p0, p2, p1}, Lys4;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lm15;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lys4;->n:I

    .line 16
    iput-object p1, p0, Lys4;->o:Lib0;

    const-string p1, "google_app_measurement_local.db"

    .line 17
    invoke-direct {p0, p2, p1}, Lys4;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private final b(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 1
    return-void
.end method

.method private final j(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 1
    return-void
.end method

.method private final r(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 1
    return-void
.end method

.method private final z(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 9

    .line 1
    iget v0, p0, Lys4;->n:I

    .line 2
    .line 3
    iget-object v1, p0, Lys4;->o:Lib0;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast v1, Lm15;

    .line 9
    .line 10
    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 11
    .line 12
    .line 13
    move-result-object p0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    goto :goto_0

    .line 15
    :catch_0
    iget-object v0, v1, Lib0;->a:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lr45;

    .line 18
    .line 19
    iget-object v2, v0, Lr45;->f:La25;

    .line 20
    .line 21
    invoke-static {v2}, Lr45;->l(Lq55;)V

    .line 22
    .line 23
    .line 24
    iget-object v2, v2, La25;->f:Lx15;

    .line 25
    .line 26
    const-string v3, "Opening the local database failed, dropping and recreating it"

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Lx15;->a(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v2, v0, Lr45;->a:Landroid/content/Context;

    .line 32
    .line 33
    const-string v3, "google_app_measurement_local.db"

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-nez v2, :cond_0

    .line 44
    .line 45
    iget-object v0, v0, Lr45;->f:La25;

    .line 46
    .line 47
    invoke-static {v0}, Lr45;->l(Lq55;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, v0, La25;->f:Lx15;

    .line 51
    .line 52
    const-string v2, "Failed to delete corrupted local db file"

    .line 53
    .line 54
    invoke-virtual {v0, v3, v2}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :cond_0
    :try_start_1
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 58
    .line 59
    .line 60
    move-result-object p0
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 61
    goto :goto_0

    .line 62
    :catch_1
    move-exception p0

    .line 63
    iget-object v0, v1, Lib0;->a:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v0, Lr45;

    .line 66
    .line 67
    iget-object v0, v0, Lr45;->f:La25;

    .line 68
    .line 69
    invoke-static {v0}, Lr45;->l(Lq55;)V

    .line 70
    .line 71
    .line 72
    iget-object v0, v0, La25;->f:Lx15;

    .line 73
    .line 74
    const-string v1, "Failed to open local database. Events will bypass local storage"

    .line 75
    .line 76
    invoke-virtual {v0, p0, v1}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    const/4 p0, 0x0

    .line 80
    :goto_0
    return-object p0

    .line 81
    :catch_2
    move-exception p0

    .line 82
    throw p0

    .line 83
    :pswitch_0
    check-cast v1, Lat4;

    .line 84
    .line 85
    iget-object v0, v1, Lib0;->a:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v0, Lr45;

    .line 88
    .line 89
    iget-object v2, v1, Lib0;->a:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v2, Lr45;

    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    iget-object v0, v1, Lat4;->e:Llj1;

    .line 97
    .line 98
    iget-wide v3, v0, Llj1;->n:J

    .line 99
    .line 100
    const-wide/16 v5, 0x0

    .line 101
    .line 102
    cmp-long v1, v3, v5

    .line 103
    .line 104
    if-nez v1, :cond_1

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_1
    iget-object v1, v0, Llj1;->o:Ljava/lang/Object;

    .line 108
    .line 109
    check-cast v1, Lcom/google/android/gms/common/util/Clock;

    .line 110
    .line 111
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 112
    .line 113
    .line 114
    move-result-wide v3

    .line 115
    iget-wide v7, v0, Llj1;->n:J

    .line 116
    .line 117
    sub-long/2addr v3, v7

    .line 118
    const-wide/32 v7, 0x36ee80

    .line 119
    .line 120
    .line 121
    cmp-long v1, v3, v7

    .line 122
    .line 123
    if-ltz v1, :cond_3

    .line 124
    .line 125
    :goto_1
    :try_start_2
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 126
    .line 127
    .line 128
    move-result-object p0
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_3

    .line 129
    goto :goto_2

    .line 130
    :catch_3
    iget-object v1, v0, Llj1;->o:Ljava/lang/Object;

    .line 131
    .line 132
    check-cast v1, Lcom/google/android/gms/common/util/Clock;

    .line 133
    .line 134
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 135
    .line 136
    .line 137
    move-result-wide v3

    .line 138
    iput-wide v3, v0, Llj1;->n:J

    .line 139
    .line 140
    iget-object v1, v2, Lr45;->f:La25;

    .line 141
    .line 142
    invoke-static {v1}, Lr45;->l(Lq55;)V

    .line 143
    .line 144
    .line 145
    iget-object v1, v1, La25;->f:Lx15;

    .line 146
    .line 147
    const-string v3, "Opening the database failed, dropping and recreating it"

    .line 148
    .line 149
    invoke-virtual {v1, v3}, Lx15;->a(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    iget-object v1, v2, Lr45;->a:Landroid/content/Context;

    .line 153
    .line 154
    const-string v3, "google_app_measurement.db"

    .line 155
    .line 156
    invoke-virtual {v1, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    if-nez v1, :cond_2

    .line 165
    .line 166
    iget-object v1, v2, Lr45;->f:La25;

    .line 167
    .line 168
    invoke-static {v1}, Lr45;->l(Lq55;)V

    .line 169
    .line 170
    .line 171
    iget-object v1, v1, La25;->f:Lx15;

    .line 172
    .line 173
    const-string v4, "Failed to delete corrupted db file"

    .line 174
    .line 175
    invoke-virtual {v1, v3, v4}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    :cond_2
    :try_start_3
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    iput-wide v5, v0, Llj1;->n:J
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_4

    .line 183
    .line 184
    :goto_2
    return-object p0

    .line 185
    :catch_4
    move-exception p0

    .line 186
    iget-object v0, v2, Lr45;->f:La25;

    .line 187
    .line 188
    invoke-static {v0}, Lr45;->l(Lq55;)V

    .line 189
    .line 190
    .line 191
    iget-object v0, v0, La25;->f:Lx15;

    .line 192
    .line 193
    const-string v1, "Failed to open freshly created database"

    .line 194
    .line 195
    invoke-virtual {v0, p0, v1}, Lx15;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    throw p0

    .line 199
    :cond_3
    new-instance p0, Landroid/database/sqlite/SQLiteException;

    .line 200
    .line 201
    const-string v0, "Database open failed"

    .line 202
    .line 203
    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    throw p0

    .line 207
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 1
    iget v0, p0, Lys4;->n:I

    .line 2
    .line 3
    iget-object p0, p0, Lys4;->o:Lib0;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lm15;

    .line 9
    .line 10
    iget-object p0, p0, Lib0;->a:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Lr45;

    .line 13
    .line 14
    iget-object p0, p0, Lr45;->f:La25;

    .line 15
    .line 16
    invoke-static {p0}, Lr45;->l(Lq55;)V

    .line 17
    .line 18
    .line 19
    invoke-static {p0, p1}, Lbt4;->c(La25;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_0
    check-cast p0, Lat4;

    .line 24
    .line 25
    iget-object p0, p0, Lib0;->a:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p0, Lr45;

    .line 28
    .line 29
    iget-object p0, p0, Lr45;->f:La25;

    .line 30
    .line 31
    invoke-static {p0}, Lr45;->l(Lq55;)V

    .line 32
    .line 33
    .line 34
    invoke-static {p0, p1}, Lbt4;->c(La25;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 1
    iget p0, p0, Lys4;->n:I

    .line 2
    .line 3
    return-void
.end method

.method public final onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 12

    .line 1
    iget v0, p0, Lys4;->n:I

    .line 2
    .line 3
    iget-object p0, p0, Lys4;->o:Lib0;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lm15;

    .line 9
    .line 10
    iget-object p0, p0, Lib0;->a:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Lr45;

    .line 13
    .line 14
    iget-object v0, p0, Lr45;->f:La25;

    .line 15
    .line 16
    invoke-static {v0}, Lr45;->l(Lq55;)V

    .line 17
    .line 18
    .line 19
    const-string v2, "messages"

    .line 20
    .line 21
    const-string v3, "create table if not exists messages ( type INTEGER NOT NULL, entry BLOB NOT NULL)"

    .line 22
    .line 23
    const-string v4, "type,entry"

    .line 24
    .line 25
    sget-object v5, Lm15;->e:[Ljava/lang/String;

    .line 26
    .line 27
    move-object v1, p1

    .line 28
    invoke-static/range {v0 .. v5}, Lbt4;->b(La25;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_0
    move-object v7, p1

    .line 33
    check-cast p0, Lat4;

    .line 34
    .line 35
    iget-object p0, p0, Lib0;->a:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast p0, Lr45;

    .line 38
    .line 39
    iget-object v6, p0, Lr45;->f:La25;

    .line 40
    .line 41
    invoke-static {v6}, Lr45;->l(Lq55;)V

    .line 42
    .line 43
    .line 44
    const-string v8, "events"

    .line 45
    .line 46
    const-string v9, "CREATE TABLE IF NOT EXISTS events ( app_id TEXT NOT NULL, name TEXT NOT NULL, lifetime_count INTEGER NOT NULL, current_bundle_count INTEGER NOT NULL, last_fire_timestamp INTEGER NOT NULL, PRIMARY KEY (app_id, name)) ;"

    .line 47
    .line 48
    const-string v10, "app_id,name,lifetime_count,current_bundle_count,last_fire_timestamp"

    .line 49
    .line 50
    sget-object v11, Lat4;->f:[Ljava/lang/String;

    .line 51
    .line 52
    invoke-static/range {v6 .. v11}, Lbt4;->b(La25;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object v6, p0, Lr45;->f:La25;

    .line 56
    .line 57
    invoke-static {v6}, Lr45;->l(Lq55;)V

    .line 58
    .line 59
    .line 60
    const/4 v11, 0x0

    .line 61
    const-string v8, "events_snapshot"

    .line 62
    .line 63
    const-string v9, "CREATE TABLE IF NOT EXISTS events_snapshot ( app_id TEXT NOT NULL, name TEXT NOT NULL, lifetime_count INTEGER NOT NULL, current_bundle_count INTEGER NOT NULL, last_fire_timestamp INTEGER NOT NULL, last_bundled_timestamp INTEGER, last_bundled_day INTEGER, last_sampled_complex_event_id INTEGER, last_sampling_rate INTEGER, last_exempt_from_sampling INTEGER, current_session_count INTEGER, PRIMARY KEY (app_id, name)) ;"

    .line 64
    .line 65
    const-string v10, "app_id,name,lifetime_count,current_bundle_count,last_fire_timestamp,last_bundled_timestamp,last_bundled_day,last_sampled_complex_event_id,last_sampling_rate,last_exempt_from_sampling,current_session_count"

    .line 66
    .line 67
    invoke-static/range {v6 .. v11}, Lbt4;->b(La25;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-static {v6}, Lr45;->l(Lq55;)V

    .line 71
    .line 72
    .line 73
    const-string v8, "conditional_properties"

    .line 74
    .line 75
    const-string v9, "CREATE TABLE IF NOT EXISTS conditional_properties ( app_id TEXT NOT NULL, origin TEXT NOT NULL, name TEXT NOT NULL, value BLOB NOT NULL, creation_timestamp INTEGER NOT NULL, active INTEGER NOT NULL, trigger_event_name TEXT, trigger_timeout INTEGER NOT NULL, timed_out_event BLOB,triggered_event BLOB, triggered_timestamp INTEGER NOT NULL, time_to_live INTEGER NOT NULL, expired_event BLOB, PRIMARY KEY (app_id, name)) ;"

    .line 76
    .line 77
    const-string v10, "app_id,origin,name,value,active,trigger_event_name,trigger_timeout,creation_timestamp,timed_out_event,triggered_event,triggered_timestamp,time_to_live,expired_event"

    .line 78
    .line 79
    invoke-static/range {v6 .. v11}, Lbt4;->b(La25;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-static {v6}, Lr45;->l(Lq55;)V

    .line 83
    .line 84
    .line 85
    const-string v8, "user_attributes"

    .line 86
    .line 87
    const-string v9, "CREATE TABLE IF NOT EXISTS user_attributes ( app_id TEXT NOT NULL, name TEXT NOT NULL, set_timestamp INTEGER NOT NULL, value BLOB NOT NULL, PRIMARY KEY (app_id, name)) ;"

    .line 88
    .line 89
    const-string v10, "app_id,name,set_timestamp,value"

    .line 90
    .line 91
    sget-object v11, Lat4;->h:[Ljava/lang/String;

    .line 92
    .line 93
    invoke-static/range {v6 .. v11}, Lbt4;->b(La25;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-static {v6}, Lr45;->l(Lq55;)V

    .line 97
    .line 98
    .line 99
    const-string v8, "apps"

    .line 100
    .line 101
    const-string v9, "CREATE TABLE IF NOT EXISTS apps ( app_id TEXT NOT NULL, app_instance_id TEXT, gmp_app_id TEXT, resettable_device_id_hash TEXT, last_bundle_index INTEGER NOT NULL, last_bundle_end_timestamp INTEGER NOT NULL, PRIMARY KEY (app_id)) ;"

    .line 102
    .line 103
    const-string v10, "app_id,app_instance_id,gmp_app_id,resettable_device_id_hash,last_bundle_index,last_bundle_end_timestamp"

    .line 104
    .line 105
    sget-object v11, Lat4;->i:[Ljava/lang/String;

    .line 106
    .line 107
    invoke-static/range {v6 .. v11}, Lbt4;->b(La25;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-static {v6}, Lr45;->l(Lq55;)V

    .line 111
    .line 112
    .line 113
    const-string v8, "queue"

    .line 114
    .line 115
    const-string v9, "CREATE TABLE IF NOT EXISTS queue ( app_id TEXT NOT NULL, bundle_end_timestamp INTEGER NOT NULL, data BLOB NOT NULL);"

    .line 116
    .line 117
    const-string v10, "app_id,bundle_end_timestamp,data"

    .line 118
    .line 119
    sget-object v11, Lat4;->k:[Ljava/lang/String;

    .line 120
    .line 121
    invoke-static/range {v6 .. v11}, Lbt4;->b(La25;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-static {v6}, Lr45;->l(Lq55;)V

    .line 125
    .line 126
    .line 127
    const/4 v11, 0x0

    .line 128
    const-string v8, "raw_events_metadata"

    .line 129
    .line 130
    const-string v9, "CREATE TABLE IF NOT EXISTS raw_events_metadata ( app_id TEXT NOT NULL, metadata_fingerprint INTEGER NOT NULL, metadata BLOB NOT NULL, PRIMARY KEY (app_id, metadata_fingerprint));"

    .line 131
    .line 132
    const-string v10, "app_id,metadata_fingerprint,metadata"

    .line 133
    .line 134
    invoke-static/range {v6 .. v11}, Lbt4;->b(La25;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-static {v6}, Lr45;->l(Lq55;)V

    .line 138
    .line 139
    .line 140
    const-string v8, "raw_events"

    .line 141
    .line 142
    const-string v9, "CREATE TABLE IF NOT EXISTS raw_events ( app_id TEXT NOT NULL, name TEXT NOT NULL, timestamp INTEGER NOT NULL, metadata_fingerprint INTEGER NOT NULL, data BLOB NOT NULL);"

    .line 143
    .line 144
    const-string v10, "app_id,name,timestamp,metadata_fingerprint,data"

    .line 145
    .line 146
    sget-object v11, Lat4;->j:[Ljava/lang/String;

    .line 147
    .line 148
    invoke-static/range {v6 .. v11}, Lbt4;->b(La25;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-static {v6}, Lr45;->l(Lq55;)V

    .line 152
    .line 153
    .line 154
    const-string v8, "event_filters"

    .line 155
    .line 156
    const-string v9, "CREATE TABLE IF NOT EXISTS event_filters ( app_id TEXT NOT NULL, audience_id INTEGER NOT NULL, filter_id INTEGER NOT NULL, event_name TEXT NOT NULL, data BLOB NOT NULL, PRIMARY KEY (app_id, event_name, audience_id, filter_id));"

    .line 157
    .line 158
    const-string v10, "app_id,audience_id,filter_id,event_name,data"

    .line 159
    .line 160
    sget-object v11, Lat4;->l:[Ljava/lang/String;

    .line 161
    .line 162
    invoke-static/range {v6 .. v11}, Lbt4;->b(La25;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-static {v6}, Lr45;->l(Lq55;)V

    .line 166
    .line 167
    .line 168
    const-string v8, "property_filters"

    .line 169
    .line 170
    const-string v9, "CREATE TABLE IF NOT EXISTS property_filters ( app_id TEXT NOT NULL, audience_id INTEGER NOT NULL, filter_id INTEGER NOT NULL, property_name TEXT NOT NULL, data BLOB NOT NULL, PRIMARY KEY (app_id, property_name, audience_id, filter_id));"

    .line 171
    .line 172
    const-string v10, "app_id,audience_id,filter_id,property_name,data"

    .line 173
    .line 174
    sget-object v11, Lat4;->m:[Ljava/lang/String;

    .line 175
    .line 176
    invoke-static/range {v6 .. v11}, Lbt4;->b(La25;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-static {v6}, Lr45;->l(Lq55;)V

    .line 180
    .line 181
    .line 182
    const/4 v11, 0x0

    .line 183
    const-string v8, "audience_filter_values"

    .line 184
    .line 185
    const-string v9, "CREATE TABLE IF NOT EXISTS audience_filter_values ( app_id TEXT NOT NULL, audience_id INTEGER NOT NULL, current_results BLOB, PRIMARY KEY (app_id, audience_id));"

    .line 186
    .line 187
    const-string v10, "app_id,audience_id,current_results"

    .line 188
    .line 189
    invoke-static/range {v6 .. v11}, Lbt4;->b(La25;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    invoke-static {v6}, Lr45;->l(Lq55;)V

    .line 193
    .line 194
    .line 195
    const-string v8, "app2"

    .line 196
    .line 197
    const-string v9, "CREATE TABLE IF NOT EXISTS app2 ( app_id TEXT NOT NULL, first_open_count INTEGER NOT NULL, PRIMARY KEY (app_id));"

    .line 198
    .line 199
    const-string v10, "app_id,first_open_count"

    .line 200
    .line 201
    sget-object v11, Lat4;->n:[Ljava/lang/String;

    .line 202
    .line 203
    invoke-static/range {v6 .. v11}, Lbt4;->b(La25;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-static {v6}, Lr45;->l(Lq55;)V

    .line 207
    .line 208
    .line 209
    const-string v10, "app_id,event_id,children_to_process,main_event"

    .line 210
    .line 211
    const/4 v11, 0x0

    .line 212
    const-string v8, "main_event_params"

    .line 213
    .line 214
    const-string v9, "CREATE TABLE IF NOT EXISTS main_event_params ( app_id TEXT NOT NULL, event_id TEXT NOT NULL, children_to_process INTEGER NOT NULL, main_event BLOB NOT NULL, PRIMARY KEY (app_id));"

    .line 215
    .line 216
    invoke-static/range {v6 .. v11}, Lbt4;->b(La25;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    invoke-static {v6}, Lr45;->l(Lq55;)V

    .line 220
    .line 221
    .line 222
    const-string v8, "default_event_params"

    .line 223
    .line 224
    const-string v9, "CREATE TABLE IF NOT EXISTS default_event_params ( app_id TEXT NOT NULL, parameters BLOB NOT NULL, PRIMARY KEY (app_id));"

    .line 225
    .line 226
    const-string v10, "app_id,parameters"

    .line 227
    .line 228
    invoke-static/range {v6 .. v11}, Lbt4;->b(La25;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    invoke-static {v6}, Lr45;->l(Lq55;)V

    .line 232
    .line 233
    .line 234
    const-string v8, "consent_settings"

    .line 235
    .line 236
    const-string v9, "CREATE TABLE IF NOT EXISTS consent_settings ( app_id TEXT NOT NULL, consent_state TEXT NOT NULL, PRIMARY KEY (app_id));"

    .line 237
    .line 238
    const-string v10, "app_id,consent_state"

    .line 239
    .line 240
    sget-object v11, Lat4;->o:[Ljava/lang/String;

    .line 241
    .line 242
    invoke-static/range {v6 .. v11}, Lbt4;->b(La25;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    invoke-static {}, Ler4;->a()V

    .line 246
    .line 247
    .line 248
    invoke-static {v6}, Lr45;->l(Lq55;)V

    .line 249
    .line 250
    .line 251
    const-string v8, "trigger_uris"

    .line 252
    .line 253
    const-string v9, "CREATE TABLE IF NOT EXISTS trigger_uris ( app_id TEXT NOT NULL, trigger_uri TEXT NOT NULL, timestamp_millis INTEGER NOT NULL, source INTEGER NOT NULL);"

    .line 254
    .line 255
    const-string v10, "app_id,trigger_uri,source,timestamp_millis"

    .line 256
    .line 257
    sget-object v11, Lat4;->p:[Ljava/lang/String;

    .line 258
    .line 259
    invoke-static/range {v6 .. v11}, Lbt4;->b(La25;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    invoke-static {v6}, Lr45;->l(Lq55;)V

    .line 263
    .line 264
    .line 265
    sget-object v11, Lat4;->g:[Ljava/lang/String;

    .line 266
    .line 267
    const-string v8, "upload_queue"

    .line 268
    .line 269
    const-string v9, "CREATE TABLE IF NOT EXISTS upload_queue ( app_id TEXT NOT NULL, upload_uri TEXT NOT NULL, upload_headers TEXT NOT NULL, upload_type INTEGER NOT NULL, measurement_batch BLOB NOT NULL, retry_count INTEGER NOT NULL, creation_timestamp INTEGER NOT NULL );"

    .line 270
    .line 271
    const-string v10, "app_id,upload_uri,upload_headers,upload_type,measurement_batch,retry_count,creation_timestamp"

    .line 272
    .line 273
    invoke-static/range {v6 .. v11}, Lbt4;->b(La25;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    invoke-static {v6}, Lr45;->l(Lq55;)V

    .line 277
    .line 278
    .line 279
    const-string v10, "app_id,signal_name,metadata,count,last_increment_timestamp"

    .line 280
    .line 281
    const/4 v11, 0x0

    .line 282
    const-string v8, "diagnostic_signals"

    .line 283
    .line 284
    const-string v9, "CREATE TABLE IF NOT EXISTS diagnostic_signals ( app_id TEXT NOT NULL, signal_name TEXT NOT NULL, metadata TEXT NOT NULL, count INTEGER NOT NULL, last_increment_timestamp INTEGER NOT NULL);"

    .line 285
    .line 286
    invoke-static/range {v6 .. v11}, Lbt4;->b(La25;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    sget-object p0, Llq4;->o:Llq4;

    .line 290
    .line 291
    iget-object p0, p0, Llq4;->n:Lfu3;

    .line 292
    .line 293
    iget-object p0, p0, Lfu3;->n:Ljava/lang/Object;

    .line 294
    .line 295
    check-cast p0, Lmq4;

    .line 296
    .line 297
    invoke-static {v6}, Lr45;->l(Lq55;)V

    .line 298
    .line 299
    .line 300
    const-string v10, "app_id,name,data,timestamp_millis"

    .line 301
    .line 302
    const-string v8, "no_data_mode_events"

    .line 303
    .line 304
    const-string v9, "CREATE TABLE IF NOT EXISTS no_data_mode_events ( app_id TEXT NOT NULL, name TEXT NOT NULL, data BLOB NOT NULL, timestamp_millis INTEGER NOT NULL);"

    .line 305
    .line 306
    invoke-static/range {v6 .. v11}, Lbt4;->b(La25;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    return-void

    .line 310
    nop

    .line 311
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 1
    iget p0, p0, Lys4;->n:I

    .line 2
    .line 3
    return-void
.end method
