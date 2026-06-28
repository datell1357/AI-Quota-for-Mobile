package defpackage;

import android.content.Intent;
import u.sage.widget.UsageWidgetConfigActivity;
import u.sage.widget.UsageWidgetProvider;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class di3 implements pe1 {
    public final /* synthetic */ int n;
    public final /* synthetic */ Object o;

    public /* synthetic */ di3(qg4 qg4Var, og4 og4Var) {
        this.n = 6;
        this.o = og4Var;
    }

    @Override // defpackage.pe1
    public final Object k(Object obj) {
        int i = this.n;
        Object obj2 = this.o;
        switch (i) {
            case 0:
                obj.getClass();
                return ((l6) obj2).a();
            case 1:
                ii3 ii3Var = (ii3) obj2;
                int iIntValue = ((Integer) obj).intValue();
                return ii3Var.e[iIntValue] + ": " + ii3Var.f[iIntValue].b();
            case 2:
                dn3 dn3Var = (dn3) obj2;
                yh3 yh3Var = dn3Var.f;
                yh3Var.getClass();
                if (!nt1.g(dn3Var.f, yh3Var)) {
                    ix2.b("Requested a SingleSubscriptionSnapshotFlowManager to manage multiple subscriptions");
                }
                lg2 lg2Var = dn3Var.e;
                Object obj3 = dn3Var.c;
                if (lg2Var != null) {
                    if (obj3 != null) {
                        ix2.b("workingSoleWatchedObject must be null when workingWatchSet is non-null");
                    }
                    lg2Var.a(obj);
                } else if (obj3 == null) {
                    dn3Var.c = obj;
                } else {
                    lg2 lg2Var2 = ud3.a;
                    lg2 lg2Var3 = new lg2();
                    lg2Var3.a(obj3);
                    lg2Var3.a(obj);
                    dn3Var.e = lg2Var3;
                    dn3Var.c = null;
                }
                return t64.a;
            case 3:
                ip3 ip3Var = (ip3) obj2;
                synchronized (ip3Var.g) {
                    hp3 hp3Var = ip3Var.i;
                    hp3Var.getClass();
                    Object obj4 = hp3Var.b;
                    obj4.getClass();
                    int i2 = hp3Var.d;
                    cg2 cg2Var = hp3Var.c;
                    if (cg2Var == null) {
                        cg2Var = new cg2();
                        hp3Var.c = cg2Var;
                        hp3Var.f.m(obj4, cg2Var);
                    }
                    hp3Var.b(obj, i2, obj4, cg2Var);
                }
                return t64.a;
            case 4:
                ue ueVar = (ue) obj;
                ((df1) obj2).f(ueVar.e.getValue(), k30.m.b.k(ueVar.f));
                return t64.a;
            case 5:
                UsageWidgetConfigActivity usageWidgetConfigActivity = (UsageWidgetConfigActivity) obj2;
                y84 y84Var = (y84) obj;
                int i3 = UsageWidgetConfigActivity.o;
                y84Var.getClass();
                int i4 = usageWidgetConfigActivity.n;
                String strName = y84Var.name();
                strName.getClass();
                usageWidgetConfigActivity.getSharedPreferences("widget_preferences", 0).edit().putString("service_type_" + i4, strName).apply();
                Intent intent = new Intent(usageWidgetConfigActivity, (Class<?>) UsageWidgetProvider.class);
                intent.setAction("android.appwidget.action.APPWIDGET_UPDATE");
                intent.putExtra("appWidgetIds", new int[]{usageWidgetConfigActivity.n});
                usageWidgetConfigActivity.sendBroadcast(intent);
                Intent intentPutExtra = new Intent().putExtra("appWidgetId", usageWidgetConfigActivity.n);
                intentPutExtra.getClass();
                usageWidgetConfigActivity.setResult(-1, intentPutExtra);
                usageWidgetConfigActivity.g();
                return t64.a;
            default:
                og4 og4Var = (og4) obj2;
                jb3 jb3Var = (jb3) obj;
                jb3Var.getClass();
                pb3 pb3VarK0 = jb3Var.k0("UPDATE OR ABORT `WorkSpec` SET `id` = ?,`state` = ?,`worker_class_name` = ?,`input_merger_class_name` = ?,`input` = ?,`output` = ?,`initial_delay` = ?,`interval_duration` = ?,`flex_duration` = ?,`run_attempt_count` = ?,`backoff_policy` = ?,`backoff_delay_duration` = ?,`last_enqueue_time` = ?,`minimum_retention_duration` = ?,`schedule_requested_at` = ?,`run_in_foreground` = ?,`out_of_quota_policy` = ?,`period_count` = ?,`generation` = ?,`next_schedule_time_override` = ?,`next_schedule_time_override_generation` = ?,`stop_reason` = ?,`trace_tag` = ?,`backoff_on_system_interruptions` = ?,`required_network_type` = ?,`required_network_request` = ?,`requires_charging` = ?,`requires_device_idle` = ?,`requires_battery_not_low` = ?,`requires_storage_not_low` = ?,`trigger_content_update_delay` = ?,`trigger_max_content_delay` = ?,`content_uri_triggers` = ? WHERE `id` = ?");
                try {
                    pr3.f(pb3VarK0, og4Var);
                    pb3VarK0.c0();
                    is0.r(pb3VarK0, null);
                    se0.t(jb3Var);
                    return t64.a;
                } finally {
                }
        }
    }

    public /* synthetic */ di3(int i, Object obj) {
        this.n = i;
        this.o = obj;
    }
}
