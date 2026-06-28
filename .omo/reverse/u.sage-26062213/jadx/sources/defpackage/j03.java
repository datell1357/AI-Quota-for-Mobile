package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class j03 {
    public final h03 a;
    public final boolean b;
    public final w13 c;
    public final pe1 d;
    public final boolean e;
    public final Object f;
    public boolean g = true;

    public j03(h03 h03Var, Object obj, boolean z, w13 w13Var, pe1 pe1Var, boolean z2) {
        this.a = h03Var;
        this.b = z;
        this.c = w13Var;
        this.d = pe1Var;
        this.e = z2;
        this.f = obj;
    }

    public final Object a() {
        if (this.b) {
            return null;
        }
        Object obj = this.f;
        if (obj != null) {
            return obj;
        }
        wb0.b("Unexpected form of a provided value");
        p61.q();
        return null;
    }
}
