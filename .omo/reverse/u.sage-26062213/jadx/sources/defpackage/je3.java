package defpackage;

import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class je3 {
    public final ConcurrentHashMap a = new ConcurrentHashMap();

    public final fe3 a(String str) {
        w80.L(str, "Scheme name");
        fe3 fe3Var = (fe3) this.a.get(str);
        if (fe3Var != null) {
            return fe3Var;
        }
        k21.n(di0.v("Scheme '", str, "' not registered."));
        return null;
    }

    public final void b(fe3 fe3Var) {
    }
}
