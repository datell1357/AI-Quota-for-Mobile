package defpackage;

import java.util.LinkedHashMap;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class u3 implements gm0 {
    public final pi1 a = new pi1();

    @Override // defpackage.gm0
    public final void a() {
        ez3.a.getClass();
        ra3.c(new Object[0]);
    }

    @Override // defpackage.gm0
    public final Object b(Object obj, rd rdVar) {
        w3 w3Var;
        ez3.a.getClass();
        ra3.c(new Object[0]);
        hg2 hg2Var = new hg2(new LinkedHashMap(((hg2) obj).a()), false);
        Boolean bool = (Boolean) hg2Var.c(x12.a);
        boolean zBooleanValue = bool != null ? bool.booleanValue() : false;
        Boolean bool2 = (Boolean) hg2Var.c(x12.b);
        boolean zBooleanValue2 = bool2 != null ? bool2.booleanValue() : false;
        if (zBooleanValue) {
            w3Var = new w3(zBooleanValue2 ? "CLAUDE_FREE" : "CLAUDE_PRO", 2031);
        } else {
            w3Var = w3.l;
        }
        hg2Var.e(x3.a, this.a.c(w3Var));
        hg2Var.e(x3.b, Boolean.TRUE);
        w3Var.toString();
        ra3.c(new Object[0]);
        return hg2Var;
    }

    @Override // defpackage.gm0
    public final Object c(dh0 dh0Var, Object obj) {
        hg2 hg2Var = (hg2) obj;
        rx2 rx2Var = x12.a;
        hg2Var.getClass();
        rx2Var.getClass();
        boolean zContainsKey = hg2Var.a.containsKey(rx2Var);
        Boolean bool = (Boolean) hg2Var.c(x3.b);
        boolean z = zContainsKey && !(bool != null ? bool.booleanValue() : false);
        ez3.a.getClass();
        ra3.c(new Object[0]);
        return Boolean.valueOf(z);
    }
}
