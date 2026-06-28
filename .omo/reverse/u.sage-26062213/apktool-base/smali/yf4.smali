.class public final Lyf4;
.super Ldz0;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final synthetic d:Landroidx/work/impl/WorkDatabase_Impl;


# direct methods
.method public constructor <init>(Landroidx/work/impl/WorkDatabase_Impl;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lyf4;->d:Landroidx/work/impl/WorkDatabase_Impl;

    .line 2
    .line 3
    const-string p1, "08b926448d86528e697981ddd30459f7"

    .line 4
    .line 5
    const-string v0, "149fd8ad55885d3fe3549a37a0163243"

    .line 6
    .line 7
    const/16 v1, 0x18

    .line 8
    .line 9
    invoke-direct {p0, p1, v1, v0}, Ldz0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(Ljb3;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string p0, "CREATE TABLE IF NOT EXISTS `Dependency` (`work_spec_id` TEXT NOT NULL, `prerequisite_id` TEXT NOT NULL, PRIMARY KEY(`work_spec_id`, `prerequisite_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE , FOREIGN KEY(`prerequisite_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )"

    .line 5
    .line 6
    invoke-static {p1, p0}, Lix;->r(Ljb3;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string p0, "CREATE INDEX IF NOT EXISTS `index_Dependency_work_spec_id` ON `Dependency` (`work_spec_id`)"

    .line 10
    .line 11
    invoke-static {p1, p0}, Lix;->r(Ljb3;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string p0, "CREATE INDEX IF NOT EXISTS `index_Dependency_prerequisite_id` ON `Dependency` (`prerequisite_id`)"

    .line 15
    .line 16
    invoke-static {p1, p0}, Lix;->r(Ljb3;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string p0, "CREATE TABLE IF NOT EXISTS `WorkSpec` (`id` TEXT NOT NULL, `state` INTEGER NOT NULL, `worker_class_name` TEXT NOT NULL, `input_merger_class_name` TEXT NOT NULL, `input` BLOB NOT NULL, `output` BLOB NOT NULL, `initial_delay` INTEGER NOT NULL, `interval_duration` INTEGER NOT NULL, `flex_duration` INTEGER NOT NULL, `run_attempt_count` INTEGER NOT NULL, `backoff_policy` INTEGER NOT NULL, `backoff_delay_duration` INTEGER NOT NULL, `last_enqueue_time` INTEGER NOT NULL DEFAULT -1, `minimum_retention_duration` INTEGER NOT NULL, `schedule_requested_at` INTEGER NOT NULL, `run_in_foreground` INTEGER NOT NULL, `out_of_quota_policy` INTEGER NOT NULL, `period_count` INTEGER NOT NULL DEFAULT 0, `generation` INTEGER NOT NULL DEFAULT 0, `next_schedule_time_override` INTEGER NOT NULL DEFAULT 9223372036854775807, `next_schedule_time_override_generation` INTEGER NOT NULL DEFAULT 0, `stop_reason` INTEGER NOT NULL DEFAULT -256, `trace_tag` TEXT, `backoff_on_system_interruptions` INTEGER, `required_network_type` INTEGER NOT NULL, `required_network_request` BLOB NOT NULL DEFAULT x\'\', `requires_charging` INTEGER NOT NULL, `requires_device_idle` INTEGER NOT NULL, `requires_battery_not_low` INTEGER NOT NULL, `requires_storage_not_low` INTEGER NOT NULL, `trigger_content_update_delay` INTEGER NOT NULL, `trigger_max_content_delay` INTEGER NOT NULL, `content_uri_triggers` BLOB NOT NULL, PRIMARY KEY(`id`))"

    .line 20
    .line 21
    invoke-static {p1, p0}, Lix;->r(Ljb3;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string p0, "CREATE INDEX IF NOT EXISTS `index_WorkSpec_schedule_requested_at` ON `WorkSpec` (`schedule_requested_at`)"

    .line 25
    .line 26
    invoke-static {p1, p0}, Lix;->r(Ljb3;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string p0, "CREATE INDEX IF NOT EXISTS `index_WorkSpec_last_enqueue_time` ON `WorkSpec` (`last_enqueue_time`)"

    .line 30
    .line 31
    invoke-static {p1, p0}, Lix;->r(Ljb3;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string p0, "CREATE TABLE IF NOT EXISTS `WorkTag` (`tag` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`tag`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )"

    .line 35
    .line 36
    invoke-static {p1, p0}, Lix;->r(Ljb3;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string p0, "CREATE INDEX IF NOT EXISTS `index_WorkTag_work_spec_id` ON `WorkTag` (`work_spec_id`)"

    .line 40
    .line 41
    invoke-static {p1, p0}, Lix;->r(Ljb3;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const-string p0, "CREATE TABLE IF NOT EXISTS `SystemIdInfo` (`work_spec_id` TEXT NOT NULL, `generation` INTEGER NOT NULL DEFAULT 0, `system_id` INTEGER NOT NULL, PRIMARY KEY(`work_spec_id`, `generation`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )"

    .line 45
    .line 46
    invoke-static {p1, p0}, Lix;->r(Ljb3;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const-string p0, "CREATE TABLE IF NOT EXISTS `WorkName` (`name` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`name`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )"

    .line 50
    .line 51
    invoke-static {p1, p0}, Lix;->r(Ljb3;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-string p0, "CREATE INDEX IF NOT EXISTS `index_WorkName_work_spec_id` ON `WorkName` (`work_spec_id`)"

    .line 55
    .line 56
    invoke-static {p1, p0}, Lix;->r(Ljb3;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const-string p0, "CREATE TABLE IF NOT EXISTS `WorkProgress` (`work_spec_id` TEXT NOT NULL, `progress` BLOB NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )"

    .line 60
    .line 61
    invoke-static {p1, p0}, Lix;->r(Ljb3;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const-string p0, "CREATE TABLE IF NOT EXISTS `Preference` (`key` TEXT NOT NULL, `long_value` INTEGER, PRIMARY KEY(`key`))"

    .line 65
    .line 66
    invoke-static {p1, p0}, Lix;->r(Ljb3;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const-string p0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    .line 70
    .line 71
    invoke-static {p1, p0}, Lix;->r(Ljb3;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    const-string p0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'08b926448d86528e697981ddd30459f7\')"

    .line 75
    .line 76
    invoke-static {p1, p0}, Lix;->r(Ljb3;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final b(Ljb3;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string p0, "DROP TABLE IF EXISTS `Dependency`"

    .line 5
    .line 6
    invoke-static {p1, p0}, Lix;->r(Ljb3;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string p0, "DROP TABLE IF EXISTS `WorkSpec`"

    .line 10
    .line 11
    invoke-static {p1, p0}, Lix;->r(Ljb3;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string p0, "DROP TABLE IF EXISTS `WorkTag`"

    .line 15
    .line 16
    invoke-static {p1, p0}, Lix;->r(Ljb3;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string p0, "DROP TABLE IF EXISTS `SystemIdInfo`"

    .line 20
    .line 21
    invoke-static {p1, p0}, Lix;->r(Ljb3;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string p0, "DROP TABLE IF EXISTS `WorkName`"

    .line 25
    .line 26
    invoke-static {p1, p0}, Lix;->r(Ljb3;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string p0, "DROP TABLE IF EXISTS `WorkProgress`"

    .line 30
    .line 31
    invoke-static {p1, p0}, Lix;->r(Ljb3;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string p0, "DROP TABLE IF EXISTS `Preference`"

    .line 35
    .line 36
    invoke-static {p1, p0}, Lix;->r(Ljb3;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final c(Ljb3;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final d(Ljb3;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "PRAGMA foreign_keys = ON"

    .line 5
    .line 6
    invoke-static {p1, v0}, Lix;->r(Ljb3;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lyf4;->d:Landroidx/work/impl/WorkDatabase_Impl;

    .line 10
    .line 11
    invoke-virtual {p0}, Lga3;->f()Lbu1;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    iget-object v0, p0, Lbu1;->b:Lv24;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    const-string v1, "PRAGMA query_only"

    .line 21
    .line 22
    invoke-interface {p1, v1}, Ljb3;->k0(Ljava/lang/String;)Lpb3;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    :try_start_0
    invoke-interface {v1}, Lpb3;->c0()Z

    .line 27
    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-interface {v1, v2}, Lpb3;->getLong(I)J

    .line 31
    .line 32
    .line 33
    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 34
    const-wide/16 v5, 0x0

    .line 35
    .line 36
    cmp-long v3, v3, v5

    .line 37
    .line 38
    const/4 v4, 0x1

    .line 39
    if-eqz v3, :cond_0

    .line 40
    .line 41
    move v2, v4

    .line 42
    :cond_0
    const/4 v3, 0x0

    .line 43
    invoke-static {v1, v3}, Lis0;->r(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    if-nez v2, :cond_2

    .line 47
    .line 48
    const-string v1, "PRAGMA temp_store = MEMORY"

    .line 49
    .line 50
    invoke-static {p1, v1}, Lix;->r(Ljb3;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const-string v1, "PRAGMA recursive_triggers = 1"

    .line 54
    .line 55
    invoke-static {p1, v1}, Lix;->r(Ljb3;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const-string v1, "DROP TABLE IF EXISTS room_table_modification_log"

    .line 59
    .line 60
    invoke-static {p1, v1}, Lix;->r(Ljb3;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-boolean v1, v0, Lv24;->d:Z

    .line 64
    .line 65
    if-eqz v1, :cond_1

    .line 66
    .line 67
    const-string v1, "CREATE TEMP TABLE IF NOT EXISTS room_table_modification_log (table_id INTEGER PRIMARY KEY, invalidated INTEGER NOT NULL DEFAULT 0)"

    .line 68
    .line 69
    invoke-static {p1, v1}, Lix;->r(Ljb3;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    const-string v1, "CREATE TEMP TABLE IF NOT EXISTS room_table_modification_log (table_id INTEGER PRIMARY KEY, invalidated INTEGER NOT NULL DEFAULT 0)"

    .line 74
    .line 75
    const-string v2, "TEMP"

    .line 76
    .line 77
    const-string v3, ""

    .line 78
    .line 79
    invoke-static {v1, v2, v3}, Lgt3;->w0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-static {p1, v1}, Lix;->r(Ljb3;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    :goto_0
    iget-object p1, v0, Lv24;->h:Lmu0;

    .line 87
    .line 88
    iget-object v0, p1, Lmu0;->b:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 93
    .line 94
    .line 95
    :try_start_1
    iput-boolean v4, p1, Lmu0;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :catchall_0
    move-exception p0

    .line 102
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 103
    .line 104
    .line 105
    throw p0

    .line 106
    :cond_2
    :goto_1
    iget-object p0, p0, Lbu1;->g:Ljava/lang/Object;

    .line 107
    .line 108
    monitor-enter p0

    .line 109
    monitor-exit p0

    .line 110
    return-void

    .line 111
    :catchall_1
    move-exception p0

    .line 112
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 113
    :catchall_2
    move-exception p1

    .line 114
    invoke-static {v1, p0}, Lis0;->r(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 115
    .line 116
    .line 117
    throw p1
.end method

.method public final e(Ljb3;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final f(Ljb3;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ltv4;->p()La42;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    const-string v0, "SELECT name FROM sqlite_master WHERE type = \'trigger\'"

    .line 9
    .line 10
    invoke-interface {p1, v0}, Ljb3;->k0(Ljava/lang/String;)Lpb3;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :goto_0
    :try_start_0
    invoke-interface {v0}, Lpb3;->c0()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-interface {v0, v2}, Lpb3;->o(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {p0, v1}, La42;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_2

    .line 31
    :cond_0
    const/4 v1, 0x0

    .line 32
    invoke-static {v0, v1}, Lis0;->r(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    invoke-static {p0}, Ltv4;->l(La42;)La42;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p0, v2}, La42;->listIterator(I)Ljava/util/ListIterator;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    :cond_1
    :goto_1
    move-object v0, p0

    .line 44
    check-cast v0, Lxj1;

    .line 45
    .line 46
    invoke-virtual {v0}, Lxj1;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_2

    .line 51
    .line 52
    invoke-virtual {v0}, Lxj1;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Ljava/lang/String;

    .line 57
    .line 58
    const-string v1, "room_fts_content_sync_"

    .line 59
    .line 60
    invoke-static {v0, v1, v2}, Lgt3;->y0(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_1

    .line 65
    .line 66
    const-string v1, "DROP TRIGGER IF EXISTS "

    .line 67
    .line 68
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-static {p1, v0}, Lix;->r(Ljb3;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    return-void

    .line 77
    :goto_2
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 78
    :catchall_1
    move-exception p1

    .line 79
    invoke-static {v0, p0}, Lis0;->r(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 80
    .line 81
    .line 82
    throw p1
.end method

.method public final g(Ljb3;)Lf7;
    .locals 23

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Lcw3;

    .line 12
    .line 13
    const/4 v7, 0x0

    .line 14
    const/4 v8, 0x1

    .line 15
    const-string v3, "work_spec_id"

    .line 16
    .line 17
    const-string v4, "TEXT"

    .line 18
    .line 19
    const/4 v5, 0x1

    .line 20
    const/4 v6, 0x1

    .line 21
    invoke-direct/range {v2 .. v8}, Lcw3;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    const-string v3, "work_spec_id"

    .line 25
    .line 26
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    new-instance v4, Lcw3;

    .line 30
    .line 31
    const/4 v9, 0x0

    .line 32
    const/4 v10, 0x1

    .line 33
    const-string v5, "prerequisite_id"

    .line 34
    .line 35
    const-string v6, "TEXT"

    .line 36
    .line 37
    const/4 v7, 0x1

    .line 38
    const/4 v8, 0x2

    .line 39
    invoke-direct/range {v4 .. v10}, Lcw3;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 40
    .line 41
    .line 42
    const-string v2, "prerequisite_id"

    .line 43
    .line 44
    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    new-instance v4, Ljava/util/LinkedHashSet;

    .line 48
    .line 49
    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 50
    .line 51
    .line 52
    new-instance v5, Ldw3;

    .line 53
    .line 54
    invoke-static {v3}, Ltv4;->E(Ljava/lang/Object;)Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object v9

    .line 58
    const-string v11, "id"

    .line 59
    .line 60
    invoke-static {v11}, Ltv4;->E(Ljava/lang/Object;)Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object v10

    .line 64
    const-string v6, "WorkSpec"

    .line 65
    .line 66
    const-string v7, "CASCADE"

    .line 67
    .line 68
    const-string v8, "CASCADE"

    .line 69
    .line 70
    invoke-direct/range {v5 .. v10}, Ldw3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 71
    .line 72
    .line 73
    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    new-instance v12, Ldw3;

    .line 77
    .line 78
    invoke-static {v2}, Ltv4;->E(Ljava/lang/Object;)Ljava/util/List;

    .line 79
    .line 80
    .line 81
    move-result-object v16

    .line 82
    invoke-static {v11}, Ltv4;->E(Ljava/lang/Object;)Ljava/util/List;

    .line 83
    .line 84
    .line 85
    move-result-object v17

    .line 86
    const-string v13, "WorkSpec"

    .line 87
    .line 88
    const-string v14, "CASCADE"

    .line 89
    .line 90
    const-string v15, "CASCADE"

    .line 91
    .line 92
    invoke-direct/range {v12 .. v17}, Ldw3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 93
    .line 94
    .line 95
    invoke-interface {v4, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    new-instance v5, Ljava/util/LinkedHashSet;

    .line 99
    .line 100
    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    .line 101
    .line 102
    .line 103
    new-instance v6, Lew3;

    .line 104
    .line 105
    invoke-static {v3}, Ltv4;->E(Ljava/lang/Object;)Ljava/util/List;

    .line 106
    .line 107
    .line 108
    move-result-object v7

    .line 109
    const-string v8, "ASC"

    .line 110
    .line 111
    invoke-static {v8}, Ltv4;->E(Ljava/lang/Object;)Ljava/util/List;

    .line 112
    .line 113
    .line 114
    move-result-object v9

    .line 115
    const-string v10, "index_Dependency_work_spec_id"

    .line 116
    .line 117
    const/4 v12, 0x0

    .line 118
    invoke-direct {v6, v10, v12, v7, v9}, Lew3;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    .line 119
    .line 120
    .line 121
    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    new-instance v6, Lew3;

    .line 125
    .line 126
    invoke-static {v2}, Ltv4;->E(Ljava/lang/Object;)Ljava/util/List;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-static {v8}, Ltv4;->E(Ljava/lang/Object;)Ljava/util/List;

    .line 131
    .line 132
    .line 133
    move-result-object v7

    .line 134
    const-string v9, "index_Dependency_prerequisite_id"

    .line 135
    .line 136
    invoke-direct {v6, v9, v12, v2, v7}, Lew3;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    .line 137
    .line 138
    .line 139
    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    new-instance v2, Lfw3;

    .line 143
    .line 144
    const-string v6, "Dependency"

    .line 145
    .line 146
    invoke-direct {v2, v6, v1, v4, v5}, Lfw3;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    .line 147
    .line 148
    .line 149
    invoke-static {v0, v6}, Lix;->L(Ljb3;Ljava/lang/String;)Lfw3;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-virtual {v2, v1}, Lfw3;->equals(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v4

    .line 157
    const-string v5, "\n Found:\n"

    .line 158
    .line 159
    if-nez v4, :cond_0

    .line 160
    .line 161
    new-instance v0, Lf7;

    .line 162
    .line 163
    new-instance v3, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    const-string v4, "Dependency(androidx.work.impl.model.Dependency).\n Expected:\n"

    .line 166
    .line 167
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    invoke-direct {v0, v12, v1}, Lf7;-><init>(ZLjava/lang/String;)V

    .line 184
    .line 185
    .line 186
    return-object v0

    .line 187
    :cond_0
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 188
    .line 189
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 190
    .line 191
    .line 192
    new-instance v13, Lcw3;

    .line 193
    .line 194
    const/16 v18, 0x0

    .line 195
    .line 196
    const/16 v19, 0x1

    .line 197
    .line 198
    const/16 v16, 0x1

    .line 199
    .line 200
    const/16 v17, 0x1

    .line 201
    .line 202
    const-string v14, "id"

    .line 203
    .line 204
    const-string v15, "TEXT"

    .line 205
    .line 206
    invoke-direct/range {v13 .. v19}, Lcw3;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 207
    .line 208
    .line 209
    invoke-interface {v1, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    new-instance v14, Lcw3;

    .line 213
    .line 214
    const/16 v19, 0x0

    .line 215
    .line 216
    const/16 v20, 0x1

    .line 217
    .line 218
    const/16 v18, 0x0

    .line 219
    .line 220
    const-string v15, "state"

    .line 221
    .line 222
    const-string v16, "INTEGER"

    .line 223
    .line 224
    invoke-direct/range {v14 .. v20}, Lcw3;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 225
    .line 226
    .line 227
    const-string v2, "state"

    .line 228
    .line 229
    invoke-interface {v1, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    new-instance v15, Lcw3;

    .line 233
    .line 234
    const/16 v20, 0x0

    .line 235
    .line 236
    const/16 v21, 0x1

    .line 237
    .line 238
    const/16 v18, 0x1

    .line 239
    .line 240
    const/16 v19, 0x0

    .line 241
    .line 242
    const-string v16, "worker_class_name"

    .line 243
    .line 244
    const-string v17, "TEXT"

    .line 245
    .line 246
    invoke-direct/range {v15 .. v21}, Lcw3;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 247
    .line 248
    .line 249
    const-string v2, "worker_class_name"

    .line 250
    .line 251
    invoke-interface {v1, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    new-instance v16, Lcw3;

    .line 255
    .line 256
    const/16 v21, 0x0

    .line 257
    .line 258
    const/16 v22, 0x1

    .line 259
    .line 260
    const/16 v19, 0x1

    .line 261
    .line 262
    const/16 v20, 0x0

    .line 263
    .line 264
    const-string v17, "input_merger_class_name"

    .line 265
    .line 266
    const-string v18, "TEXT"

    .line 267
    .line 268
    invoke-direct/range {v16 .. v22}, Lcw3;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 269
    .line 270
    .line 271
    move-object/from16 v2, v16

    .line 272
    .line 273
    const-string v4, "input_merger_class_name"

    .line 274
    .line 275
    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    new-instance v13, Lcw3;

    .line 279
    .line 280
    const/16 v18, 0x0

    .line 281
    .line 282
    const/16 v16, 0x1

    .line 283
    .line 284
    const/16 v17, 0x0

    .line 285
    .line 286
    const-string v14, "input"

    .line 287
    .line 288
    const-string v15, "BLOB"

    .line 289
    .line 290
    invoke-direct/range {v13 .. v19}, Lcw3;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 291
    .line 292
    .line 293
    const-string v2, "input"

    .line 294
    .line 295
    invoke-interface {v1, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    new-instance v14, Lcw3;

    .line 299
    .line 300
    const/16 v19, 0x0

    .line 301
    .line 302
    const/16 v20, 0x1

    .line 303
    .line 304
    const/16 v17, 0x1

    .line 305
    .line 306
    const/16 v18, 0x0

    .line 307
    .line 308
    const-string v15, "output"

    .line 309
    .line 310
    const-string v16, "BLOB"

    .line 311
    .line 312
    invoke-direct/range {v14 .. v20}, Lcw3;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 313
    .line 314
    .line 315
    const-string v2, "output"

    .line 316
    .line 317
    invoke-interface {v1, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    new-instance v15, Lcw3;

    .line 321
    .line 322
    const/16 v20, 0x0

    .line 323
    .line 324
    const/16 v21, 0x1

    .line 325
    .line 326
    const/16 v18, 0x1

    .line 327
    .line 328
    const/16 v19, 0x0

    .line 329
    .line 330
    const-string v16, "initial_delay"

    .line 331
    .line 332
    const-string v17, "INTEGER"

    .line 333
    .line 334
    invoke-direct/range {v15 .. v21}, Lcw3;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 335
    .line 336
    .line 337
    const-string v2, "initial_delay"

    .line 338
    .line 339
    invoke-interface {v1, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    new-instance v16, Lcw3;

    .line 343
    .line 344
    const/16 v21, 0x0

    .line 345
    .line 346
    const/16 v19, 0x1

    .line 347
    .line 348
    const/16 v20, 0x0

    .line 349
    .line 350
    const-string v17, "interval_duration"

    .line 351
    .line 352
    const-string v18, "INTEGER"

    .line 353
    .line 354
    invoke-direct/range {v16 .. v22}, Lcw3;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 355
    .line 356
    .line 357
    move-object/from16 v2, v16

    .line 358
    .line 359
    const-string v4, "interval_duration"

    .line 360
    .line 361
    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    new-instance v13, Lcw3;

    .line 365
    .line 366
    const/16 v18, 0x0

    .line 367
    .line 368
    const/16 v16, 0x1

    .line 369
    .line 370
    const/16 v17, 0x0

    .line 371
    .line 372
    const-string v14, "flex_duration"

    .line 373
    .line 374
    const-string v15, "INTEGER"

    .line 375
    .line 376
    invoke-direct/range {v13 .. v19}, Lcw3;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 377
    .line 378
    .line 379
    const-string v2, "flex_duration"

    .line 380
    .line 381
    invoke-interface {v1, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    new-instance v14, Lcw3;

    .line 385
    .line 386
    const/16 v19, 0x0

    .line 387
    .line 388
    const/16 v20, 0x1

    .line 389
    .line 390
    const/16 v17, 0x1

    .line 391
    .line 392
    const/16 v18, 0x0

    .line 393
    .line 394
    const-string v15, "run_attempt_count"

    .line 395
    .line 396
    const-string v16, "INTEGER"

    .line 397
    .line 398
    invoke-direct/range {v14 .. v20}, Lcw3;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 399
    .line 400
    .line 401
    const-string v2, "run_attempt_count"

    .line 402
    .line 403
    invoke-interface {v1, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    new-instance v15, Lcw3;

    .line 407
    .line 408
    const/16 v20, 0x0

    .line 409
    .line 410
    const/16 v21, 0x1

    .line 411
    .line 412
    const/16 v18, 0x1

    .line 413
    .line 414
    const/16 v19, 0x0

    .line 415
    .line 416
    const-string v16, "backoff_policy"

    .line 417
    .line 418
    const-string v17, "INTEGER"

    .line 419
    .line 420
    invoke-direct/range {v15 .. v21}, Lcw3;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 421
    .line 422
    .line 423
    const-string v2, "backoff_policy"

    .line 424
    .line 425
    invoke-interface {v1, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    .line 427
    .line 428
    new-instance v16, Lcw3;

    .line 429
    .line 430
    const/16 v21, 0x0

    .line 431
    .line 432
    const/16 v19, 0x1

    .line 433
    .line 434
    const/16 v20, 0x0

    .line 435
    .line 436
    const-string v17, "backoff_delay_duration"

    .line 437
    .line 438
    const-string v18, "INTEGER"

    .line 439
    .line 440
    invoke-direct/range {v16 .. v22}, Lcw3;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 441
    .line 442
    .line 443
    move-object/from16 v2, v16

    .line 444
    .line 445
    const-string v4, "backoff_delay_duration"

    .line 446
    .line 447
    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    .line 449
    .line 450
    new-instance v13, Lcw3;

    .line 451
    .line 452
    const-string v18, "-1"

    .line 453
    .line 454
    const/16 v16, 0x1

    .line 455
    .line 456
    const/16 v17, 0x0

    .line 457
    .line 458
    const-string v14, "last_enqueue_time"

    .line 459
    .line 460
    const-string v15, "INTEGER"

    .line 461
    .line 462
    invoke-direct/range {v13 .. v19}, Lcw3;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 463
    .line 464
    .line 465
    const-string v2, "last_enqueue_time"

    .line 466
    .line 467
    invoke-interface {v1, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    .line 469
    .line 470
    new-instance v14, Lcw3;

    .line 471
    .line 472
    const/16 v19, 0x0

    .line 473
    .line 474
    const/16 v20, 0x1

    .line 475
    .line 476
    const/16 v17, 0x1

    .line 477
    .line 478
    const/16 v18, 0x0

    .line 479
    .line 480
    const-string v15, "minimum_retention_duration"

    .line 481
    .line 482
    const-string v16, "INTEGER"

    .line 483
    .line 484
    invoke-direct/range {v14 .. v20}, Lcw3;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 485
    .line 486
    .line 487
    const-string v4, "minimum_retention_duration"

    .line 488
    .line 489
    invoke-interface {v1, v4, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    .line 491
    .line 492
    new-instance v15, Lcw3;

    .line 493
    .line 494
    const/16 v20, 0x0

    .line 495
    .line 496
    const/16 v21, 0x1

    .line 497
    .line 498
    const/16 v18, 0x1

    .line 499
    .line 500
    const/16 v19, 0x0

    .line 501
    .line 502
    const-string v16, "schedule_requested_at"

    .line 503
    .line 504
    const-string v17, "INTEGER"

    .line 505
    .line 506
    invoke-direct/range {v15 .. v21}, Lcw3;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 507
    .line 508
    .line 509
    const-string v4, "schedule_requested_at"

    .line 510
    .line 511
    invoke-interface {v1, v4, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    .line 513
    .line 514
    new-instance v16, Lcw3;

    .line 515
    .line 516
    const/16 v21, 0x0

    .line 517
    .line 518
    const/16 v19, 0x1

    .line 519
    .line 520
    const/16 v20, 0x0

    .line 521
    .line 522
    const-string v17, "run_in_foreground"

    .line 523
    .line 524
    const-string v18, "INTEGER"

    .line 525
    .line 526
    invoke-direct/range {v16 .. v22}, Lcw3;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 527
    .line 528
    .line 529
    move-object/from16 v6, v16

    .line 530
    .line 531
    const-string v7, "run_in_foreground"

    .line 532
    .line 533
    invoke-interface {v1, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    .line 535
    .line 536
    new-instance v13, Lcw3;

    .line 537
    .line 538
    const/16 v18, 0x0

    .line 539
    .line 540
    const/16 v16, 0x1

    .line 541
    .line 542
    const/16 v17, 0x0

    .line 543
    .line 544
    const-string v14, "out_of_quota_policy"

    .line 545
    .line 546
    const-string v15, "INTEGER"

    .line 547
    .line 548
    invoke-direct/range {v13 .. v19}, Lcw3;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 549
    .line 550
    .line 551
    const-string v6, "out_of_quota_policy"

    .line 552
    .line 553
    invoke-interface {v1, v6, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    .line 555
    .line 556
    new-instance v14, Lcw3;

    .line 557
    .line 558
    const-string v19, "0"

    .line 559
    .line 560
    const/16 v20, 0x1

    .line 561
    .line 562
    const/16 v17, 0x1

    .line 563
    .line 564
    const/16 v18, 0x0

    .line 565
    .line 566
    const-string v15, "period_count"

    .line 567
    .line 568
    const-string v16, "INTEGER"

    .line 569
    .line 570
    invoke-direct/range {v14 .. v20}, Lcw3;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 571
    .line 572
    .line 573
    const-string v6, "period_count"

    .line 574
    .line 575
    invoke-interface {v1, v6, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    .line 577
    .line 578
    new-instance v15, Lcw3;

    .line 579
    .line 580
    const-string v20, "0"

    .line 581
    .line 582
    const/16 v21, 0x1

    .line 583
    .line 584
    const/16 v18, 0x1

    .line 585
    .line 586
    const/16 v19, 0x0

    .line 587
    .line 588
    const-string v16, "generation"

    .line 589
    .line 590
    const-string v17, "INTEGER"

    .line 591
    .line 592
    invoke-direct/range {v15 .. v21}, Lcw3;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 593
    .line 594
    .line 595
    const-string v6, "generation"

    .line 596
    .line 597
    invoke-interface {v1, v6, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    .line 599
    .line 600
    new-instance v16, Lcw3;

    .line 601
    .line 602
    const-string v21, "9223372036854775807"

    .line 603
    .line 604
    const/16 v19, 0x1

    .line 605
    .line 606
    const/16 v20, 0x0

    .line 607
    .line 608
    const-string v17, "next_schedule_time_override"

    .line 609
    .line 610
    const-string v18, "INTEGER"

    .line 611
    .line 612
    invoke-direct/range {v16 .. v22}, Lcw3;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 613
    .line 614
    .line 615
    move-object/from16 v7, v16

    .line 616
    .line 617
    const-string v9, "next_schedule_time_override"

    .line 618
    .line 619
    invoke-interface {v1, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    .line 621
    .line 622
    new-instance v13, Lcw3;

    .line 623
    .line 624
    const-string v18, "0"

    .line 625
    .line 626
    const/16 v16, 0x1

    .line 627
    .line 628
    const/16 v17, 0x0

    .line 629
    .line 630
    const-string v14, "next_schedule_time_override_generation"

    .line 631
    .line 632
    const-string v15, "INTEGER"

    .line 633
    .line 634
    invoke-direct/range {v13 .. v19}, Lcw3;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 635
    .line 636
    .line 637
    const-string v7, "next_schedule_time_override_generation"

    .line 638
    .line 639
    invoke-interface {v1, v7, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    .line 641
    .line 642
    new-instance v14, Lcw3;

    .line 643
    .line 644
    const-string v19, "-256"

    .line 645
    .line 646
    const/16 v20, 0x1

    .line 647
    .line 648
    const/16 v17, 0x1

    .line 649
    .line 650
    const/16 v18, 0x0

    .line 651
    .line 652
    const-string v15, "stop_reason"

    .line 653
    .line 654
    const-string v16, "INTEGER"

    .line 655
    .line 656
    invoke-direct/range {v14 .. v20}, Lcw3;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 657
    .line 658
    .line 659
    const-string v7, "stop_reason"

    .line 660
    .line 661
    invoke-interface {v1, v7, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    .line 663
    .line 664
    new-instance v15, Lcw3;

    .line 665
    .line 666
    const/16 v20, 0x0

    .line 667
    .line 668
    const/16 v21, 0x1

    .line 669
    .line 670
    const/16 v19, 0x0

    .line 671
    .line 672
    const-string v16, "trace_tag"

    .line 673
    .line 674
    const-string v17, "TEXT"

    .line 675
    .line 676
    invoke-direct/range {v15 .. v21}, Lcw3;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 677
    .line 678
    .line 679
    const-string v7, "trace_tag"

    .line 680
    .line 681
    invoke-interface {v1, v7, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    .line 683
    .line 684
    new-instance v16, Lcw3;

    .line 685
    .line 686
    const/16 v21, 0x0

    .line 687
    .line 688
    const/16 v20, 0x0

    .line 689
    .line 690
    const-string v17, "backoff_on_system_interruptions"

    .line 691
    .line 692
    const-string v18, "INTEGER"

    .line 693
    .line 694
    invoke-direct/range {v16 .. v22}, Lcw3;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 695
    .line 696
    .line 697
    move-object/from16 v7, v16

    .line 698
    .line 699
    const-string v9, "backoff_on_system_interruptions"

    .line 700
    .line 701
    invoke-interface {v1, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    .line 703
    .line 704
    new-instance v13, Lcw3;

    .line 705
    .line 706
    const/16 v18, 0x0

    .line 707
    .line 708
    const/16 v19, 0x1

    .line 709
    .line 710
    const/16 v16, 0x1

    .line 711
    .line 712
    const/16 v17, 0x0

    .line 713
    .line 714
    const-string v14, "required_network_type"

    .line 715
    .line 716
    const-string v15, "INTEGER"

    .line 717
    .line 718
    invoke-direct/range {v13 .. v19}, Lcw3;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 719
    .line 720
    .line 721
    const-string v7, "required_network_type"

    .line 722
    .line 723
    invoke-interface {v1, v7, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    .line 725
    .line 726
    new-instance v14, Lcw3;

    .line 727
    .line 728
    const-string v19, "x\'\'"

    .line 729
    .line 730
    const/16 v20, 0x1

    .line 731
    .line 732
    const/16 v17, 0x1

    .line 733
    .line 734
    const/16 v18, 0x0

    .line 735
    .line 736
    const-string v15, "required_network_request"

    .line 737
    .line 738
    const-string v16, "BLOB"

    .line 739
    .line 740
    invoke-direct/range {v14 .. v20}, Lcw3;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 741
    .line 742
    .line 743
    const-string v7, "required_network_request"

    .line 744
    .line 745
    invoke-interface {v1, v7, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    .line 747
    .line 748
    new-instance v15, Lcw3;

    .line 749
    .line 750
    const/16 v20, 0x0

    .line 751
    .line 752
    const/16 v21, 0x1

    .line 753
    .line 754
    const/16 v18, 0x1

    .line 755
    .line 756
    const/16 v19, 0x0

    .line 757
    .line 758
    const-string v16, "requires_charging"

    .line 759
    .line 760
    const-string v17, "INTEGER"

    .line 761
    .line 762
    invoke-direct/range {v15 .. v21}, Lcw3;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 763
    .line 764
    .line 765
    const-string v7, "requires_charging"

    .line 766
    .line 767
    invoke-interface {v1, v7, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    .line 769
    .line 770
    new-instance v16, Lcw3;

    .line 771
    .line 772
    const/16 v21, 0x0

    .line 773
    .line 774
    const/16 v19, 0x1

    .line 775
    .line 776
    const/16 v20, 0x0

    .line 777
    .line 778
    const-string v17, "requires_device_idle"

    .line 779
    .line 780
    const-string v18, "INTEGER"

    .line 781
    .line 782
    invoke-direct/range {v16 .. v22}, Lcw3;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 783
    .line 784
    .line 785
    move-object/from16 v7, v16

    .line 786
    .line 787
    const-string v9, "requires_device_idle"

    .line 788
    .line 789
    invoke-interface {v1, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    .line 791
    .line 792
    new-instance v13, Lcw3;

    .line 793
    .line 794
    const/16 v18, 0x0

    .line 795
    .line 796
    const/16 v16, 0x1

    .line 797
    .line 798
    const/16 v17, 0x0

    .line 799
    .line 800
    const-string v14, "requires_battery_not_low"

    .line 801
    .line 802
    const-string v15, "INTEGER"

    .line 803
    .line 804
    invoke-direct/range {v13 .. v19}, Lcw3;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 805
    .line 806
    .line 807
    const-string v7, "requires_battery_not_low"

    .line 808
    .line 809
    invoke-interface {v1, v7, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    .line 811
    .line 812
    new-instance v14, Lcw3;

    .line 813
    .line 814
    const/16 v19, 0x0

    .line 815
    .line 816
    const/16 v20, 0x1

    .line 817
    .line 818
    const/16 v17, 0x1

    .line 819
    .line 820
    const/16 v18, 0x0

    .line 821
    .line 822
    const-string v15, "requires_storage_not_low"

    .line 823
    .line 824
    const-string v16, "INTEGER"

    .line 825
    .line 826
    invoke-direct/range {v14 .. v20}, Lcw3;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 827
    .line 828
    .line 829
    const-string v7, "requires_storage_not_low"

    .line 830
    .line 831
    invoke-interface {v1, v7, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    .line 833
    .line 834
    new-instance v15, Lcw3;

    .line 835
    .line 836
    const/16 v20, 0x0

    .line 837
    .line 838
    const/16 v21, 0x1

    .line 839
    .line 840
    const/16 v18, 0x1

    .line 841
    .line 842
    const/16 v19, 0x0

    .line 843
    .line 844
    const-string v16, "trigger_content_update_delay"

    .line 845
    .line 846
    const-string v17, "INTEGER"

    .line 847
    .line 848
    invoke-direct/range {v15 .. v21}, Lcw3;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 849
    .line 850
    .line 851
    const-string v7, "trigger_content_update_delay"

    .line 852
    .line 853
    invoke-interface {v1, v7, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 854
    .line 855
    .line 856
    new-instance v16, Lcw3;

    .line 857
    .line 858
    const/16 v21, 0x0

    .line 859
    .line 860
    const/16 v19, 0x1

    .line 861
    .line 862
    const/16 v20, 0x0

    .line 863
    .line 864
    const-string v17, "trigger_max_content_delay"

    .line 865
    .line 866
    const-string v18, "INTEGER"

    .line 867
    .line 868
    invoke-direct/range {v16 .. v22}, Lcw3;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 869
    .line 870
    .line 871
    move-object/from16 v7, v16

    .line 872
    .line 873
    const-string v9, "trigger_max_content_delay"

    .line 874
    .line 875
    invoke-interface {v1, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 876
    .line 877
    .line 878
    new-instance v13, Lcw3;

    .line 879
    .line 880
    const/16 v18, 0x0

    .line 881
    .line 882
    const/16 v16, 0x1

    .line 883
    .line 884
    const/16 v17, 0x0

    .line 885
    .line 886
    const-string v14, "content_uri_triggers"

    .line 887
    .line 888
    const-string v15, "BLOB"

    .line 889
    .line 890
    invoke-direct/range {v13 .. v19}, Lcw3;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 891
    .line 892
    .line 893
    const-string v7, "content_uri_triggers"

    .line 894
    .line 895
    invoke-interface {v1, v7, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 896
    .line 897
    .line 898
    new-instance v7, Ljava/util/LinkedHashSet;

    .line 899
    .line 900
    invoke-direct {v7}, Ljava/util/LinkedHashSet;-><init>()V

    .line 901
    .line 902
    .line 903
    new-instance v9, Ljava/util/LinkedHashSet;

    .line 904
    .line 905
    invoke-direct {v9}, Ljava/util/LinkedHashSet;-><init>()V

    .line 906
    .line 907
    .line 908
    new-instance v10, Lew3;

    .line 909
    .line 910
    invoke-static {v4}, Ltv4;->E(Ljava/lang/Object;)Ljava/util/List;

    .line 911
    .line 912
    .line 913
    move-result-object v4

    .line 914
    invoke-static {v8}, Ltv4;->E(Ljava/lang/Object;)Ljava/util/List;

    .line 915
    .line 916
    .line 917
    move-result-object v13

    .line 918
    const-string v14, "index_WorkSpec_schedule_requested_at"

    .line 919
    .line 920
    invoke-direct {v10, v14, v12, v4, v13}, Lew3;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    .line 921
    .line 922
    .line 923
    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 924
    .line 925
    .line 926
    new-instance v4, Lew3;

    .line 927
    .line 928
    invoke-static {v2}, Ltv4;->E(Ljava/lang/Object;)Ljava/util/List;

    .line 929
    .line 930
    .line 931
    move-result-object v2

    .line 932
    invoke-static {v8}, Ltv4;->E(Ljava/lang/Object;)Ljava/util/List;

    .line 933
    .line 934
    .line 935
    move-result-object v10

    .line 936
    const-string v13, "index_WorkSpec_last_enqueue_time"

    .line 937
    .line 938
    invoke-direct {v4, v13, v12, v2, v10}, Lew3;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    .line 939
    .line 940
    .line 941
    invoke-interface {v9, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 942
    .line 943
    .line 944
    new-instance v2, Lfw3;

    .line 945
    .line 946
    const-string v4, "WorkSpec"

    .line 947
    .line 948
    invoke-direct {v2, v4, v1, v7, v9}, Lfw3;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    .line 949
    .line 950
    .line 951
    invoke-static {v0, v4}, Lix;->L(Ljb3;Ljava/lang/String;)Lfw3;

    .line 952
    .line 953
    .line 954
    move-result-object v1

    .line 955
    invoke-virtual {v2, v1}, Lfw3;->equals(Ljava/lang/Object;)Z

    .line 956
    .line 957
    .line 958
    move-result v4

    .line 959
    if-nez v4, :cond_1

    .line 960
    .line 961
    new-instance v0, Lf7;

    .line 962
    .line 963
    new-instance v3, Ljava/lang/StringBuilder;

    .line 964
    .line 965
    const-string v4, "WorkSpec(androidx.work.impl.model.WorkSpec).\n Expected:\n"

    .line 966
    .line 967
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 968
    .line 969
    .line 970
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 971
    .line 972
    .line 973
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 974
    .line 975
    .line 976
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 977
    .line 978
    .line 979
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 980
    .line 981
    .line 982
    move-result-object v1

    .line 983
    invoke-direct {v0, v12, v1}, Lf7;-><init>(ZLjava/lang/String;)V

    .line 984
    .line 985
    .line 986
    return-object v0

    .line 987
    :cond_1
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 988
    .line 989
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 990
    .line 991
    .line 992
    new-instance v13, Lcw3;

    .line 993
    .line 994
    const/16 v18, 0x0

    .line 995
    .line 996
    const/16 v19, 0x1

    .line 997
    .line 998
    const-string v14, "tag"

    .line 999
    .line 1000
    const-string v15, "TEXT"

    .line 1001
    .line 1002
    const/16 v16, 0x1

    .line 1003
    .line 1004
    const/16 v17, 0x1

    .line 1005
    .line 1006
    invoke-direct/range {v13 .. v19}, Lcw3;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1007
    .line 1008
    .line 1009
    const-string v2, "tag"

    .line 1010
    .line 1011
    invoke-interface {v1, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1012
    .line 1013
    .line 1014
    new-instance v14, Lcw3;

    .line 1015
    .line 1016
    const/16 v19, 0x0

    .line 1017
    .line 1018
    const/16 v20, 0x1

    .line 1019
    .line 1020
    const-string v15, "work_spec_id"

    .line 1021
    .line 1022
    const-string v16, "TEXT"

    .line 1023
    .line 1024
    const/16 v18, 0x2

    .line 1025
    .line 1026
    invoke-direct/range {v14 .. v20}, Lcw3;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1027
    .line 1028
    .line 1029
    invoke-interface {v1, v3, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1030
    .line 1031
    .line 1032
    new-instance v2, Ljava/util/LinkedHashSet;

    .line 1033
    .line 1034
    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1035
    .line 1036
    .line 1037
    new-instance v13, Ldw3;

    .line 1038
    .line 1039
    invoke-static {v3}, Ltv4;->E(Ljava/lang/Object;)Ljava/util/List;

    .line 1040
    .line 1041
    .line 1042
    move-result-object v17

    .line 1043
    invoke-static {v11}, Ltv4;->E(Ljava/lang/Object;)Ljava/util/List;

    .line 1044
    .line 1045
    .line 1046
    move-result-object v18

    .line 1047
    const-string v14, "WorkSpec"

    .line 1048
    .line 1049
    const-string v15, "CASCADE"

    .line 1050
    .line 1051
    const-string v16, "CASCADE"

    .line 1052
    .line 1053
    invoke-direct/range {v13 .. v18}, Ldw3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 1054
    .line 1055
    .line 1056
    invoke-interface {v2, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1057
    .line 1058
    .line 1059
    new-instance v4, Ljava/util/LinkedHashSet;

    .line 1060
    .line 1061
    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1062
    .line 1063
    .line 1064
    new-instance v7, Lew3;

    .line 1065
    .line 1066
    invoke-static {v3}, Ltv4;->E(Ljava/lang/Object;)Ljava/util/List;

    .line 1067
    .line 1068
    .line 1069
    move-result-object v9

    .line 1070
    invoke-static {v8}, Ltv4;->E(Ljava/lang/Object;)Ljava/util/List;

    .line 1071
    .line 1072
    .line 1073
    move-result-object v10

    .line 1074
    const-string v13, "index_WorkTag_work_spec_id"

    .line 1075
    .line 1076
    invoke-direct {v7, v13, v12, v9, v10}, Lew3;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    .line 1077
    .line 1078
    .line 1079
    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1080
    .line 1081
    .line 1082
    new-instance v7, Lfw3;

    .line 1083
    .line 1084
    const-string v9, "WorkTag"

    .line 1085
    .line 1086
    invoke-direct {v7, v9, v1, v2, v4}, Lfw3;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    .line 1087
    .line 1088
    .line 1089
    invoke-static {v0, v9}, Lix;->L(Ljb3;Ljava/lang/String;)Lfw3;

    .line 1090
    .line 1091
    .line 1092
    move-result-object v1

    .line 1093
    invoke-virtual {v7, v1}, Lfw3;->equals(Ljava/lang/Object;)Z

    .line 1094
    .line 1095
    .line 1096
    move-result v2

    .line 1097
    if-nez v2, :cond_2

    .line 1098
    .line 1099
    new-instance v0, Lf7;

    .line 1100
    .line 1101
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1102
    .line 1103
    const-string v3, "WorkTag(androidx.work.impl.model.WorkTag).\n Expected:\n"

    .line 1104
    .line 1105
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1106
    .line 1107
    .line 1108
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1109
    .line 1110
    .line 1111
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1112
    .line 1113
    .line 1114
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1115
    .line 1116
    .line 1117
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1118
    .line 1119
    .line 1120
    move-result-object v1

    .line 1121
    invoke-direct {v0, v12, v1}, Lf7;-><init>(ZLjava/lang/String;)V

    .line 1122
    .line 1123
    .line 1124
    return-object v0

    .line 1125
    :cond_2
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 1126
    .line 1127
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1128
    .line 1129
    .line 1130
    new-instance v13, Lcw3;

    .line 1131
    .line 1132
    const/16 v18, 0x0

    .line 1133
    .line 1134
    const/16 v19, 0x1

    .line 1135
    .line 1136
    const-string v14, "work_spec_id"

    .line 1137
    .line 1138
    const-string v15, "TEXT"

    .line 1139
    .line 1140
    const/16 v16, 0x1

    .line 1141
    .line 1142
    const/16 v17, 0x1

    .line 1143
    .line 1144
    invoke-direct/range {v13 .. v19}, Lcw3;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1145
    .line 1146
    .line 1147
    invoke-interface {v1, v3, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1148
    .line 1149
    .line 1150
    new-instance v14, Lcw3;

    .line 1151
    .line 1152
    const-string v19, "0"

    .line 1153
    .line 1154
    const/16 v20, 0x1

    .line 1155
    .line 1156
    const-string v15, "generation"

    .line 1157
    .line 1158
    const-string v16, "INTEGER"

    .line 1159
    .line 1160
    const/16 v18, 0x2

    .line 1161
    .line 1162
    invoke-direct/range {v14 .. v20}, Lcw3;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1163
    .line 1164
    .line 1165
    invoke-interface {v1, v6, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1166
    .line 1167
    .line 1168
    new-instance v15, Lcw3;

    .line 1169
    .line 1170
    const/16 v20, 0x0

    .line 1171
    .line 1172
    const/16 v21, 0x1

    .line 1173
    .line 1174
    const-string v16, "system_id"

    .line 1175
    .line 1176
    const-string v17, "INTEGER"

    .line 1177
    .line 1178
    const/16 v18, 0x1

    .line 1179
    .line 1180
    const/16 v19, 0x0

    .line 1181
    .line 1182
    invoke-direct/range {v15 .. v21}, Lcw3;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1183
    .line 1184
    .line 1185
    const-string v2, "system_id"

    .line 1186
    .line 1187
    invoke-interface {v1, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1188
    .line 1189
    .line 1190
    new-instance v2, Ljava/util/LinkedHashSet;

    .line 1191
    .line 1192
    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1193
    .line 1194
    .line 1195
    new-instance v13, Ldw3;

    .line 1196
    .line 1197
    invoke-static {v3}, Ltv4;->E(Ljava/lang/Object;)Ljava/util/List;

    .line 1198
    .line 1199
    .line 1200
    move-result-object v17

    .line 1201
    invoke-static {v11}, Ltv4;->E(Ljava/lang/Object;)Ljava/util/List;

    .line 1202
    .line 1203
    .line 1204
    move-result-object v18

    .line 1205
    const-string v14, "WorkSpec"

    .line 1206
    .line 1207
    const-string v15, "CASCADE"

    .line 1208
    .line 1209
    const-string v16, "CASCADE"

    .line 1210
    .line 1211
    invoke-direct/range {v13 .. v18}, Ldw3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 1212
    .line 1213
    .line 1214
    invoke-interface {v2, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1215
    .line 1216
    .line 1217
    new-instance v4, Ljava/util/LinkedHashSet;

    .line 1218
    .line 1219
    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1220
    .line 1221
    .line 1222
    new-instance v6, Lfw3;

    .line 1223
    .line 1224
    const-string v7, "SystemIdInfo"

    .line 1225
    .line 1226
    invoke-direct {v6, v7, v1, v2, v4}, Lfw3;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    .line 1227
    .line 1228
    .line 1229
    invoke-static {v0, v7}, Lix;->L(Ljb3;Ljava/lang/String;)Lfw3;

    .line 1230
    .line 1231
    .line 1232
    move-result-object v1

    .line 1233
    invoke-virtual {v6, v1}, Lfw3;->equals(Ljava/lang/Object;)Z

    .line 1234
    .line 1235
    .line 1236
    move-result v2

    .line 1237
    if-nez v2, :cond_3

    .line 1238
    .line 1239
    new-instance v0, Lf7;

    .line 1240
    .line 1241
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1242
    .line 1243
    const-string v3, "SystemIdInfo(androidx.work.impl.model.SystemIdInfo).\n Expected:\n"

    .line 1244
    .line 1245
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1246
    .line 1247
    .line 1248
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1249
    .line 1250
    .line 1251
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1252
    .line 1253
    .line 1254
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1255
    .line 1256
    .line 1257
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1258
    .line 1259
    .line 1260
    move-result-object v1

    .line 1261
    invoke-direct {v0, v12, v1}, Lf7;-><init>(ZLjava/lang/String;)V

    .line 1262
    .line 1263
    .line 1264
    return-object v0

    .line 1265
    :cond_3
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 1266
    .line 1267
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1268
    .line 1269
    .line 1270
    new-instance v13, Lcw3;

    .line 1271
    .line 1272
    const/16 v18, 0x0

    .line 1273
    .line 1274
    const/16 v19, 0x1

    .line 1275
    .line 1276
    const-string v14, "name"

    .line 1277
    .line 1278
    const-string v15, "TEXT"

    .line 1279
    .line 1280
    const/16 v16, 0x1

    .line 1281
    .line 1282
    const/16 v17, 0x1

    .line 1283
    .line 1284
    invoke-direct/range {v13 .. v19}, Lcw3;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1285
    .line 1286
    .line 1287
    const-string v2, "name"

    .line 1288
    .line 1289
    invoke-interface {v1, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1290
    .line 1291
    .line 1292
    new-instance v14, Lcw3;

    .line 1293
    .line 1294
    const/16 v19, 0x0

    .line 1295
    .line 1296
    const/16 v20, 0x1

    .line 1297
    .line 1298
    const-string v15, "work_spec_id"

    .line 1299
    .line 1300
    const-string v16, "TEXT"

    .line 1301
    .line 1302
    const/16 v18, 0x2

    .line 1303
    .line 1304
    invoke-direct/range {v14 .. v20}, Lcw3;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1305
    .line 1306
    .line 1307
    invoke-interface {v1, v3, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1308
    .line 1309
    .line 1310
    new-instance v2, Ljava/util/LinkedHashSet;

    .line 1311
    .line 1312
    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1313
    .line 1314
    .line 1315
    new-instance v13, Ldw3;

    .line 1316
    .line 1317
    invoke-static {v3}, Ltv4;->E(Ljava/lang/Object;)Ljava/util/List;

    .line 1318
    .line 1319
    .line 1320
    move-result-object v17

    .line 1321
    invoke-static {v11}, Ltv4;->E(Ljava/lang/Object;)Ljava/util/List;

    .line 1322
    .line 1323
    .line 1324
    move-result-object v18

    .line 1325
    const-string v14, "WorkSpec"

    .line 1326
    .line 1327
    const-string v15, "CASCADE"

    .line 1328
    .line 1329
    const-string v16, "CASCADE"

    .line 1330
    .line 1331
    invoke-direct/range {v13 .. v18}, Ldw3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 1332
    .line 1333
    .line 1334
    invoke-interface {v2, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1335
    .line 1336
    .line 1337
    new-instance v4, Ljava/util/LinkedHashSet;

    .line 1338
    .line 1339
    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1340
    .line 1341
    .line 1342
    new-instance v6, Lew3;

    .line 1343
    .line 1344
    invoke-static {v3}, Ltv4;->E(Ljava/lang/Object;)Ljava/util/List;

    .line 1345
    .line 1346
    .line 1347
    move-result-object v7

    .line 1348
    invoke-static {v8}, Ltv4;->E(Ljava/lang/Object;)Ljava/util/List;

    .line 1349
    .line 1350
    .line 1351
    move-result-object v8

    .line 1352
    const-string v9, "index_WorkName_work_spec_id"

    .line 1353
    .line 1354
    invoke-direct {v6, v9, v12, v7, v8}, Lew3;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    .line 1355
    .line 1356
    .line 1357
    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1358
    .line 1359
    .line 1360
    new-instance v6, Lfw3;

    .line 1361
    .line 1362
    const-string v7, "WorkName"

    .line 1363
    .line 1364
    invoke-direct {v6, v7, v1, v2, v4}, Lfw3;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    .line 1365
    .line 1366
    .line 1367
    invoke-static {v0, v7}, Lix;->L(Ljb3;Ljava/lang/String;)Lfw3;

    .line 1368
    .line 1369
    .line 1370
    move-result-object v1

    .line 1371
    invoke-virtual {v6, v1}, Lfw3;->equals(Ljava/lang/Object;)Z

    .line 1372
    .line 1373
    .line 1374
    move-result v2

    .line 1375
    if-nez v2, :cond_4

    .line 1376
    .line 1377
    new-instance v0, Lf7;

    .line 1378
    .line 1379
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1380
    .line 1381
    const-string v3, "WorkName(androidx.work.impl.model.WorkName).\n Expected:\n"

    .line 1382
    .line 1383
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1384
    .line 1385
    .line 1386
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1387
    .line 1388
    .line 1389
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1390
    .line 1391
    .line 1392
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1393
    .line 1394
    .line 1395
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1396
    .line 1397
    .line 1398
    move-result-object v1

    .line 1399
    invoke-direct {v0, v12, v1}, Lf7;-><init>(ZLjava/lang/String;)V

    .line 1400
    .line 1401
    .line 1402
    return-object v0

    .line 1403
    :cond_4
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 1404
    .line 1405
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1406
    .line 1407
    .line 1408
    new-instance v13, Lcw3;

    .line 1409
    .line 1410
    const/16 v18, 0x0

    .line 1411
    .line 1412
    const/16 v19, 0x1

    .line 1413
    .line 1414
    const-string v14, "work_spec_id"

    .line 1415
    .line 1416
    const-string v15, "TEXT"

    .line 1417
    .line 1418
    const/16 v16, 0x1

    .line 1419
    .line 1420
    const/16 v17, 0x1

    .line 1421
    .line 1422
    invoke-direct/range {v13 .. v19}, Lcw3;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1423
    .line 1424
    .line 1425
    invoke-interface {v1, v3, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1426
    .line 1427
    .line 1428
    new-instance v14, Lcw3;

    .line 1429
    .line 1430
    const/16 v19, 0x0

    .line 1431
    .line 1432
    const/16 v20, 0x1

    .line 1433
    .line 1434
    const-string v15, "progress"

    .line 1435
    .line 1436
    const-string v16, "BLOB"

    .line 1437
    .line 1438
    const/16 v18, 0x0

    .line 1439
    .line 1440
    invoke-direct/range {v14 .. v20}, Lcw3;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1441
    .line 1442
    .line 1443
    const-string v2, "progress"

    .line 1444
    .line 1445
    invoke-interface {v1, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1446
    .line 1447
    .line 1448
    new-instance v2, Ljava/util/LinkedHashSet;

    .line 1449
    .line 1450
    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1451
    .line 1452
    .line 1453
    new-instance v13, Ldw3;

    .line 1454
    .line 1455
    invoke-static {v3}, Ltv4;->E(Ljava/lang/Object;)Ljava/util/List;

    .line 1456
    .line 1457
    .line 1458
    move-result-object v17

    .line 1459
    invoke-static {v11}, Ltv4;->E(Ljava/lang/Object;)Ljava/util/List;

    .line 1460
    .line 1461
    .line 1462
    move-result-object v18

    .line 1463
    const-string v14, "WorkSpec"

    .line 1464
    .line 1465
    const-string v15, "CASCADE"

    .line 1466
    .line 1467
    const-string v16, "CASCADE"

    .line 1468
    .line 1469
    invoke-direct/range {v13 .. v18}, Ldw3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 1470
    .line 1471
    .line 1472
    invoke-interface {v2, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1473
    .line 1474
    .line 1475
    new-instance v3, Ljava/util/LinkedHashSet;

    .line 1476
    .line 1477
    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1478
    .line 1479
    .line 1480
    new-instance v4, Lfw3;

    .line 1481
    .line 1482
    const-string v6, "WorkProgress"

    .line 1483
    .line 1484
    invoke-direct {v4, v6, v1, v2, v3}, Lfw3;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    .line 1485
    .line 1486
    .line 1487
    invoke-static {v0, v6}, Lix;->L(Ljb3;Ljava/lang/String;)Lfw3;

    .line 1488
    .line 1489
    .line 1490
    move-result-object v1

    .line 1491
    invoke-virtual {v4, v1}, Lfw3;->equals(Ljava/lang/Object;)Z

    .line 1492
    .line 1493
    .line 1494
    move-result v2

    .line 1495
    if-nez v2, :cond_5

    .line 1496
    .line 1497
    new-instance v0, Lf7;

    .line 1498
    .line 1499
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1500
    .line 1501
    const-string v3, "WorkProgress(androidx.work.impl.model.WorkProgress).\n Expected:\n"

    .line 1502
    .line 1503
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1504
    .line 1505
    .line 1506
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1507
    .line 1508
    .line 1509
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1510
    .line 1511
    .line 1512
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1513
    .line 1514
    .line 1515
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1516
    .line 1517
    .line 1518
    move-result-object v1

    .line 1519
    invoke-direct {v0, v12, v1}, Lf7;-><init>(ZLjava/lang/String;)V

    .line 1520
    .line 1521
    .line 1522
    return-object v0

    .line 1523
    :cond_5
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 1524
    .line 1525
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1526
    .line 1527
    .line 1528
    new-instance v13, Lcw3;

    .line 1529
    .line 1530
    const/16 v18, 0x0

    .line 1531
    .line 1532
    const/16 v19, 0x1

    .line 1533
    .line 1534
    const-string v14, "key"

    .line 1535
    .line 1536
    const-string v15, "TEXT"

    .line 1537
    .line 1538
    const/16 v16, 0x1

    .line 1539
    .line 1540
    const/16 v17, 0x1

    .line 1541
    .line 1542
    invoke-direct/range {v13 .. v19}, Lcw3;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1543
    .line 1544
    .line 1545
    const-string v2, "key"

    .line 1546
    .line 1547
    invoke-interface {v1, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1548
    .line 1549
    .line 1550
    new-instance v14, Lcw3;

    .line 1551
    .line 1552
    const/16 v19, 0x0

    .line 1553
    .line 1554
    const/16 v20, 0x1

    .line 1555
    .line 1556
    const-string v15, "long_value"

    .line 1557
    .line 1558
    const-string v16, "INTEGER"

    .line 1559
    .line 1560
    const/16 v17, 0x0

    .line 1561
    .line 1562
    const/16 v18, 0x0

    .line 1563
    .line 1564
    invoke-direct/range {v14 .. v20}, Lcw3;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 1565
    .line 1566
    .line 1567
    const-string v2, "long_value"

    .line 1568
    .line 1569
    invoke-interface {v1, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1570
    .line 1571
    .line 1572
    new-instance v2, Ljava/util/LinkedHashSet;

    .line 1573
    .line 1574
    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1575
    .line 1576
    .line 1577
    new-instance v3, Ljava/util/LinkedHashSet;

    .line 1578
    .line 1579
    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1580
    .line 1581
    .line 1582
    new-instance v4, Lfw3;

    .line 1583
    .line 1584
    const-string v6, "Preference"

    .line 1585
    .line 1586
    invoke-direct {v4, v6, v1, v2, v3}, Lfw3;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    .line 1587
    .line 1588
    .line 1589
    invoke-static {v0, v6}, Lix;->L(Ljb3;Ljava/lang/String;)Lfw3;

    .line 1590
    .line 1591
    .line 1592
    move-result-object v0

    .line 1593
    invoke-virtual {v4, v0}, Lfw3;->equals(Ljava/lang/Object;)Z

    .line 1594
    .line 1595
    .line 1596
    move-result v1

    .line 1597
    if-nez v1, :cond_6

    .line 1598
    .line 1599
    new-instance v1, Lf7;

    .line 1600
    .line 1601
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1602
    .line 1603
    const-string v3, "Preference(androidx.work.impl.model.Preference).\n Expected:\n"

    .line 1604
    .line 1605
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1606
    .line 1607
    .line 1608
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1609
    .line 1610
    .line 1611
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1612
    .line 1613
    .line 1614
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1615
    .line 1616
    .line 1617
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1618
    .line 1619
    .line 1620
    move-result-object v0

    .line 1621
    invoke-direct {v1, v12, v0}, Lf7;-><init>(ZLjava/lang/String;)V

    .line 1622
    .line 1623
    .line 1624
    return-object v1

    .line 1625
    :cond_6
    new-instance v0, Lf7;

    .line 1626
    .line 1627
    const/4 v1, 0x1

    .line 1628
    const/4 v2, 0x0

    .line 1629
    invoke-direct {v0, v1, v2}, Lf7;-><init>(ZLjava/lang/String;)V

    .line 1630
    .line 1631
    .line 1632
    return-object v0
.end method
