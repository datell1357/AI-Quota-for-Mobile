package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class f61 {
    public final ij0 a;

    public f61(ij0 ij0Var) {
        this.a = ij0Var;
    }

    public static f61 a() {
        e61 e61VarB = e61.b();
        e61VarB.a();
        f61 f61Var = (f61) e61VarB.d.a(f61.class);
        if (f61Var != null) {
            return f61Var;
        }
        q73.r("FirebaseCrashlytics component is not present.");
        return null;
    }
}
