package defpackage;

import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class v45 implements Runnable {
    public final /* synthetic */ int n;
    public final /* synthetic */ vc5 o;
    public final /* synthetic */ o55 p;

    public /* synthetic */ v45(o55 o55Var, vc5 vc5Var, int i) {
        this.n = i;
        this.o = vc5Var;
        this.p = o55Var;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        int i = this.n;
        vc5 vc5Var = this.o;
        o55 o55Var = this.p;
        switch (i) {
            case 0:
                o55Var.c.V();
                o55Var.c.Y(vc5Var);
                break;
            case 1:
                o55Var.c.V();
                pb5 pb5Var = o55Var.c;
                pb5Var.d().v();
                pb5Var.l0();
                Preconditions.checkNotNull(vc5Var);
                String str = vc5Var.n;
                Preconditions.checkNotEmpty(str);
                int i2 = 0;
                if (pb5Var.e0().G(null, e05.y0)) {
                    long jCurrentTimeMillis = pb5Var.f().currentTimeMillis();
                    int iE = pb5Var.e0().E(null, e05.h0);
                    pb5Var.e0();
                    long jLongValue = jCurrentTimeMillis - ((Long) e05.e.a(null)).longValue();
                    while (i2 < iE && pb5Var.I(jLongValue, null)) {
                        i2++;
                    }
                } else {
                    pb5Var.e0();
                    long jIntValue = ((Integer) e05.l.a(null)).intValue();
                    while (i2 < jIntValue && pb5Var.I(0L, str)) {
                        i2++;
                    }
                }
                if (pb5Var.e0().G(null, e05.z0)) {
                    pb5Var.d().v();
                    pb5Var.H();
                }
                eb5 eb5Var = pb5Var.j;
                e55 e55VarA = e55.a(vc5Var.R);
                eb5Var.v();
                if (e55VarA == e55.p && !eb5.y(str)) {
                    w35 w35Var = eb5Var.b.a;
                    pb5.T(w35Var);
                    n15 n15VarH = w35Var.H(str);
                    if (n15VarH != null && n15VarH.H() && !n15VarH.I().u().isEmpty()) {
                        pb5Var.c().n.b(str, "[sgtm] Going background, trigger client side upload. appId");
                        pb5Var.r(pb5Var.f().currentTimeMillis(), str);
                        break;
                    }
                }
                break;
            case 2:
                o55Var.c.V();
                pb5 pb5Var2 = o55Var.c;
                pb5Var2.d().v();
                pb5Var2.l0();
                Preconditions.checkNotEmpty(vc5Var.n);
                pb5Var2.c0(vc5Var);
                break;
            case 3:
                o55Var.c.V();
                pb5 pb5Var3 = o55Var.c;
                if (pb5Var3.y != null) {
                    ArrayList arrayList = new ArrayList();
                    pb5Var3.z = arrayList;
                    arrayList.addAll(pb5Var3.y);
                }
                at4 at4Var = pb5Var3.c;
                pb5.T(at4Var);
                r45 r45Var = (r45) at4Var.a;
                String str2 = (String) Preconditions.checkNotNull(vc5Var.n);
                Preconditions.checkNotEmpty(str2);
                at4Var.v();
                at4Var.w();
                try {
                    SQLiteDatabase sQLiteDatabaseM0 = at4Var.m0();
                    String[] strArr = {str2};
                    int iDelete = sQLiteDatabaseM0.delete("apps", "app_id=?", strArr) + sQLiteDatabaseM0.delete("events", "app_id=?", strArr) + sQLiteDatabaseM0.delete("events_snapshot", "app_id=?", strArr) + sQLiteDatabaseM0.delete("user_attributes", "app_id=?", strArr) + sQLiteDatabaseM0.delete("conditional_properties", "app_id=?", strArr) + sQLiteDatabaseM0.delete("raw_events", "app_id=?", strArr) + sQLiteDatabaseM0.delete("raw_events_metadata", "app_id=?", strArr) + sQLiteDatabaseM0.delete("queue", "app_id=?", strArr) + sQLiteDatabaseM0.delete("audience_filter_values", "app_id=?", strArr) + sQLiteDatabaseM0.delete("main_event_params", "app_id=?", strArr) + sQLiteDatabaseM0.delete("default_event_params", "app_id=?", strArr) + sQLiteDatabaseM0.delete("trigger_uris", "app_id=?", strArr) + sQLiteDatabaseM0.delete("upload_queue", "app_id=?", strArr);
                    if (r45Var.d.G(null, e05.c1)) {
                        iDelete += sQLiteDatabaseM0.delete("no_data_mode_events", "app_id=?", strArr);
                    }
                    int iDelete2 = iDelete + sQLiteDatabaseM0.delete("diagnostic_signals", "app_id=?", strArr);
                    if (iDelete2 > 0) {
                        a25 a25Var = r45Var.f;
                        r45.l(a25Var);
                        a25Var.n.c(str2, Integer.valueOf(iDelete2), "Reset analytics data. app, records");
                    }
                } catch (SQLiteException e) {
                    a25 a25Var2 = r45Var.f;
                    r45.l(a25Var2);
                    a25Var2.f.c(a25.D(str2), e, "Error resetting analytics data. appId, error");
                }
                if (vc5Var.f375u) {
                    pb5Var3.Y(vc5Var);
                }
                break;
            case 4:
                o55Var.c.V();
                pb5 pb5Var4 = o55Var.c;
                pb5Var4.d().v();
                pb5Var4.l0();
                Preconditions.checkNotEmpty(vc5Var.n);
                pb5Var4.m0(vc5Var);
                pb5Var4.n0(vc5Var);
                break;
            case 5:
                pb5 pb5Var5 = o55Var.c;
                pb5Var5.V();
                pb5Var5.n0(vc5Var);
                break;
            default:
                pb5 pb5Var6 = o55Var.c;
                pb5Var6.V();
                pb5Var6.m0(vc5Var);
                break;
        }
    }
}
