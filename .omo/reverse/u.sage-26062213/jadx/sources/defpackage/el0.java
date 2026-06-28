package defpackage;

import java.io.Closeable;
import java.util.logging.Level;
import java.util.zip.Inflater;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class el0 implements Closeable {
    public final /* synthetic */ int n;
    public final Object o;

    public el0(fq3 fq3Var) {
        this.n = 0;
        dh1 dh1VarA = zg0.a();
        zg0.b.getClass();
        vg0 vg0Var = (vg0) dh1VarA.n;
        sg0 sg0Var = ch0.a;
        se0.g(vg0Var, "context");
        sg0 sg0Var2 = ch0.a;
        ku2 ku2Var = vg0Var.a;
        vg0 vg0Var2 = new vg0(vg0Var, ku2Var == null ? new iu2(1, sg0Var2, fq3Var) : ku2Var.a(sg0Var2.hashCode(), 0, sg0Var2, fq3Var));
        ((ky3) tg0.a).getClass();
        ThreadLocal threadLocal = ky3.b;
        vg0 vg0Var3 = (vg0) threadLocal.get();
        vg0Var3 = vg0Var3 == null ? vg0.d : vg0Var3;
        threadLocal.set(vg0Var2);
        this.o = new dh1(vg0Var3 == null ? vg0.d : vg0Var3);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        int i = this.n;
        Object obj = this.o;
        switch (i) {
            case 0:
                vg0 vg0Var = (vg0) zg0.a().n;
                vg0 vg0Var2 = (vg0) ((dh1) obj).n;
                vg0Var.getClass();
                if (vg0Var2 == null) {
                    q73.r("toAttach");
                } else {
                    ky3 ky3Var = (ky3) tg0.a;
                    ThreadLocal threadLocal = ky3.b;
                    ky3Var.getClass();
                    vg0 vg0Var3 = (vg0) threadLocal.get();
                    if (vg0Var3 == null) {
                        vg0Var3 = vg0.d;
                    }
                    if (vg0Var3 != vg0Var) {
                        ky3.a.log(Level.SEVERE, "Context was not attached when detaching", new Throwable().fillInStackTrace());
                    }
                    if (vg0Var2 == vg0.d) {
                        threadLocal.set(null);
                    } else {
                        threadLocal.set(vg0Var2);
                    }
                }
                break;
            case 1:
                ((ax2) ((ql1) obj)).shutdown();
                break;
            default:
                ((Inflater) obj).end();
                break;
        }
    }

    public el0() {
        this.n = 2;
        this.o = new Inflater(true);
    }

    public el0(ql1 ql1Var) {
        this.n = 1;
        this.o = ql1Var;
    }
}
