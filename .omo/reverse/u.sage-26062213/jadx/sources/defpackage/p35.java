package defpackage;

import java.util.HashMap;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class p35 implements Callable {
    public final /* synthetic */ int a;
    public final /* synthetic */ w35 b;
    public final /* synthetic */ String c;

    public /* synthetic */ p35(w35 w35Var, String str, int i) {
        this.a = i;
        this.b = w35Var;
        this.c = str;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        int i = this.a;
        String str = this.c;
        w35 w35Var = this.b;
        switch (i) {
            case 0:
                return new p65(new p35(w35Var, str, 1));
            case 1:
                at4 at4Var = w35Var.b.c;
                pb5.T(at4Var);
                m25 m25VarZ0 = at4Var.z0(str);
                HashMap map = new HashMap();
                map.put("platform", "android");
                map.put("package_name", str);
                ((r45) w35Var.a).d.B();
                map.put("gmp_version", 161000L);
                if (m25VarZ0 != null) {
                    String strO = m25VarZ0.O();
                    if (strO != null) {
                        map.put("app_version", strO);
                    }
                    map.put("app_version_int", Long.valueOf(m25VarZ0.Q()));
                    map.put("dynamite_version", Long.valueOf(m25VarZ0.b()));
                }
                return map;
            default:
                pc4 pc4Var = new pc4(14, w35Var, str, false);
                e95 e95Var = new e95("internal.remoteConfig", 0);
                e95Var.o.put("getValue", new p65(e95Var, pc4Var));
                return e95Var;
        }
    }
}
