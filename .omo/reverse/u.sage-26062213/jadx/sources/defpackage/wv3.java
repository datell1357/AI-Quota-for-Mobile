package defpackage;

import java.util.Collection;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class wv3 implements pe1 {
    public final /* synthetic */ int n;
    public final /* synthetic */ Object o;
    public final /* synthetic */ int p;

    public /* synthetic */ wv3(int i, int i2, Object obj) {
        this.n = i2;
        this.p = i;
        this.o = obj;
    }

    @Override // defpackage.pe1
    public final Object k(Object obj) throws Exception {
        pb3 pb3VarK0;
        vv3 vv3Var;
        int i = this.n;
        t64 t64Var = t64.a;
        Object obj2 = this.o;
        int i2 = this.p;
        switch (i) {
            case 0:
                String str = (String) obj2;
                jb3 jb3Var = (jb3) obj;
                jb3Var.getClass();
                pb3VarK0 = jb3Var.k0("SELECT * FROM SystemIdInfo WHERE work_spec_id=? AND generation=?");
                try {
                    pb3VarK0.P(1, str);
                    pb3VarK0.h(2, i2);
                    int iK = qj0.K(pb3VarK0, "work_spec_id");
                    int iK2 = qj0.K(pb3VarK0, "generation");
                    int iK3 = qj0.K(pb3VarK0, "system_id");
                    if (pb3VarK0.c0()) {
                        vv3Var = new vv3((int) pb3VarK0.getLong(iK2), pb3VarK0.o(iK), (int) pb3VarK0.getLong(iK3));
                        break;
                    } else {
                        vv3Var = null;
                    }
                    return vv3Var;
                } finally {
                }
            case 1:
                String str2 = (String) obj2;
                jb3 jb3Var2 = (jb3) obj;
                jb3Var2.getClass();
                pb3VarK0 = jb3Var2.k0("UPDATE workspec SET next_schedule_time_override=9223372036854775807 WHERE (id=? AND next_schedule_time_override_generation=?)");
                try {
                    pb3VarK0.P(1, str2);
                    pb3VarK0.h(2, i2);
                    pb3VarK0.c0();
                    return t64Var;
                } finally {
                }
            case 2:
                String str3 = (String) obj2;
                jb3 jb3Var3 = (jb3) obj;
                jb3Var3.getClass();
                pb3VarK0 = jb3Var3.k0("UPDATE workspec SET stop_reason=? WHERE id=?");
                try {
                    pb3VarK0.h(1, i2);
                    pb3VarK0.P(2, str3);
                    pb3VarK0.c0();
                    return t64Var;
                } finally {
                }
            default:
                return Boolean.valueOf(((List) obj).addAll(i2, (Collection) obj2));
        }
    }

    public /* synthetic */ wv3(int i, String str, int i2) {
        this.n = i2;
        this.o = str;
        this.p = i;
    }
}
