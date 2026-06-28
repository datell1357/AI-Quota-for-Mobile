package defpackage;

import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import java.util.TreeSet;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class v65 implements Runnable {
    public final /* synthetic */ int n;
    public final /* synthetic */ Bundle o;
    public final /* synthetic */ m75 p;

    public /* synthetic */ v65(m75 m75Var, Bundle bundle, int i) {
        this.n = i;
        this.o = bundle;
        this.p = m75Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.n;
        Bundle bundle = this.o;
        m75 m75Var = this.p;
        switch (i) {
            case 0:
                m75Var.v();
                m75Var.w();
                Preconditions.checkNotNull(bundle);
                String string = bundle.getString("name");
                String string2 = bundle.getString("origin");
                Preconditions.checkNotEmpty(string);
                Preconditions.checkNotEmpty(string2);
                Preconditions.checkNotNull(bundle.get("value"));
                r45 r45Var = (r45) m75Var.a;
                if (!r45Var.a()) {
                    a25 a25Var = r45Var.f;
                    r45.l(a25Var);
                    a25Var.n.a("Conditional property not set since app measurement is disabled");
                } else {
                    vb5 vb5Var = new vb5(bundle.getLong("triggered_timestamp"), bundle.get("value"), string, string2);
                    try {
                        ac5 ac5Var = r45Var.i;
                        r45.j(ac5Var);
                        bundle.getString("app_id");
                        bu4 bu4VarB0 = ac5Var.b0(bundle.getString("triggered_event_name"), bundle.getBundle("triggered_event_params"), string2, 0L, 0L, true);
                        r45.j(ac5Var);
                        bundle.getString("app_id");
                        bu4 bu4VarB02 = ac5Var.b0(bundle.getString("timed_out_event_name"), bundle.getBundle("timed_out_event_params"), string2, 0L, 0L, true);
                        bundle.getString("app_id");
                        r45Var.o().O(new fq4(bundle.getString("app_id"), string2, vb5Var, bundle.getLong("creation_timestamp"), false, bundle.getString("trigger_event_name"), bu4VarB02, bundle.getLong("trigger_timeout"), bu4VarB0, bundle.getLong("time_to_live"), ac5Var.b0(bundle.getString("expired_event_name"), bundle.getBundle("expired_event_params"), string2, 0L, 0L, true)));
                    } catch (IllegalArgumentException unused) {
                        return;
                    }
                }
                break;
            case 1:
                m75Var.v();
                m75Var.w();
                Preconditions.checkNotNull(bundle);
                String strCheckNotEmpty = Preconditions.checkNotEmpty(bundle.getString("name"));
                r45 r45Var2 = (r45) m75Var.a;
                if (!r45Var2.a()) {
                    a25 a25Var2 = r45Var2.f;
                    r45.l(a25Var2);
                    a25Var2.n.a("Conditional property not cleared since app measurement is disabled");
                } else {
                    vb5 vb5Var2 = new vb5(0L, null, strCheckNotEmpty, "");
                    try {
                        ac5 ac5Var2 = r45Var2.i;
                        r45.j(ac5Var2);
                        bundle.getString("app_id");
                        r45Var2.o().O(new fq4(bundle.getString("app_id"), "", vb5Var2, bundle.getLong("creation_timestamp"), bundle.getBoolean("active"), bundle.getString("trigger_event_name"), null, bundle.getLong("trigger_timeout"), null, bundle.getLong("time_to_live"), ac5Var2.b0(bundle.getString("expired_event_name"), bundle.getBundle("expired_event_params"), "", bundle.getLong("creation_timestamp"), 0L, true)));
                    } catch (IllegalArgumentException unused2) {
                        return;
                    }
                }
                break;
            default:
                ra3 ra3Var = m75Var.v;
                r45 r45Var3 = (r45) m75Var.a;
                if (!bundle.isEmpty()) {
                    f35 f35Var = r45Var3.e;
                    ac5 ac5Var3 = r45Var3.i;
                    ds4 ds4Var = r45Var3.d;
                    a25 a25Var3 = r45Var3.f;
                    r45.j(f35Var);
                    Bundle bundle2 = new Bundle(f35Var.y.J());
                    for (String str : bundle.keySet()) {
                        Object obj = bundle.get(str);
                        if (obj != null && !(obj instanceof String) && !(obj instanceof Long) && !(obj instanceof Double)) {
                            r45.j(ac5Var3);
                            if (ac5.G0(obj)) {
                                ac5.N(ra3Var, null, 27, null, null, 0);
                            }
                            r45.l(a25Var3);
                            a25Var3.k.c(str, obj, "Invalid default event parameter type. Name, value");
                        } else if (ac5.Y(str)) {
                            r45.l(a25Var3);
                            a25Var3.k.b(str, "Invalid default event parameter name. Name");
                        } else if (obj == null) {
                            bundle2.remove(str);
                        } else {
                            r45.j(ac5Var3);
                            ds4Var.getClass();
                            if (ac5Var3.z("param", str, 500, obj)) {
                                ac5Var3.M(bundle2, str, obj);
                            }
                        }
                    }
                    r45.j(ac5Var3);
                    ac5 ac5Var4 = ((r45) ds4Var.a).i;
                    r45.j(ac5Var4);
                    int i2 = ac5Var4.e0(201500000) ? 100 : 25;
                    if (bundle2.size() > i2) {
                        int i3 = 0;
                        for (String str2 : new TreeSet(bundle2.keySet())) {
                            i3++;
                            if (i3 > i2) {
                                bundle2.remove(str2);
                            }
                        }
                        r45.j(ac5Var3);
                        ac5.N(ra3Var, null, 26, null, null, 0);
                        r45.l(a25Var3);
                        a25Var3.k.a("Too many default event parameters set. Discarding beyond event parameter limit");
                    }
                    bundle = bundle2;
                }
                f35 f35Var2 = r45Var3.e;
                r45.j(f35Var2);
                f35Var2.y.N(bundle);
                r45Var3.o().A(bundle);
                break;
        }
    }
}
