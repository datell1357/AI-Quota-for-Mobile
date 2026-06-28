package defpackage;

import java.io.IOException;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class xk1 implements ne1 {
    public final /* synthetic */ int n;
    public final /* synthetic */ cl1 o;
    public final /* synthetic */ int p;

    public /* synthetic */ xk1(cl1 cl1Var, int i, List list, boolean z) {
        this.n = 2;
        this.o = cl1Var;
        this.p = i;
    }

    @Override // defpackage.ne1
    public final Object a() {
        switch (this.n) {
            case 0:
                cl1 cl1Var = this.o;
                int i = this.p;
                cl1Var.x.getClass();
                try {
                    cl1Var.J.F(i, d21.f62u);
                    synchronized (cl1Var) {
                        cl1Var.L.remove(Integer.valueOf(i));
                    }
                } catch (IOException unused) {
                }
                return t64.a;
            case 1:
                cl1 cl1Var2 = this.o;
                int i2 = this.p;
                cl1Var2.x.getClass();
                synchronized (cl1Var2) {
                    cl1Var2.L.remove(Integer.valueOf(i2));
                }
                return t64.a;
            default:
                cl1 cl1Var3 = this.o;
                int i3 = this.p;
                cl1Var3.x.getClass();
                try {
                    cl1Var3.J.F(i3, d21.f62u);
                    synchronized (cl1Var3) {
                        cl1Var3.L.remove(Integer.valueOf(i3));
                    }
                } catch (IOException unused2) {
                }
                return t64.a;
        }
    }

    public /* synthetic */ xk1(cl1 cl1Var, int i, Object obj, int i2) {
        this.n = i2;
        this.o = cl1Var;
        this.p = i;
    }
}
