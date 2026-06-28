package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class rl1 extends vl1 {
    public static rl1 c(ul1 ul1Var) {
        return ul1Var instanceof rl1 ? (rl1) ul1Var : new rl1(ul1Var);
    }

    public final v63 d() {
        v63 v63Var = (v63) a("http.request-config", v63.class);
        return v63Var != null ? v63Var : v63.D;
    }

    public final Object e() {
        return this.n.b("http.user-token");
    }
}
