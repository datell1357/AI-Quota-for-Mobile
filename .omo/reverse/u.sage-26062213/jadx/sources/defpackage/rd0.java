package defpackage;

import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class rd0 implements qd0 {
    public final ConcurrentHashMap a = new ConcurrentHashMap();
    public volatile int b;

    public rd0(int i) {
        w80.N(i, "Default max per route");
        this.b = i;
    }

    @Override // defpackage.qd0
    public final int a(ym1 ym1Var) {
        w80.L(ym1Var, "HTTP route");
        Integer num = (Integer) this.a.get(ym1Var);
        return num != null ? num.intValue() : this.b;
    }

    public final String toString() {
        return this.a.toString();
    }
}
