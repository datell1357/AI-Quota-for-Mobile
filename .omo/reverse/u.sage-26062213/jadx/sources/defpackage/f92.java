package defpackage;

import android.content.Context;
import java.util.Iterator;
import u.sage.MainActivity;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class f92 implements ne1 {
    public final /* synthetic */ int n;
    public final /* synthetic */ xi2 o;

    public /* synthetic */ f92(xi2 xi2Var, int i) {
        this.n = i;
        this.o = xi2Var;
    }

    @Override // defpackage.ne1
    public final Object a() {
        int i;
        int i2 = this.n;
        t64 t64Var = t64.a;
        xi2 xi2Var = this.o;
        switch (i2) {
            case 0:
                int i3 = MainActivity.C;
                xi2.b(xi2Var, (String) se3.c.a);
                return t64Var;
            case 1:
                int i4 = MainActivity.C;
                xi2.b(xi2Var, (String) ue3.c.a);
                return t64Var;
            case 2:
                up upVar = xi2Var.f;
                boolean z = false;
                if (xi2Var.g) {
                    vh vhVar = xi2Var.b.f;
                    if (vhVar == null || !vhVar.isEmpty()) {
                        Iterator it = vhVar.iterator();
                        i = 0;
                        while (it.hasNext()) {
                            if (!(((yh2) it.next()).o instanceof si2) && (i = i + 1) < 0) {
                                throw new ArithmeticException("Count overflow has happened.");
                            }
                        }
                    } else {
                        i = 0;
                    }
                    if (i > 1) {
                        z = true;
                    }
                }
                upVar.e(z);
                return t64Var;
            default:
                Context context = xi2Var.a;
                mk2 mk2Var = xi2Var.b.t;
                context.getClass();
                mk2Var.getClass();
                return new hj2();
        }
    }
}
