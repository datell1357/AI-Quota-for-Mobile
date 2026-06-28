package defpackage;

import android.content.Context;
import android.content.SharedPreferences;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class h73 extends ad2 {
    public final /* synthetic */ int c = 1;
    public final Context d;

    public h73(Context context) {
        super(9, 10);
        this.d = context;
    }

    @Override // defpackage.ad2
    public final void a(ee1 ee1Var) {
        int i = this.c;
        Context context = this.d;
        ee1Var.getClass();
        switch (i) {
            case 0:
                if (this.b >= 10) {
                    ee1Var.B(new Object[]{"reschedule_needed", 1});
                    return;
                } else {
                    context.getSharedPreferences("androidx.work.util.preferences", 0).edit().putBoolean("reschedule_needed", true).apply();
                    return;
                }
            default:
                ee1Var.A("CREATE TABLE IF NOT EXISTS `Preference` (`key` TEXT NOT NULL, `long_value` INTEGER, PRIMARY KEY(`key`))");
                SharedPreferences sharedPreferences = context.getSharedPreferences("androidx.work.util.preferences", 0);
                if (sharedPreferences.contains("reschedule_needed") || sharedPreferences.contains("last_cancel_all_time_ms")) {
                    long j = sharedPreferences.getLong("last_cancel_all_time_ms", 0L);
                    long j2 = sharedPreferences.getBoolean("reschedule_needed", false) ? 1L : 0L;
                    ee1Var.b();
                    try {
                        ee1Var.B(new Object[]{"last_cancel_all_time_ms", Long.valueOf(j)});
                        ee1Var.B(new Object[]{"reschedule_needed", Long.valueOf(j2)});
                        sharedPreferences.edit().clear().apply();
                        ee1Var.K();
                    } finally {
                    }
                }
                SharedPreferences sharedPreferences2 = context.getSharedPreferences("androidx.work.util.id", 0);
                if (sharedPreferences2.contains("next_job_scheduler_id") || sharedPreferences2.contains("next_job_scheduler_id")) {
                    int i2 = sharedPreferences2.getInt("next_job_scheduler_id", 0);
                    int i3 = sharedPreferences2.getInt("next_alarm_manager_id", 0);
                    ee1Var.b();
                    try {
                        ee1Var.B(new Object[]{"next_job_scheduler_id", Integer.valueOf(i2)});
                        ee1Var.B(new Object[]{"next_alarm_manager_id", Integer.valueOf(i3)});
                        sharedPreferences2.edit().clear().apply();
                        ee1Var.K();
                        return;
                    } finally {
                    }
                }
                return;
        }
    }

    public h73(Context context, int i, int i2) {
        super(i, i2);
        this.d = context;
    }
}
