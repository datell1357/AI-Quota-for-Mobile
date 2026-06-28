package defpackage;

import java.util.Locale;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class rj implements r82 {
    public final ConcurrentHashMap a = new ConcurrentHashMap();

    @Override // defpackage.r82
    public final Object a(String str) {
        return new qj(this, str);
    }

    public final oj b(String str, km1 km1Var) {
        w80.L(str, "Name");
        jv jvVar = (jv) this.a.get(str.toLowerCase(Locale.ENGLISH));
        if (jvVar == null) {
            k21.n("Unsupported authentication scheme: ".concat(str));
            return null;
        }
        switch (jvVar.a) {
            case 0:
                return new iv();
            case 1:
                return new zt0(uf0.b);
            case 2:
                return new mx1();
            case 3:
                return new qh2();
            default:
                return new ib3();
        }
    }

    public final void c(String str, jv jvVar) {
        this.a.put(str.toLowerCase(Locale.ENGLISH), jvVar);
    }
}
