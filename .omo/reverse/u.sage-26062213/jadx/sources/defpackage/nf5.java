package defpackage;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public abstract class nf5 {
    public static final lf5 d = new lf5();
    public final nf5 a;
    public final wm3 b;
    public boolean c = false;

    public /* synthetic */ nf5(nf5 nf5Var, wm3 wm3Var) {
        if (nf5Var != null) {
            n44.U(nf5Var.c);
        }
        this.a = nf5Var;
        this.b = wm3Var;
    }

    public static nf5 a(nf5 nf5Var, nf5 nf5Var2) {
        nf5Var.getClass();
        nf5 nf5Var3 = mf5.e;
        if (nf5Var == nf5Var3) {
            return nf5Var2;
        }
        nf5Var2.getClass();
        if (nf5Var2 == nf5Var3) {
            return nf5Var;
        }
        np1<nf5> np1VarK = np1.k(2, nf5Var, nf5Var2);
        if (np1VarK.isEmpty()) {
            return nf5Var3;
        }
        if (np1VarK.size() == 1) {
            return (nf5) np1VarK.iterator().next();
        }
        int i = 0;
        for (nf5 nf5Var4 : np1VarK) {
            do {
                i += nf5Var4.b.p;
                nf5Var4 = nf5Var4.a;
            } while (nf5Var4 != null);
        }
        if (i == 0) {
            return mf5.e;
        }
        wm3 wm3Var = new wm3(i);
        for (nf5 nf5Var5 : np1VarK) {
            do {
                int i2 = 0;
                while (true) {
                    wm3 wm3Var2 = nf5Var5.b;
                    if (i2 >= wm3Var2.p) {
                        break;
                    }
                    n44.T("Duplicate bindings: %s", wm3Var2.f(i2), wm3Var.put((lf5) wm3Var2.f(i2), wm3Var2.i(i2)) == null);
                    i2++;
                }
                nf5Var5 = nf5Var5.a;
            } while (nf5Var5 != null);
        }
        return new mf5(null, wm3Var).b();
    }

    public final nf5 b() {
        if (this.c) {
            k21.n("Already frozen");
            return null;
        }
        this.c = true;
        nf5 nf5Var = this.a;
        return (nf5Var == null || !this.b.isEmpty()) ? this : nf5Var;
    }

    public final boolean c() {
        if (this.b.containsKey(d)) {
            return true;
        }
        nf5 nf5Var = this.a;
        return nf5Var != null && nf5Var.c();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("SpanExtras<");
        for (nf5 nf5Var = this; nf5Var != null; nf5Var = nf5Var.a) {
            for (int i = 0; i < nf5Var.b.p; i++) {
                sb.append("[");
                sb.append(this.b.i(i));
                sb.append("], ");
            }
        }
        sb.append(">");
        return sb.toString();
    }
}
