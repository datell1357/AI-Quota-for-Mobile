package defpackage;

import androidx.work.impl.WorkDatabase_Impl;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.ListIterator;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class yf4 extends dz0 {
    public final /* synthetic */ WorkDatabase_Impl d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public yf4(WorkDatabase_Impl workDatabase_Impl) {
        super("08b926448d86528e697981ddd30459f7", 24, "149fd8ad55885d3fe3549a37a0163243");
        this.d = workDatabase_Impl;
    }

    @Override // defpackage.dz0
    public final void a(jb3 jb3Var) {
        jb3Var.getClass();
        ix.r(jb3Var, "CREATE TABLE IF NOT EXISTS `Dependency` (`work_spec_id` TEXT NOT NULL, `prerequisite_id` TEXT NOT NULL, PRIMARY KEY(`work_spec_id`, `prerequisite_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE , FOREIGN KEY(`prerequisite_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
        ix.r(jb3Var, "CREATE INDEX IF NOT EXISTS `index_Dependency_work_spec_id` ON `Dependency` (`work_spec_id`)");
        ix.r(jb3Var, "CREATE INDEX IF NOT EXISTS `index_Dependency_prerequisite_id` ON `Dependency` (`prerequisite_id`)");
        ix.r(jb3Var, "CREATE TABLE IF NOT EXISTS `WorkSpec` (`id` TEXT NOT NULL, `state` INTEGER NOT NULL, `worker_class_name` TEXT NOT NULL, `input_merger_class_name` TEXT NOT NULL, `input` BLOB NOT NULL, `output` BLOB NOT NULL, `initial_delay` INTEGER NOT NULL, `interval_duration` INTEGER NOT NULL, `flex_duration` INTEGER NOT NULL, `run_attempt_count` INTEGER NOT NULL, `backoff_policy` INTEGER NOT NULL, `backoff_delay_duration` INTEGER NOT NULL, `last_enqueue_time` INTEGER NOT NULL DEFAULT -1, `minimum_retention_duration` INTEGER NOT NULL, `schedule_requested_at` INTEGER NOT NULL, `run_in_foreground` INTEGER NOT NULL, `out_of_quota_policy` INTEGER NOT NULL, `period_count` INTEGER NOT NULL DEFAULT 0, `generation` INTEGER NOT NULL DEFAULT 0, `next_schedule_time_override` INTEGER NOT NULL DEFAULT 9223372036854775807, `next_schedule_time_override_generation` INTEGER NOT NULL DEFAULT 0, `stop_reason` INTEGER NOT NULL DEFAULT -256, `trace_tag` TEXT, `backoff_on_system_interruptions` INTEGER, `required_network_type` INTEGER NOT NULL, `required_network_request` BLOB NOT NULL DEFAULT x'', `requires_charging` INTEGER NOT NULL, `requires_device_idle` INTEGER NOT NULL, `requires_battery_not_low` INTEGER NOT NULL, `requires_storage_not_low` INTEGER NOT NULL, `trigger_content_update_delay` INTEGER NOT NULL, `trigger_max_content_delay` INTEGER NOT NULL, `content_uri_triggers` BLOB NOT NULL, PRIMARY KEY(`id`))");
        ix.r(jb3Var, "CREATE INDEX IF NOT EXISTS `index_WorkSpec_schedule_requested_at` ON `WorkSpec` (`schedule_requested_at`)");
        ix.r(jb3Var, "CREATE INDEX IF NOT EXISTS `index_WorkSpec_last_enqueue_time` ON `WorkSpec` (`last_enqueue_time`)");
        ix.r(jb3Var, "CREATE TABLE IF NOT EXISTS `WorkTag` (`tag` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`tag`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
        ix.r(jb3Var, "CREATE INDEX IF NOT EXISTS `index_WorkTag_work_spec_id` ON `WorkTag` (`work_spec_id`)");
        ix.r(jb3Var, "CREATE TABLE IF NOT EXISTS `SystemIdInfo` (`work_spec_id` TEXT NOT NULL, `generation` INTEGER NOT NULL DEFAULT 0, `system_id` INTEGER NOT NULL, PRIMARY KEY(`work_spec_id`, `generation`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
        ix.r(jb3Var, "CREATE TABLE IF NOT EXISTS `WorkName` (`name` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`name`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
        ix.r(jb3Var, "CREATE INDEX IF NOT EXISTS `index_WorkName_work_spec_id` ON `WorkName` (`work_spec_id`)");
        ix.r(jb3Var, "CREATE TABLE IF NOT EXISTS `WorkProgress` (`work_spec_id` TEXT NOT NULL, `progress` BLOB NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
        ix.r(jb3Var, "CREATE TABLE IF NOT EXISTS `Preference` (`key` TEXT NOT NULL, `long_value` INTEGER, PRIMARY KEY(`key`))");
        ix.r(jb3Var, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
        ix.r(jb3Var, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '08b926448d86528e697981ddd30459f7')");
    }

    @Override // defpackage.dz0
    public final void b(jb3 jb3Var) {
        jb3Var.getClass();
        ix.r(jb3Var, "DROP TABLE IF EXISTS `Dependency`");
        ix.r(jb3Var, "DROP TABLE IF EXISTS `WorkSpec`");
        ix.r(jb3Var, "DROP TABLE IF EXISTS `WorkTag`");
        ix.r(jb3Var, "DROP TABLE IF EXISTS `SystemIdInfo`");
        ix.r(jb3Var, "DROP TABLE IF EXISTS `WorkName`");
        ix.r(jb3Var, "DROP TABLE IF EXISTS `WorkProgress`");
        ix.r(jb3Var, "DROP TABLE IF EXISTS `Preference`");
    }

    @Override // defpackage.dz0
    public final void c(jb3 jb3Var) {
        jb3Var.getClass();
    }

    @Override // defpackage.dz0
    public final void d(jb3 jb3Var) {
        jb3Var.getClass();
        ix.r(jb3Var, "PRAGMA foreign_keys = ON");
        bu1 bu1VarF = this.d.f();
        v24 v24Var = bu1VarF.b;
        v24Var.getClass();
        pb3 pb3VarK0 = jb3Var.k0("PRAGMA query_only");
        try {
            pb3VarK0.c0();
            boolean z = pb3VarK0.getLong(0) != 0;
            is0.r(pb3VarK0, null);
            if (!z) {
                ix.r(jb3Var, "PRAGMA temp_store = MEMORY");
                ix.r(jb3Var, "PRAGMA recursive_triggers = 1");
                ix.r(jb3Var, "DROP TABLE IF EXISTS room_table_modification_log");
                if (v24Var.d) {
                    ix.r(jb3Var, "CREATE TEMP TABLE IF NOT EXISTS room_table_modification_log (table_id INTEGER PRIMARY KEY, invalidated INTEGER NOT NULL DEFAULT 0)");
                } else {
                    ix.r(jb3Var, gt3.w0("CREATE TEMP TABLE IF NOT EXISTS room_table_modification_log (table_id INTEGER PRIMARY KEY, invalidated INTEGER NOT NULL DEFAULT 0)", "TEMP", ""));
                }
                mu0 mu0Var = v24Var.h;
                ReentrantLock reentrantLock = (ReentrantLock) mu0Var.b;
                reentrantLock.lock();
                try {
                    mu0Var.a = true;
                } finally {
                    reentrantLock.unlock();
                }
            }
            synchronized (bu1VarF.g) {
            }
        } finally {
        }
    }

    @Override // defpackage.dz0
    public final void e(jb3 jb3Var) {
        jb3Var.getClass();
    }

    @Override // defpackage.dz0
    public final void f(jb3 jb3Var) {
        jb3Var.getClass();
        a42 a42VarP = tv4.p();
        pb3 pb3VarK0 = jb3Var.k0("SELECT name FROM sqlite_master WHERE type = 'trigger'");
        while (pb3VarK0.c0()) {
            try {
                a42VarP.add(pb3VarK0.o(0));
            } finally {
            }
        }
        is0.r(pb3VarK0, null);
        ListIterator listIterator = tv4.l(a42VarP).listIterator(0);
        while (true) {
            xj1 xj1Var = (xj1) listIterator;
            if (!xj1Var.hasNext()) {
                return;
            }
            String str = (String) xj1Var.next();
            if (gt3.y0(str, "room_fts_content_sync_", false)) {
                ix.r(jb3Var, "DROP TRIGGER IF EXISTS ".concat(str));
            }
        }
    }

    @Override // defpackage.dz0
    public final f7 g(jb3 jb3Var) {
        jb3Var.getClass();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("work_spec_id", new cw3("work_spec_id", "TEXT", true, 1, null, 1));
        linkedHashMap.put("prerequisite_id", new cw3("prerequisite_id", "TEXT", true, 2, null, 1));
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        linkedHashSet.add(new dw3("WorkSpec", "CASCADE", "CASCADE", tv4.E("work_spec_id"), tv4.E("id")));
        linkedHashSet.add(new dw3("WorkSpec", "CASCADE", "CASCADE", tv4.E("prerequisite_id"), tv4.E("id")));
        LinkedHashSet linkedHashSet2 = new LinkedHashSet();
        linkedHashSet2.add(new ew3("index_Dependency_work_spec_id", false, tv4.E("work_spec_id"), tv4.E("ASC")));
        linkedHashSet2.add(new ew3("index_Dependency_prerequisite_id", false, tv4.E("prerequisite_id"), tv4.E("ASC")));
        fw3 fw3Var = new fw3("Dependency", linkedHashMap, linkedHashSet, linkedHashSet2);
        fw3 fw3VarL = ix.L(jb3Var, "Dependency");
        if (!fw3Var.equals(fw3VarL)) {
            return new f7(false, "Dependency(androidx.work.impl.model.Dependency).\n Expected:\n" + fw3Var + "\n Found:\n" + fw3VarL);
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        linkedHashMap2.put("id", new cw3("id", "TEXT", true, 1, null, 1));
        linkedHashMap2.put("state", new cw3("state", "INTEGER", true, 0, null, 1));
        linkedHashMap2.put("worker_class_name", new cw3("worker_class_name", "TEXT", true, 0, null, 1));
        linkedHashMap2.put("input_merger_class_name", new cw3("input_merger_class_name", "TEXT", true, 0, null, 1));
        linkedHashMap2.put("input", new cw3("input", "BLOB", true, 0, null, 1));
        linkedHashMap2.put("output", new cw3("output", "BLOB", true, 0, null, 1));
        linkedHashMap2.put("initial_delay", new cw3("initial_delay", "INTEGER", true, 0, null, 1));
        linkedHashMap2.put("interval_duration", new cw3("interval_duration", "INTEGER", true, 0, null, 1));
        linkedHashMap2.put("flex_duration", new cw3("flex_duration", "INTEGER", true, 0, null, 1));
        linkedHashMap2.put("run_attempt_count", new cw3("run_attempt_count", "INTEGER", true, 0, null, 1));
        linkedHashMap2.put("backoff_policy", new cw3("backoff_policy", "INTEGER", true, 0, null, 1));
        linkedHashMap2.put("backoff_delay_duration", new cw3("backoff_delay_duration", "INTEGER", true, 0, null, 1));
        linkedHashMap2.put("last_enqueue_time", new cw3("last_enqueue_time", "INTEGER", true, 0, "-1", 1));
        linkedHashMap2.put("minimum_retention_duration", new cw3("minimum_retention_duration", "INTEGER", true, 0, null, 1));
        linkedHashMap2.put("schedule_requested_at", new cw3("schedule_requested_at", "INTEGER", true, 0, null, 1));
        linkedHashMap2.put("run_in_foreground", new cw3("run_in_foreground", "INTEGER", true, 0, null, 1));
        linkedHashMap2.put("out_of_quota_policy", new cw3("out_of_quota_policy", "INTEGER", true, 0, null, 1));
        linkedHashMap2.put("period_count", new cw3("period_count", "INTEGER", true, 0, "0", 1));
        linkedHashMap2.put("generation", new cw3("generation", "INTEGER", true, 0, "0", 1));
        linkedHashMap2.put("next_schedule_time_override", new cw3("next_schedule_time_override", "INTEGER", true, 0, "9223372036854775807", 1));
        linkedHashMap2.put("next_schedule_time_override_generation", new cw3("next_schedule_time_override_generation", "INTEGER", true, 0, "0", 1));
        linkedHashMap2.put("stop_reason", new cw3("stop_reason", "INTEGER", true, 0, "-256", 1));
        linkedHashMap2.put("trace_tag", new cw3("trace_tag", "TEXT", false, 0, null, 1));
        linkedHashMap2.put("backoff_on_system_interruptions", new cw3("backoff_on_system_interruptions", "INTEGER", false, 0, null, 1));
        linkedHashMap2.put("required_network_type", new cw3("required_network_type", "INTEGER", true, 0, null, 1));
        linkedHashMap2.put("required_network_request", new cw3("required_network_request", "BLOB", true, 0, "x''", 1));
        linkedHashMap2.put("requires_charging", new cw3("requires_charging", "INTEGER", true, 0, null, 1));
        linkedHashMap2.put("requires_device_idle", new cw3("requires_device_idle", "INTEGER", true, 0, null, 1));
        linkedHashMap2.put("requires_battery_not_low", new cw3("requires_battery_not_low", "INTEGER", true, 0, null, 1));
        linkedHashMap2.put("requires_storage_not_low", new cw3("requires_storage_not_low", "INTEGER", true, 0, null, 1));
        linkedHashMap2.put("trigger_content_update_delay", new cw3("trigger_content_update_delay", "INTEGER", true, 0, null, 1));
        linkedHashMap2.put("trigger_max_content_delay", new cw3("trigger_max_content_delay", "INTEGER", true, 0, null, 1));
        linkedHashMap2.put("content_uri_triggers", new cw3("content_uri_triggers", "BLOB", true, 0, null, 1));
        LinkedHashSet linkedHashSet3 = new LinkedHashSet();
        LinkedHashSet linkedHashSet4 = new LinkedHashSet();
        linkedHashSet4.add(new ew3("index_WorkSpec_schedule_requested_at", false, tv4.E("schedule_requested_at"), tv4.E("ASC")));
        linkedHashSet4.add(new ew3("index_WorkSpec_last_enqueue_time", false, tv4.E("last_enqueue_time"), tv4.E("ASC")));
        fw3 fw3Var2 = new fw3("WorkSpec", linkedHashMap2, linkedHashSet3, linkedHashSet4);
        fw3 fw3VarL2 = ix.L(jb3Var, "WorkSpec");
        if (!fw3Var2.equals(fw3VarL2)) {
            return new f7(false, "WorkSpec(androidx.work.impl.model.WorkSpec).\n Expected:\n" + fw3Var2 + "\n Found:\n" + fw3VarL2);
        }
        LinkedHashMap linkedHashMap3 = new LinkedHashMap();
        linkedHashMap3.put("tag", new cw3("tag", "TEXT", true, 1, null, 1));
        linkedHashMap3.put("work_spec_id", new cw3("work_spec_id", "TEXT", true, 2, null, 1));
        LinkedHashSet linkedHashSet5 = new LinkedHashSet();
        linkedHashSet5.add(new dw3("WorkSpec", "CASCADE", "CASCADE", tv4.E("work_spec_id"), tv4.E("id")));
        LinkedHashSet linkedHashSet6 = new LinkedHashSet();
        linkedHashSet6.add(new ew3("index_WorkTag_work_spec_id", false, tv4.E("work_spec_id"), tv4.E("ASC")));
        fw3 fw3Var3 = new fw3("WorkTag", linkedHashMap3, linkedHashSet5, linkedHashSet6);
        fw3 fw3VarL3 = ix.L(jb3Var, "WorkTag");
        if (!fw3Var3.equals(fw3VarL3)) {
            return new f7(false, "WorkTag(androidx.work.impl.model.WorkTag).\n Expected:\n" + fw3Var3 + "\n Found:\n" + fw3VarL3);
        }
        LinkedHashMap linkedHashMap4 = new LinkedHashMap();
        linkedHashMap4.put("work_spec_id", new cw3("work_spec_id", "TEXT", true, 1, null, 1));
        linkedHashMap4.put("generation", new cw3("generation", "INTEGER", true, 2, "0", 1));
        linkedHashMap4.put("system_id", new cw3("system_id", "INTEGER", true, 0, null, 1));
        LinkedHashSet linkedHashSet7 = new LinkedHashSet();
        linkedHashSet7.add(new dw3("WorkSpec", "CASCADE", "CASCADE", tv4.E("work_spec_id"), tv4.E("id")));
        fw3 fw3Var4 = new fw3("SystemIdInfo", linkedHashMap4, linkedHashSet7, new LinkedHashSet());
        fw3 fw3VarL4 = ix.L(jb3Var, "SystemIdInfo");
        if (!fw3Var4.equals(fw3VarL4)) {
            return new f7(false, "SystemIdInfo(androidx.work.impl.model.SystemIdInfo).\n Expected:\n" + fw3Var4 + "\n Found:\n" + fw3VarL4);
        }
        LinkedHashMap linkedHashMap5 = new LinkedHashMap();
        linkedHashMap5.put("name", new cw3("name", "TEXT", true, 1, null, 1));
        linkedHashMap5.put("work_spec_id", new cw3("work_spec_id", "TEXT", true, 2, null, 1));
        LinkedHashSet linkedHashSet8 = new LinkedHashSet();
        linkedHashSet8.add(new dw3("WorkSpec", "CASCADE", "CASCADE", tv4.E("work_spec_id"), tv4.E("id")));
        LinkedHashSet linkedHashSet9 = new LinkedHashSet();
        linkedHashSet9.add(new ew3("index_WorkName_work_spec_id", false, tv4.E("work_spec_id"), tv4.E("ASC")));
        fw3 fw3Var5 = new fw3("WorkName", linkedHashMap5, linkedHashSet8, linkedHashSet9);
        fw3 fw3VarL5 = ix.L(jb3Var, "WorkName");
        if (!fw3Var5.equals(fw3VarL5)) {
            return new f7(false, "WorkName(androidx.work.impl.model.WorkName).\n Expected:\n" + fw3Var5 + "\n Found:\n" + fw3VarL5);
        }
        LinkedHashMap linkedHashMap6 = new LinkedHashMap();
        linkedHashMap6.put("work_spec_id", new cw3("work_spec_id", "TEXT", true, 1, null, 1));
        linkedHashMap6.put("progress", new cw3("progress", "BLOB", true, 0, null, 1));
        LinkedHashSet linkedHashSet10 = new LinkedHashSet();
        linkedHashSet10.add(new dw3("WorkSpec", "CASCADE", "CASCADE", tv4.E("work_spec_id"), tv4.E("id")));
        fw3 fw3Var6 = new fw3("WorkProgress", linkedHashMap6, linkedHashSet10, new LinkedHashSet());
        fw3 fw3VarL6 = ix.L(jb3Var, "WorkProgress");
        if (!fw3Var6.equals(fw3VarL6)) {
            return new f7(false, "WorkProgress(androidx.work.impl.model.WorkProgress).\n Expected:\n" + fw3Var6 + "\n Found:\n" + fw3VarL6);
        }
        LinkedHashMap linkedHashMap7 = new LinkedHashMap();
        linkedHashMap7.put("key", new cw3("key", "TEXT", true, 1, null, 1));
        linkedHashMap7.put("long_value", new cw3("long_value", "INTEGER", false, 0, null, 1));
        fw3 fw3Var7 = new fw3("Preference", linkedHashMap7, new LinkedHashSet(), new LinkedHashSet());
        fw3 fw3VarL7 = ix.L(jb3Var, "Preference");
        if (fw3Var7.equals(fw3VarL7)) {
            return new f7(true, (String) null);
        }
        return new f7(false, "Preference(androidx.work.impl.model.Preference).\n Expected:\n" + fw3Var7 + "\n Found:\n" + fw3VarL7);
    }
}
